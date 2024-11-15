if (live_call())
    return global.live_result;

if (bullet_hit_draw_timer > 0)
    shader_set(sh_flash);

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
shader_reset();
