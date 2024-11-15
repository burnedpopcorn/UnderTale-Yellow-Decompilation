if (live_call())
    return global.live_result;

draw_sprite_ext(sprite_index, image_index, x + random_range(-shake_int, shake_int), y + random_range(-shake_int, shake_int), 1, 1, image_angle, image_blend, image_alpha);
