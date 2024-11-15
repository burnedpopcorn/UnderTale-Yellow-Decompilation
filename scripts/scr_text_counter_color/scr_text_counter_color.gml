function scr_text_counter_color()
{
    if (characters > 0 && characters < message_length)
    {
        current_char = string_char_at(message_draw, characters);
        
        switch (current_char)
        {
            case ".":
            case ",":
            case "?":
            case "!":
                counter_max = global.text_counter_max;
                break;
            
            default:
                if (color_count >= 1)
                {
                    switch (current_char_2)
                    {
                        case ".":
                        case ",":
                        case "?":
                        case "!":
                            counter_max = global.text_counter_max;
                            break;
                        
                        default:
                            if (color_count >= 2)
                            {
                                switch (current_char_3)
                                {
                                    case ".":
                                    case ",":
                                    case "?":
                                    case "!":
                                        counter_max = global.text_counter_max;
                                        break;
                                    
                                    default:
                                        counter_max = 1;
                                }
                                
                                break;
                            }
                            
                            counter_max = 1;
                    }
                    
                    break;
                }
                
                counter_max = 1;
        }
        
        if (hold > 1)
            counter_max = 1;
        
        counter += 1;
        
        if (counter >= counter_max)
            counter = 0;
    }
    else
    {
        counter = 0;
    }
}
