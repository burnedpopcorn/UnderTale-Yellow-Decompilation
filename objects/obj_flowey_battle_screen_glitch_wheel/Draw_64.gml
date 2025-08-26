if (live_call())
    return global.live_result;

display_set_gui_size(-1, -1);
application_surface_draw_enable(false);
var app_surf_height = surface_get_height(application_surface);
var app_surf_width = surface_get_width(application_surface);
var screen_parts = 20;
var part_height = app_surf_height / screen_parts;

for (var i = 0; i < screen_parts; i++)
{
    var x_offset = irandom_range(-30, 30);
    draw_surface_part_ext(application_surface, 0, i * part_height, app_surf_width, part_height, x_offset, i * part_height, 1, 1, 16777215, 1);
}

display_set_gui_size(320, 240);
