var xx, yy;

if (live_call())
    return global.live_result;

if (state == 2)
{
}

if (state == 1)
{
    xx = x + lengthdir_x(500, direction);
    yy = y + lengthdir_y(500, direction);
    draw_set_alpha(warning_line_alpha);
    draw_set_color(warning_line_color);
    draw_line_width(x, y, xx, yy, 3);
    draw_set_alpha(1);
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, image_alpha);
