if (state >= 1)
{
    var j = 2;
    i = ds_list_size(x_list) - 1;
    
    while (i >= 0)
    {
        var x0 = ds_list_find_value(x_list, i);
        var y0 = ds_list_find_value(y_list, i);
        var angle0 = ds_list_find_value(angle_list, i);
        var image_alpha_trail = 1 / j;
        draw_sprite_ext(trail_sprite, 0, x0, y0, 1, 1, angle0, c_white, image_alpha_trail * image_alpha);
        j += 1;
        i -= 1;
    }
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, image_alpha);
