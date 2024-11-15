function scr_talking_normal()
{
    switch (current_char)
    {
        case " ":
        case "*":
            break;
        
        default:
            audio_stop_sound(snd_talk_default);
            audio_play_sound(snd_talk_default, 20, false);
    }
    
    can_talk = true;
}
