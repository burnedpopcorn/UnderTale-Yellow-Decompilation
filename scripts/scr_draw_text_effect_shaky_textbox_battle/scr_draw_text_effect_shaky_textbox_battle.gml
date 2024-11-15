function scr_draw_text_effect_shaky_textbox_battle()
{
    var shaky_text_intensity, i;
    
    shaky_text_intensity = global.shaky_text_intensity;
    str_indent = "";
    str_indent_count = 0;
    str_offset = -string_width(string_hash_to_newline(string_copy("A", 1, 1)));
    
    for (i = 1; i <= characters; i += 1)
    {
        str_char = string_char_at(message[message_current], i);
        
        if (str_char == "#")
        {
            str_indent_count += 1;
            
            if (str_indent_count == 1)
                str_indent = "#";
            else if (str_indent_count == 2)
                str_indent = "##";
            
            str_offset = -string_width(string_hash_to_newline(string_copy("A", 1, 1))) * 2;
        }
        
        str_offset += string_width(string_hash_to_newline(string_copy("A", 1, 1)));
        
        if (string_lettersdigits(str_char) == "")
            draw_text(obj_dialogue_box_battle.x + 20 + str_offset, obj_dialogue_box_battle.y + 20, string_hash_to_newline(str_indent + str_char));
        else
            draw_text(obj_dialogue_box_battle.x + 20 + str_offset + (irandom_range(-1, 1) * shaky_text_intensity), obj_dialogue_box_battle.y + 20 + (irandom_range(-1, 1) * shaky_text_intensity), string_hash_to_newline(str_indent + str_char));
    }
}
