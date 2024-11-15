function scr_talking_toriel_1_color()
{
    switch (current_char)
    {
        case " ":
        case "*":
            if (color_count >= 1)
            {
                switch (current_char_2)
                {
                    case " ":
                    case "*":
                        if (color_count >= 2)
                        {
                            switch (current_char_3)
                            {
                                case " ":
                                case "*":
                                    break;
                                
                                default:
                                    audio_stop_sound(snd_talk_toriel_1);
                                    audio_play_sound(snd_talk_toriel_1, 20, false);
                            }
                        }
                        
                        break;
                    
                    default:
                        audio_stop_sound(snd_talk_toriel_1);
                        audio_play_sound(snd_talk_toriel_1, 20, false);
                }
            }
            
            break;
        
        default:
            audio_stop_sound(snd_talk_toriel_1);
            audio_play_sound(snd_talk_toriel_1, 20, false);
    }
    
    switch (current_char)
    {
        case ".":
        case ",":
        case "?":
        case "!":
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
                                    break;
                                
                                default:
                                    can_talk = true;
                            }
                            
                            break;
                        }
                        
                        can_talk = true;
                }
                
                break;
            }
            
            can_talk = true;
    }
}
