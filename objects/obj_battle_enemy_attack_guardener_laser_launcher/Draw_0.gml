var i, new_dir, xx, yy;

if (live_call())
    return global.live_result;

if (!surface_exists(global.attack_surface))
    exit;

surface_set_target(global.attack_surface);
draw_set_alpha(warning_line_alpha);

for (i = 0; i < 8; i++)
{
    new_dir = image_angle + (i * 45);
    draw_set_color(c_white);
    xx = (x - global.attack_surface_x) + lengthdir_x(600, new_dir);
    yy = (y - global.attack_surface_y) + lengthdir_y(600, new_dir);
    draw_line_width(x - global.attack_surface_x, y - global.attack_surface_y, xx, yy, 2);
}

draw_set_alpha(1);
surface_reset_target();
