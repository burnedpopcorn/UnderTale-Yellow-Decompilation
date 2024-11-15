if (live_call())
    return global.live_result;

draw_set_alpha(alpha_base);
draw_sprite(spr_petal_pull_face, face_index, x + random_range(-shake_intensity, shake_intensity), y + random_range(-shake_intensity, shake_intensity));
draw_sprite(spr_petal_pull_petal1, 0, x, y);
draw_sprite(spr_petal_pull_petal2, 0, x, y);
draw_sprite(spr_petal_pull_petal3, 0, x, y);
draw_sprite(spr_petal_pull_petal4, 0, x, y);
draw_sprite(spr_petal_pull_hand_base, 0, x, y);
draw_sprite_ext(spr_petal_pull_hand_picking, pick_index, x, y, 1, 1, 0, c_white, hand_alpha);
draw_sprite_ext(spr_petal_pull_petal_left, left_index, x, y, 1, 1, 0, c_white, left_alpha * alpha_base);
draw_sprite_ext(spr_petal_pull_petal_right, right_index, x, y, 1, 1, 0, c_white, right_alpha * alpha_base);
draw_set_alpha(1);
