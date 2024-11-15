function scr_text_counter_custom()
{
    var current_char, counter_max, message_length, pause_duration;
    
    current_char = string_char_at(message[message_current], cutoff);
    counter_max = 1;
    message_length = string_length(message[message_current]);
    pause_duration = 5;
    
    if (cutoff > 0 && cutoff < message_length)
    {
        switch (current_char)
        {
            case ".":
            case ",":
            case "?":
            case "!":
                counter_max = pause_duration;
                break;
            
            default:
                counter_max = 1;
        }
        
        counter += argument[0];
        
        if (counter >= counter_max)
            counter = 0;
    }
    else
    {
        counter = 0;
    }
}
