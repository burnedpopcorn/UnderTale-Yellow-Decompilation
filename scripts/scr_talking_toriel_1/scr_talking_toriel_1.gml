function scr_talking_toriel_1()
{
    switch (current_char)
    {
        case " ":
        case "*":
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
            can_talk = true;
    }
}