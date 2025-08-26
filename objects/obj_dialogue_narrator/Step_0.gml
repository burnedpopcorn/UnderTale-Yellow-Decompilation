if (live_call())
    return global.live_result;

if (local_dialogue_open == false)
    instance_destroy();

if (letter_array == -1)
{
    for (var i = 1; i <= string_length(message[message_current]); i++)
    {
        text_alpha[i] = 0;
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

if (message_advance == 1)
{
    draw_alpha -= 0.05;
    
    if (draw_alpha <= 0)
    {
        for (var i = 0; i <= letter_current; i++)
            text_alpha[i] = 0;
        
        draw_alpha = 0;
        message_advance += 1;
    }
    else
    {
        exit;
    }
}
else if (message_advance == 2)
{
    message_advance = 0;
    
    if ((message_current + 1) < array_length_1d(message))
    {
        letter_array = -1;
        message_current += 1;
        letter_current = 0;
    }
    else
    {
        local_dialogue_open = false;
    }
}

if (message_advance != 1)
{
    if (draw_alpha < 1)
        draw_alpha += 0.1;
}

for (var i = 0; i <= letter_current; i++)
{
    if (text_alpha[i] < 1)
        text_alpha[i] += 0.1;
}
