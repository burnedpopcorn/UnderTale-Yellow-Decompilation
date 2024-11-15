function scr_talking_ed()
{
    switch (current_char)
    {
        case " ":
        case "*":
            break;
        
        default:
            audio_stop_sound(snd_talk_ed);
            audio_play_sound(snd_talk_ed, 20, false);
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
