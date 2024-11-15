var app_surf_height, app_surf_width, screen_parts, part_height, i, x_offset;

if (live_call())
    return global.live_result;

display_set_gui_size(-1, -1);
application_surface_draw_enable(false);
app_surf_height = surface_get_height(application_surface);
app_surf_width = surface_get_width(application_surface);
screen_parts = 20;
part_height = app_surf_height / screen_parts;

for (i = 0; i < screen_parts; i++)
{
    x_offset = irandom_range(-30, 30);
    draw_surface_part_ext(application_surface, 0, i * part_height, app_surf_width, part_height, x_offset, i * part_height, 1, 1, c_white, 1);
}

display_set_gui_size(320, 240);
