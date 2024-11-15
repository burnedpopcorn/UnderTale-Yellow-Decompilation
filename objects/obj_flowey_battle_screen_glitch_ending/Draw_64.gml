var app_surf_height, app_surf_width, screen_parts, part_height, part_width, i, j;

if (live_call())
    return global.live_result;

display_set_gui_size(-1, -1);
application_surface_draw_enable(false);
app_surf_height = surface_get_height(application_surface);
app_surf_width = surface_get_width(application_surface);
screen_parts = 8;
part_height = app_surf_height / screen_parts;
part_width = app_surf_width / screen_parts;

for (i = 0; i < screen_parts; i++)
{
    for (j = 0; j < screen_parts; j++)
        draw_surface_part_ext(application_surface, j * part_width, i * part_height, part_width, part_height, j * part_width, i * part_height, random_range(0.5, 1.5), random_range(0.5, 1.5), c_white, 1);
}

screen_parts = 6;

for (i = 0; i < screen_parts; i++)
{
    for (j = 0; j < screen_parts; j++)
        draw_surface_part_ext(application_surface, irandom_range(0, 320), irandom_range(0, 240), irandom_range(0, 320), irandom_range(0, 240), irandom_range(0, 640), irandom_range(0, 480), 1, 1, c_white, 1);
}

display_set_gui_size(320, 240);
draw_set_alpha(noise_alpha);
draw_sprite_tiled(spr_flowey_battle_noise, 0, 0, 0);
draw_set_alpha(1);
