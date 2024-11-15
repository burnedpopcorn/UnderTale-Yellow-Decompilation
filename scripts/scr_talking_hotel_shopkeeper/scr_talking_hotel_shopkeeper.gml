function scr_talking_hotel_shopkeeper()
{
    var message_og_length;
    
    message_og_length = string_length(message[message_current]);
    
    if (characters > message_og_length && characters < message_length)
    {
        if (!variable_instance_exists(id, "message_pause_noloop") || message_pause_noloop < message_current)
        {
            message_pause_noloop = message_current;
            message_wait_timer = 5;
        }
        
        if (variable_instance_exists(id, "message_wait_timer") && message_wait_timer > 0 && message_og_length > 0)
        {
            message_wait_timer -= 1;
            characters -= 1;
            exit;
        }
    }
    
    show_debug_message(current_char);
    
    switch (current_char)
    {
        case " ":
        case "*":
            break;
        
        default:
            audio_stop_sound(snd_talk_default);
            audio_play_sound(snd_talk_default, 20, false);
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
