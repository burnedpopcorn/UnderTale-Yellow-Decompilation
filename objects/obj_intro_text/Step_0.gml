if (characters < message_length && counter == 0)
{
    characters += increase;
    
    if (characters > message_length)
        characters = message_length;
    
    message_draw = string_copy(message[message_current], 0, characters);
    current_char = string_char_at(message_draw, characters);
    
    if (current_char != " ")
        audio_play_sound(sndfnt_default2, 20, false);
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
}

if (characters > 0 && characters < message_length)
{
    current_char = string_char_at(message_draw, characters);
    
    if (current_char == "." || current_char == ",")
        counter_max = 10;
    else
        counter_max = 2;
    
    counter += 1;
    
    if (counter >= counter_max)
        counter = 0;
}
