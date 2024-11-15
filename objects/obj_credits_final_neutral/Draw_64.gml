var x_offset, line_counter, line_offset, section_offset, header_offset, y_current, category_number, a, category_size, i, last_line, current_text_y_placement;

if (live_call())
    return global.live_result;

draw_set_font(fnt_main);
x_offset = 20;
line_counter = 0;
line_offset = 20;
section_offset = 30;
header_offset = 10;
y_current = 0;
draw_set_alpha(draw_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, 640, 480, false);
draw_set_alpha(text_alpha);

if (global.hotland_flag[10] != 0)
{
    draw_sprite_ext(spr_logo_undertale, 1, 160, -144 + y_offset, 0.5, 0.5, 0, c_white, 1);
    draw_sprite_ext(logo_yellow, 1, 160, -112 + y_offset, 0.5, 0.5, 0, c_white, 1);
}

category_number = array_length(credits_entry);

for (a = 0; a < category_number; a++)
{
    category_size = array_length(credits_entry[a]);
    
    for (i = 0; i < category_size; i++)
    {
        draw_set_color(c_white);
        
        if (i == 0)
            draw_set_color(c_yellow);
        
        last_line = i == (category_size - 1) && a == (category_number - 1);
        
        if (last_line)
        {
            x_offset = 160;
            draw_set_halign(fa_center);
        }
        else
        {
            draw_set_halign(fa_left);
        }
        
        current_text_y_placement = y_offset + y_current;
        
        if (last_line == true && y_slow_down == false && current_text_y_placement < (110 + (slow_down_treshold * 0.5)))
            y_slow_down = true;
        
        draw_text(x_offset, floor(current_text_y_placement), credits_entry[a][i]);
        y_current += (line_offset + ((i == 0) * header_offset) + ((i == (category_size - 1)) * section_offset));
        line_counter++;
    }
}

if (y_max == -1)
    y_max = y_current - 160;

draw_set_alpha(1);
