function scr_talking_axis()
{
    var axis_talknoise;
    
    switch (current_char)
    {
        case " ":
        case "*":
            break;
        
        default:
            axis_talknoise = 111;
            audio_stop_sound(axis_talknoise);
            audio_play_sound(axis_talknoise, 20, false);
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
