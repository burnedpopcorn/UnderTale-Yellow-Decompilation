function scr_text_increase_auto()
{
    hold = 1;
    characters += (increase * hold);
    
    if (characters > message_length)
        characters = message_length;
    
    message_draw = string_copy(message[message_current], 0, characters);
    current_char = string_char_at(message_draw, characters);
}
