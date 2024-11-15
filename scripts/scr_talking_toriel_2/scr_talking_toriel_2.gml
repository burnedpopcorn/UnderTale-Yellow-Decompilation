function scr_talking_toriel_2()
{
    switch (current_char)
    {
        case " ":
        case "*":
            break;
        
        default:
            audio_stop_sound(snd_talk_toriel_2);
            audio_play_sound(snd_talk_toriel_2, 20, false);
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
