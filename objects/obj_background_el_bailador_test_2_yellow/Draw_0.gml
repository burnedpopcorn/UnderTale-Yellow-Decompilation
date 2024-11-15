var per_frac;

angle_current = angle_default;

if (scroll_horizontal == true)
{
    scroll_ind_total_x += scroll_ind_inc_x;
    
    if (scroll_ind_total_x >= scroll_ind_max_x)
    {
        while (scroll_ind_total_x >= scroll_ind_max_x)
        {
            scroll_current_x += pixel_dim;
            
            if (scroll_current_x >= sprite_width)
                scroll_current_x -= sprite_width;
            else if (scroll_current_x < 0)
                scroll_current_x += sprite_width;
            
            scroll_ind_total_x -= scroll_ind_max_x;
        }
    }
}
else
{
    scroll_current_x = 0;
    scroll_ind_total_x = 0;
}

if (scroll_vertical == true)
{
    scroll_ind_total_y += scroll_ind_inc_y;
    
    if (scroll_ind_total_y >= scroll_ind_max_y)
    {
        while (scroll_ind_total_y >= scroll_ind_max_y)
        {
            scroll_current_y += pixel_dim;
            
            if (scroll_current_y >= sprite_height)
                scroll_current_y -= sprite_height;
            else if (scroll_current_y < 0)
                scroll_current_y += sprite_height;
            
            scroll_ind_total_y -= scroll_ind_max_y;
        }
    }
}
else
{
    scroll_current_y = 0;
    scroll_ind_total_y = 0;
}

for (i = 0; i < sprite_height; i += pixel_dim)
{
    scroll_temp_x = scroll_current_x;
    
    if (scroll_temp_x >= sprite_width)
        scroll_temp_x -= sprite_width;
    else if (scroll_temp_x < 0)
        scroll_temp_x += sprite_width;
    
    scroll_temp_y = scroll_current_y + i;
    
    if (scroll_temp_y >= sprite_height)
        scroll_temp_y -= sprite_height;
    else if (scroll_temp_y < 0)
        scroll_temp_y += sprite_height;
    
    per_frac = sin(degtorad(angle_current));
    xscale_current = image_xscale * (1 - ((1 - xscale_min) * per_frac));
    x_disjoint = (sprite_width - (sprite_width * xscale_current)) / 2;
    event_user(0);
    draw_sprite_part_ext(sprite_index, image_index, 0, scroll_temp_y, sprite_width, pixel_dim, draw_left + x_disjoint, draw_top + i, xscale_current, image_yscale, c_black, 1);
    
    for (l = 0; l <= 1; l++)
        draw_sprite_part_ext(sprite_index, image_index, par_left[l], scroll_temp_y, par_width[l], pixel_dim, par_x[l], draw_top + i, xscale_current, image_yscale, c_white, image_alpha * alpha_base);
    
    draw_sprite_part_ext(sprite_index, image_index, 0, scroll_temp_y, sprite_width, pixel_dim, draw_left + x_disjoint, draw_top + i, xscale_current, image_yscale, c_black, image_alpha * darkness_max * per_frac);
    angle_current += angle_increase;
}
