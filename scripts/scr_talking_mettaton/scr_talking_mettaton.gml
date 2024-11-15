function scr_talking_mettaton()
{
    switch (current_char)
    {
        case " ":
        case "*":
            break;
        
        default:
            script_execute(scr_mettaton_voice);
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
