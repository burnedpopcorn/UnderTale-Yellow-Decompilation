var move_factor, random_speed, random_sign;

damage_number = scr_determine_damage_number_enemy("know cone a", "know cone b", "know cone c");
image_speed = 0;
image_index = 0;
image_angle = 0;
image_alpha = 0;

if (y < obj_dialogue_box_battle_transformation_any.y)
    move_factor = 1;
else
    move_factor = -1;

random_speed = irandom_range(1, 3);
y_speed = random_speed * move_factor;
starting_position_x = x;
starting_position_y = y;
animation_disjoint_x = 0;
animation_disjoint_y = 0;
can_move = false;
in_box = false;
random_sign = irandom_range(0, 1);

if (random_sign == 1)
    sign_modifier_angle = 1;
else
    sign_modifier_angle = -1;

time_elapsed_angle = 0;
time_max_angle = 20;
time_increase_angle = 1;
max_rise_angle = 45;
