var move_factor, random_speed;

damage_number = scr_determine_damage_number_enemy("know cone a", "know cone b", "know cone c");
image_speed = 0;
image_index = 0;
image_angle = 0;
image_alpha = 0;

if (y < obj_dialogue_box_battle_transformation_any.y)
    move_factor = 1;
else
    move_factor = -1;

random_speed = irandom_range(2, 4);
y_speed = random_speed * move_factor;
starting_position_x = x;
starting_position_y = y;
animation_disjoint_x = 0;
animation_disjoint_y = 0;
can_move = false;
in_box = false;
sign_modifier = -1;
time_elapsed = 0;
time_max = 20;
time_increase = 1;
max_rise = 10;
sign_modifier_angle = -1;
time_elapsed_angle = 0;
time_max_angle = 20;
time_increase_angle = 1;
max_rise_angle = 20;
