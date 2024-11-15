var in_angle, angle_range, angle_diff, disjoint;

if (obj_battle_enemy_attack_frostermit_pincher_right_1.state == "normal")
    in_angle = point_direction(obj_battle_enemy_attack_frostermit_pincher_right_1.x, obj_battle_enemy_attack_frostermit_pincher_right_1.y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
else
    in_angle = obj_battle_enemy_attack_frostermit_pincher_right_1.image_angle_d_location_2;

angle_range = in_angle - out_angle;
angle_diff = obj_battle_enemy_attack_frostermit_pincher_right_1.image_angle - out_angle;
disjoint = disjoint_out_max + (disjoint_range * abs(angle_diff / angle_range));
x_offset = 44 * cos(degtorad(obj_battle_enemy_attack_frostermit_pincher_right_2.image_angle - 24));
y_offset = 44 * sin(degtorad(obj_battle_enemy_attack_frostermit_pincher_right_2.image_angle - 24));
x = obj_battle_enemy_attack_frostermit_pincher_right_2.x + x_offset;
y = obj_battle_enemy_attack_frostermit_pincher_right_2.y - y_offset;
image_angle = disjoint + obj_battle_enemy_attack_frostermit_pincher_right_2.image_angle;
image_alpha = obj_battle_enemy_attack_frostermit_pincher_right_1.image_alpha;
