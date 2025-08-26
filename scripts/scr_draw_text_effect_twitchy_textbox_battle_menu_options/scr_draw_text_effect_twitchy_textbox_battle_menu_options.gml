function scr_draw_text_effect_twitchy_textbox_battle_menu_options()
{
    var twitchy_text_probability = global.twitchy_text_probability;
    var twitchy_text_intensity = global.twitchy_text_intensity;
    str_indent = "";
    str_indent_count = 0;
    str_offset = -string_width(string_hash_to_newline(string_copy("A", 1, 1)));
    battle_menu_option_string_count = string_length(battle_menu_option_string);
    
    for (var i = 1; i <= battle_menu_option_string_count; i += 1)
    {
        twitchy_text_offset_x = 0;
        twitchy_text_offset_y = 0;
        twitchy_text_number = irandom_range(1, twitchy_text_probability);
        
        if (twitchy_text_number == twitchy_text_probability)
        {
            twitch_direction = irandom_range(1, 4);
            
            switch (twitch_direction)
            {
                case 1:
                    twitchy_text_offset_x = 1;
                    twitchy_text_offset_y = 0;
                    break;
                
                case 2:
                    twitchy_text_offset_x = -1;
                    twitchy_text_offset_y = 0;
                    break;
                
                case 3:
                    twitchy_text_offset_x = 0;
                    twitchy_text_offset_y = 1;
                    break;
                
                case 4:
                    twitchy_text_offset_x = 0;
                    twitchy_text_offset_y = -1;
                    break;
            }
        }
        
        str_char = string_char_at(battle_menu_option_string, i);
        
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
            draw_text(battle_menu_option_x + str_offset, battle_menu_option_y, string_hash_to_newline(str_indent + str_char));
        else
            draw_text(battle_menu_option_x + str_offset + (twitchy_text_offset_x * twitchy_text_intensity), battle_menu_option_y + (twitchy_text_offset_y * twitchy_text_intensity), string_hash_to_newline(str_indent + str_char));
    }
}
