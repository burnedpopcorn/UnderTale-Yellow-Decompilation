if (live_call())
    return global.live_result;

draw_set_color(c_black);
shader_set(sh_silhouette);
draw_outline(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
shader_reset();
draw_self();
shader_set(sh_flash);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, flash_alpha);
shader_reset();
