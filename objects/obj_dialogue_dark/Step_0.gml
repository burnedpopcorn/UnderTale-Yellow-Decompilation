var i;

if (live_call())
    return global.live_result;

if (global.dialogue_open == false)
{
    if (instance_exists(obj_pl))
        obj_pl.alarm[0] = 1;
    
    instance_destroy();
}

if (letter_array == -1)
{
    for (i = 1; i <= string_length(message[message_current]); i++)
    {
        letter_array[i] = string_char_at(message[message_current], i);
        
        if (i > 1)
            text_x[i] = text_x[clamp(i - 1, 1, 9999)] + str_width;
        
        text_y[i] = text_y[clamp(i - 1, 1, 9999)];
        
        if (letter_array[i] == "#")
        {
            text_y[i] += 20;
            text_x[i] = text_x[1] - str_width;
        }
    }
}

if (letter_current < (array_length(letter_array) - 1))
{
    if (letter_waiter == 0)
    {
        letter_current += letter_speed;
        
        if (floor(letter_current) == letter_current)
        {
            switch (letter_array[letter_current])
            {
                case " ":
                case ".":
                case "#":
                    break;
                
                default:
                    audio_stop_sound(sndfnt);
                    audio_play_sound(sndfnt, 1, false);
                    break;
            }
        }
    }
}
else if (!alarm[0] && !message_advance)
{
    alarm[0] = 30;
}

if (letter_waiter > 0)
    letter_waiter--;

if (message_advance == true)
{
    if (draw_alpha > 0)
    {
        draw_alpha -= 0.05;
    }
    else
    {
        message_advance = false;
        
        if ((message_current + 1) < array_length_1d(message))
        {
            letter_array = -1;
            message_current += 1;
            letter_current = 0;
            draw_alpha = 1;
        }
        else
        {
            global.dialogue_open = false;
        }
    }
}
