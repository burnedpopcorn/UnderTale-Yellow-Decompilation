function scr_draw_text_effect_circle_quotebubble_battle(argument0, argument1, argument2)
{
    var circle_text_angle_increase, circle_text_radius, circle_text_speed, i;
    
    circle_text_angle_increase = 0;
    circle_text_radius = global.circle_text_radius;
    circle_text_speed = global.circle_text_speed;
    str_indent = "";
    str_indent_count = 0;
    str_offset = -string_width(string_hash_to_newline(string_copy("A", 1, 1)));
    
    for (i = 1; i <= characters; i += 1)
    {
        str_char = string_char_at(argument0, i);
        
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
        draw_text(argument1 + str_offset + (circle_text_radius * cos((circle_text_angle + circle_text_angle_increase) * circle_text_angle_direction * 0.008726646259971648)), argument2 - (circle_text_radius * sin((circle_text_angle + circle_text_angle_increase) * circle_text_angle_direction * 0.008726646259971648)), string_hash_to_newline(str_indent + str_char));
        circle_text_angle_increase += circle_text_speed;
    }
    
    circle_text_angle += circle_text_speed;
}