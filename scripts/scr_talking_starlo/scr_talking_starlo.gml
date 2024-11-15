function scr_talking_starlo()
{
    switch (current_char)
    {
        case " ":
        case "*":
            break;
        
        default:
            audio_stop_sound(snd_talk_starlo);
            audio_play_sound(snd_talk_starlo, 20, false);
    }
    
    switch (current_char)
    {
        case ".":
        case ",":
        case "?":
        case "!":
            break;
        
        default:
            can_talk = true;
    }
}
