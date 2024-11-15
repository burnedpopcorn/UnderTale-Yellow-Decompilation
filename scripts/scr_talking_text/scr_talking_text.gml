function scr_talking_text()
{
    switch (current_char)
    {
        case " ":
        case "*":
            break;
        
        default:
            audio_stop_sound(snd_footsteps_water_1);
            audio_play_sound(snd_footsteps_water_1, 20, false);
    }
    
    can_talk = true;
}
