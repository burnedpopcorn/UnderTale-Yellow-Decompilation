if (live_call())
    return global.live_result;

draw_set_alpha(draw_alpha);
draw_set_color(c_white);
draw_sprite_ext(spr_crayon_id, 0, id_xx, id_yy, 1, 1, 0, c_white, draw_alpha);

for (var i = 0; i < array_length(button_x); i++)
{
    draw_set_color(c_white);
    
    if (button_highlight[i] == true)
        draw_set_color(c_yellow);
    
    draw_rectangle(button_x[i] - 3, button_y[i] - 3, button_x[i] + button_width + 3, button_y[i] + button_height + 3, false);
    draw_set_color(c_black);
    draw_rectangle(button_x[i], button_y[i], button_x[i] + button_width, button_y[i] + button_height, false);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_main);
    draw_set_color(c_white);
    draw_text(button_x[i] + (button_width * 0.5), button_y[i] + (button_height * 0.5), button_text[i]);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

for (var j = 0; j < ds_grid_height(drawing_grid); j++)
{
    for (var i = 0; i < ds_grid_width(drawing_grid); i++)
    {
        var grid_current = ds_grid_get(drawing_grid, i, j);
        
        if (grid_current != 0)
            draw_sprite_ext(spr_crayon_pixel, 0, id_xx + i, id_yy + j, 1, 1, 0, pencil_color[grid_current - 1], draw_alpha);
    }
}

draw_sprite_ext(spr_crayon_cursor, 0, cursor_x, cursor_y, 1, 1, 0, c_white, draw_alpha);
draw_set_alpha(1);
