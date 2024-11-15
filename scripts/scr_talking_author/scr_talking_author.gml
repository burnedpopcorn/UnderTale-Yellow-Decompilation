function scr_talking_author()
{
    switch (current_char)
    {
        case " ":
        case "*":
            break;
        
        default:
            audio_stop_sound(Author);
            audio_play_sound(Author, 20, false);
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
