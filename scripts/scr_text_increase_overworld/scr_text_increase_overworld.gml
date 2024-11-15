function scr_text_increase_overworld()
{
    var message_length;
    
    message_length = string_length(message[message_current]);
    cutoff += 1;
    
    if (cutoff > message_length)
        cutoff = message_length;
}
