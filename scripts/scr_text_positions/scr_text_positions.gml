function scr_text_positions()
{
    if (position_array[0] != -1)
    {
        if (message_current < array_length_1d(position_array))
            position = position_array[message_current];
    }
}
