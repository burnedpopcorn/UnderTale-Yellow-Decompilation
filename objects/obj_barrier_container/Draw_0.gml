if (live_call())
    return global.live_result;

if (surface_exists(global.attack_surface))
{
    surface_set_target(global.attack_surface);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, soul_color, image_alpha);
    surface_reset_target();
}
