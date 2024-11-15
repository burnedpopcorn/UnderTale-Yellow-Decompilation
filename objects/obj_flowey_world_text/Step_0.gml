if (global.dialogue_open == false)
{
    if (draw_alpha > 0.1)
        draw_alpha = lerp(draw_alpha, 0, 0.25);
    else
        instance_destroy();
    
    exit;
}

message_length = string_length(message[message_current]);
message_end = array_length(message) - 1;

if (keyboard_multicheck_pressed(1) && skippable == true)
{
    characters = message_length;
    message_draw = string_copy(message[message_current], 0, characters);
    current_char = string_char_at(message_draw, characters);
}

if (characters < message_length && counter == 0)
{
    characters += increase;
    
    if (characters > message_length)
        characters = message_length;
    
    message_draw = string_copy(message[message_current], 0, characters);
    current_char = string_char_at(message_draw, characters);
    
    if (current_char != " ")
        audio_play_sound(soundfont, 20, false);
}
else if (characters >= message_length && increase_message_count == false && keep_on_screen == false)
{
    if (skippable == false && !alarm[0])
        alarm[0] = auto_advance_timer;
    else if (keyboard_multicheck_pressed(0) && skippable == true)
        increase_message_count = true;
}

if (increase_message_count == true)
{
    if (message_current < message_end)
    {
        message_current += 1;
        message_length = string_length(message[message_current]);
        characters = 0;
        message_draw = "";
        counter = 0;
        increase_message_count = false;
    }
    else
    {
        global.dialogue_open = false;
    }
}

if (characters > 0 && characters < message_length)
{
    current_char = string_char_at(message_draw, characters);
    
    if (current_char == "." || current_char == ",")
        counter_max = 5;
    else
        counter_max = 1;
    
    counter += 1;
    
    if (counter >= counter_max)
        counter = 0;
}
