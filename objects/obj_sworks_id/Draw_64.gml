var j, i, grid_current;

draw_set_alpha(draw_alpha);
draw_set_color(c_white);
draw_sprite_ext(spr_crayon_id, 0, id_xx, id_yy, 1, 1, 0, c_white, draw_alpha);

for (j = 0; j < ds_grid_height(drawing_grid); j++)
{
    for (i = 0; i < ds_grid_width(drawing_grid); i++)
    {
        grid_current = ds_grid_get(drawing_grid, i, j);
        
        if (grid_current != 0)
            draw_sprite_ext(spr_crayon_pixel, 0, id_xx + i, id_yy + j, 1, 1, 0, pencil_color[grid_current - 1], draw_alpha);
    }
}

draw_set_alpha(1);
