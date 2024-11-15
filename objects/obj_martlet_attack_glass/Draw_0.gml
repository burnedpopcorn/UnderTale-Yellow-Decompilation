if (live_call())
    return global.live_result;

draw_self();
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_yellow, bullet_hit_overlay);
