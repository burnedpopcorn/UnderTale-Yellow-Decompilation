damage_number = scr_determine_damage_number_enemy("dalv", "void", "void");
image_speed = 0.6;
image_index = 0;
image_alpha = 0;
draw_position_x = x;
draw_position_y = y;
spin_speed = 0;
spin_speed_increase = 1;
spin_speed_max = 60;
spin_speed_divider = 2;
move_random_number = irandom_range(0, 1);
move = false;
sign_modifier = -1;
time_elapsed = 0;
time_max = 360;
time_increase = 1;
max_rise = abs(x - obj_dialogue_box_battle_transformation_any.bbox_left - 10);