function scr_draw_text_effect_twitchy_quotebubble_battle_yellow_3()
{
    var twitchy_text_probability = global.twitchy_text_probability;
    var twitchy_text_intensity = global.twitchy_text_intensity;
    str_indent = "";
    str_indent_count = 0;
    str_offset = -string_width(string_hash_to_newline(string_copy("A", 1, 1)));
    
    for (var i = 1; i <= characters; i += 1)
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
        
        str_char = string_char_at(message[message_current], i);
        
        if (str_char == "#")
        {
            str_indent_count += 1;
            
            if (str_indent_count == 1)
                str_indent = "#";
            else if (str_indent_count == 2)
                str_indent = "##";
            else if (str_indent_count == 3)
                str_indent = "###";
            else if (str_indent_count == 4)
                str_indent = "####";
            
            str_offset = -string_width(string_hash_to_newline(string_copy("A", 1, 1))) * 2;
        }
        
        str_offset += string_width(string_hash_to_newline(string_copy("A", 1, 1)));
        
        if (string_lettersdigits(str_char) == "")
            draw_text(obj_quote_bubble_battle_yellow_3.x + 21 + str_offset, obj_quote_bubble_battle_yellow_3.y + 9, string_hash_to_newline(str_indent + str_char));
        else
            draw_text(obj_quote_bubble_battle_yellow_3.x + 21 + str_offset + (twitchy_text_offset_x * twitchy_text_intensity), obj_quote_bubble_battle_yellow_3.y + 9 + (twitchy_text_offset_y * twitchy_text_intensity), string_hash_to_newline(str_indent + str_char));
    }
}
