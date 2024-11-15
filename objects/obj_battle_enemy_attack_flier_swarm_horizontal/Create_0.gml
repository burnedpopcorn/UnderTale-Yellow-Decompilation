damage_number = scr_determine_damage_number_enemy("flier a", "flier b", "flier c");
image_speed = 0;
image_index = 0;
image_alpha = 0;
random_number = irandom_range(2, 3);

if (x < obj_dialogue_box_battle_transformation_any.x)
    speed_factor = 1;
else
    speed_factor = -1;

x_speed = speed_factor * random_number;
starting_position_x = x;
starting_position_y = y;
animation_disjoint_x = 0;
animation_disjoint_y = 0;
can_move = false;
can_vanish = false;
random_factor = irandom_range(0, 1);

if (random_factor == 0)
    random_factor = -1;

sign_modifier = random_factor;
time_elapsed = 0;
time_max = 15;
time_increase = 1;
max_rise = 5;
