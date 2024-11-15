var w_scale, h_scale, w_multiplier, h_multiplier, i;

if (surf_screen_noloop == false)
{
    surface_set_target(surf_screen_copy);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
    surface_copy(surf_screen_copy, 0, 0, application_surface);
    surf_screen_noloop = true;
}
else if (!surface_exists(surf_screen_copy))
{
    surf_screen_noloop = false;
    exit;
}

w_scale = surface_get_width(application_surface) / 320;
h_scale = surface_get_height(application_surface) / 240;
w_multiplier = 320 / surface_get_width(application_surface);
h_multiplier = 240 / surface_get_height(application_surface);

for (i = 0; i < array_length(line_y); i++)
    draw_surface_part_ext(surf_screen_copy, i * w_scale, 0, w_scale, 320 * h_scale, i, clamp(line_y[i], 0, 9999), w_multiplier, h_multiplier, c_white, 1);
