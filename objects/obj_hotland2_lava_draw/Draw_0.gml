if (live_call())
    return global.live_result;

if (!surface_exists(lava_surf))
    lava_surf = surface_create(room_width, room_height);

surface_set_target(lava_surf);
draw_sprite_tiled(ts_lava, 0, 0 - (current_time / 20), 0);
surface_reset_target();
var surface_parts = 24;
var inc = room_width / surface_parts;

for (var i = 0; i < room_width; i += inc)
{
    var sin_current = sin((current_time + (i * 10000)) / 100);
    draw_surface_part(lava_surf, 0 + i, 0, inc, room_height, 1 + i, 40 + sin_current);
    draw_surface_part(lava_surf, 0 + i, 0, inc, room_height, 1 + i, -200 + sin_current);
    draw_surface_part(lava_surf, 0 + i, 0, inc, room_height, -39 + i, 0 + sin_current);
}
