if (live_call())
    return global.live_result;

if (clover_overlay_alpha > 0)
{
    draw_set_alpha(clover_overlay_alpha);
    shader_set(sh_flash);
    
    with (obj_player_npc)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, other.clover_overlay_alpha);
    
    shader_reset();
    draw_set_alpha(1);
}

if (circle_alpha > 0)
{
    draw_set_circle_precision(48);
    
    if (!surface_exists(surf))
        surf = surface_create(room_width, room_height);
    
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    draw_set_alpha(circle_alpha);
    draw_set_color(c_white);
    draw_circle(x - 0.5, y - 0.5, circle_radius, false);
    draw_set_alpha(1);
    gpu_set_blendmode(bm_subtract);
    draw_circle_color(x - 0.5, y - 0.5, circle_radius * 0.95, c_white, c_white, false);
    gpu_set_blendmode(bm_normal);
    surface_reset_target();
    draw_set_circle_precision(24);
    draw_surface(surf, 0, 0);
}
