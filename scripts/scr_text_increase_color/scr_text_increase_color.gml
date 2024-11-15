function scr_text_increase_color()
{
    hold = key_select * global.hold_speed;
    
    if (hold > global.hold_speed)
        hold = global.hold_speed;
    else if (hold <= 0)
        hold = 1;
    
    characters += (increase * hold);
    
    if (characters > message_length)
        characters = message_length;
    
    message_draw = string_copy(message[message_current], 0, characters);
    current_char = string_char_at(message_draw, characters);
    
    if (color_count >= 1)
    {
        message_draw_2 = string_copy(message_2[message_current], 0, characters);
        current_char_2 = string_char_at(message_draw_2, characters);
    }
    
    if (color_count >= 2)
    {
        message_draw_3 = string_copy(message_3[message_current], 0, characters);
        current_char_3 = string_char_at(message_draw_3, characters);
    }
}
