var in_angle;

if (obj_battle_enemy_attack_frostermit_pincher_left_1.state == "normal")
    in_angle = point_direction(obj_battle_enemy_attack_frostermit_pincher_left_1.x, obj_battle_enemy_attack_frostermit_pincher_left_1.y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
else
    in_angle = obj_battle_enemy_attack_frostermit_pincher_left_1.image_angle_d_location_2;

var angle_range = in_angle - out_angle;
var angle_diff = obj_battle_enemy_attack_frostermit_pincher_left_1.image_angle - out_angle;
var disjoint = disjoint_out_max + (disjoint_range * abs(angle_diff / angle_range));
x_offset = 44 * cos(degtorad(obj_battle_enemy_attack_frostermit_pincher_left_2.image_angle + 24));
y_offset = 44 * sin(degtorad(obj_battle_enemy_attack_frostermit_pincher_left_2.image_angle + 24));
x = obj_battle_enemy_attack_frostermit_pincher_left_2.x + x_offset;
y = obj_battle_enemy_attack_frostermit_pincher_left_2.y - y_offset;
image_angle = disjoint + obj_battle_enemy_attack_frostermit_pincher_left_2.image_angle;
image_alpha = obj_battle_enemy_attack_frostermit_pincher_left_1.image_alpha;
