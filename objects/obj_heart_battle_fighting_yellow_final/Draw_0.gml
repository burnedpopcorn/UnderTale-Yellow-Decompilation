if (live_call())
    return global.live_result;

var j = 2;
var i = ds_list_size(x_list) - 1;

while (i >= 0)
{
    var x0 = ds_list_find_value(x_list, i);
    var y0 = ds_list_find_value(y_list, i);
    var image_alpha_trail = 1 / j;
    draw_sprite_ext(base_sprite, 0, x0, y0, image_xscale, image_yscale, image_angle, c_white, image_alpha_trail * image_alpha);
    j += 1;
    i -= 1;
}

if (is_charging && !is_charged)
{
    draw_set_circle_precision(8);
    var dir_offset = 180 * charge_percentage;
    var distance = 25 * charge_percentage;
    var circle_alpha = 0.8 - charge_percentage;
    var custom_col = make_color_rgb(255, 255, 255 - (255 * charge_percentage));
    draw_set_color(custom_col);
    draw_set_alpha(circle_alpha);
    
    for (i = 0; i < 360; i += 90)
    {
        var xx = x + lengthdir_x(distance, i + dir_offset);
        var yy = y + lengthdir_y(distance, i + dir_offset);
        draw_circle(xx, yy, 6, false);
    }
    
    draw_set_alpha(1);
    draw_set_circle_precision(24);
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
shader_set(sh_flash);
draw_sprite_ext(base_sprite, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, dash_overlay);
shader_reset();

if (draw_sprite_hurt == true)
    draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
