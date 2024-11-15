if (live_call())
    return global.live_result;

shader_set(sh_flash);
draw_set_alpha(overlay_alpha);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
draw_set_alpha(1);
shader_reset();
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
