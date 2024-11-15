if (live_call())
    return global.live_result;

shader_set(sh_flash);
draw_sprite_ext(sprite_index, image_index, x - 1, y, 2, 2, image_angle, soul_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x - 1, y - 1, 2, 2, image_angle, soul_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y - 1, 2, 2, image_angle, soul_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + 1, y - 1, 2, 2, image_angle, soul_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + 1, y, 2, 2, image_angle, soul_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + 1, y + 1, 2, 2, image_angle, soul_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y + 1, 2, 2, image_angle, soul_color, image_alpha);
draw_sprite_ext(sprite_index, image_index, x - 1, y + 1, 2, 2, image_angle, soul_color, image_alpha);
shader_reset();
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, soul_color, image_alpha);
