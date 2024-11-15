if (live_call())
    return global.live_result;

draw_sprite_ext(sprite_index, image_index, x - 1, y, 1, 1, image_angle, c_black, image_alpha);
draw_sprite_ext(sprite_index, image_index, x - 1, y - 1, 1, 1, image_angle, c_black, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y - 1, 1, 1, image_angle, c_black, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + 1, y - 1, 1, 1, image_angle, c_black, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + 1, y, 1, 1, image_angle, c_black, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + 1, y + 1, 1, 1, image_angle, c_black, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y + 1, 1, 1, image_angle, c_black, image_alpha);
draw_sprite_ext(sprite_index, image_index, x - 1, y + 1, 1, 1, image_angle, c_black, image_alpha);
draw_self();
