function draw_on_surface()
{
    if (!surface_exists(global.attack_surface))
    {
        draw_self();
        exit;
    }
    
    surface_set_target(global.attack_surface);
    draw_sprite_ext(sprite_index, image_index, x - global.attack_surface_x, y - global.attack_surface_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    surface_reset_target();
}
