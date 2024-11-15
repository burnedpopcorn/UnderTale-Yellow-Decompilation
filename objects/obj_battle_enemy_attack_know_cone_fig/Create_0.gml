damage_number = scr_determine_damage_number_enemy("know cone a", "know cone b", "know cone c");
image_speed = 0;
image_index = 0;
image_angle = 0;
x_speed = irandom_range(2, 3);

if (x >= obj_dialogue_box_battle_transformation_any.x)
    x_speed = -x_speed;

x_speed_decrease = 0.1;
jump_speed = 0;
grav = 0.5;
grav_limit = 10;
jump_speed_initial = 9;
jump_speed_initial_decrease = 3;
can_switch_x = false;
can_switch_y = false;
in_box = false;
no_loop = false;
