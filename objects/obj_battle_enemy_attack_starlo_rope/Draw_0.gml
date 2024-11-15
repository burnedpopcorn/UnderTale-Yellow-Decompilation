var box, new_col;

if (!instance_exists(obj_dialogue_box_battle_transformation_any) || !instance_exists(obj_heart_battle_fighting_red))
    exit;

box = 3154;
new_col = make_color_rgb(216, 112, 43);
draw_sprite_ext(sprite_index, 0, box.x, box.y, stretch_multiplier, 1, image_angle, new_col, 1);
draw_sprite_ext(sprite_index, 0, box.x, box.y, stretch_multiplier, 1, image_angle, c_white, rope_overlay_alpha);
