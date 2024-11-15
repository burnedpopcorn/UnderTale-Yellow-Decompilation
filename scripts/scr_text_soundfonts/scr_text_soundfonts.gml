function scr_text_soundfonts()
{
    if (sndfnt_array[0] != -4)
    {
        if (message_current < array_length_1d(sndfnt_array))
        {
            if (sndfnt_array[message_current] == 0 && message_current > 0)
                sndfnt_array[message_current] = sndfnt_array[message_current - 1];
            
            sndfnt = sndfnt_array[message_current];
        }
    }
}
