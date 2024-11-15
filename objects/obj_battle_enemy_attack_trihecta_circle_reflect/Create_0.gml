var sign_factor_x, sign_factor_y;

if (global.battle_enemy_name_1 == "trihecta")
    damage_number = scr_determine_damage_number_enemy("trihecta", "void", "void");
else
    damage_number = scr_determine_damage_number_enemy("tri", "hec", "ta");

sign_factor_x = irandom_range(0, 1);

if (sign_factor_x == 0)
    sign_factor_x = -1;

sign_factor_y = irandom_range(0, 1);

if (sign_factor_y == 0)
    sign_factor_y = -1;

move_speed_x = irandom_range(2, 3);
move_speed_y = irandom_range(2, 3);

if (move_speed_x > move_speed_y)
    move_speed_max = move_speed_x;
else
    move_speed_max = move_speed_y;

move_x = sign_factor_x * move_speed_x;
move_y = sign_factor_y * move_speed_y;
started = false;
image_speed = 0;
image_index = 0;
image_alpha = 0;
x_list = ds_list_create();
y_list = ds_list_create();
max_points_trail = 10;
trail_sprite = spr_battle_enemy_attack_trihecta_circle_reflect;
