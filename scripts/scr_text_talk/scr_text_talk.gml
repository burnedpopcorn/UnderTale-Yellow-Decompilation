function scr_text_talk()
{
    var message_length;
    
    message_length = string_length(message[message_current]);
    
    if (cutoff < message_length && (cutoff % 1) == 0)
    {
        switch (string_char_at(message[message_current], cutoff))
        {
            case " ":
            case ".":
                break;
            
            default:
                audio_stop_sound(sndfnt);
                audio_play_sound(sndfnt, 1, false);
                break;
        }
    }
}
