var new_message, i, new_letter, new_pos;

if (live_call())
    return global.live_result;

if (characters < message_length)
{
    if (counter == 0)
    {
        script_execute(scr_text_increase_auto);
        script_execute(scr_talking_text);
    }
    else
    {
        can_talk = false;
    }
}
else
{
    can_talk = false;
}

script_execute(scr_text_counter);
randomize_counter--;

if (randomize_counter <= 0)
{
    new_message = message_original;
    
    for (i = 0; i < 2; i++)
    {
        new_letter = chr(irandom_range(97, 122));
        new_pos = irandom_range(0, string_length(message[0]) - 1);
        new_message = string_delete(new_message, new_pos, 1);
        new_message = string_insert(new_letter, new_message, new_pos);
    }
    
    message[0] = new_message;
    randomize_counter = randomize_counter_max;
}

draw_alpha = lerp(draw_alpha, draw_alpha_target, 0.05);

if (draw_alpha_target_countdown > 0)
{
    draw_alpha_target_countdown--;
}
else
{
    draw_alpha_target = random_range(0.3, 1);
    draw_alpha_target_countdown = 10;
}
