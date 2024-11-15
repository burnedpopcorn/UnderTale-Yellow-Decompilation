function scr_talking_text_color()
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
                                    audio_stop_sound(snd_footsteps_water_1);
                                    audio_play_sound(snd_footsteps_water_1, 20, false);
                            }
                        }
                        
                        break;
                    
                    default:
                        audio_stop_sound(snd_footsteps_water_1);
                        audio_play_sound(snd_footsteps_water_1, 20, false);
                }
            }
            
            break;
        
        default:
            audio_stop_sound(snd_footsteps_water_1);
            audio_play_sound(snd_footsteps_water_1, 20, false);
    }
    
    can_talk = true;
}
