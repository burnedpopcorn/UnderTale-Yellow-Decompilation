x_offset = 22 * cos(degtorad(obj_battle_enemy_attack_frostermit_pincher_right_1.image_angle + 34));
y_offset = 22 * sin(degtorad(obj_battle_enemy_attack_frostermit_pincher_right_1.image_angle + 34));
x = obj_battle_enemy_attack_frostermit_pincher_right_1.x + x_offset;
y = obj_battle_enemy_attack_frostermit_pincher_right_1.y - y_offset;
var state = obj_battle_enemy_attack_frostermit_pincher_right_1.state;

if (state == "normal")
{
    image_angle = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y) + 10;
}
else if (state == "detract")
{
    no_loop_r = false;
}
else if (state == "retract")
{
    if (no_loop_r == false)
    {
        base_angle_diff = abs(obj_battle_enemy_attack_frostermit_pincher_right_1.image_angle_d_location - obj_battle_enemy_attack_frostermit_pincher_right_1.image_angle_r_location);
        image_angle_r = image_angle;
        no_loop_r = true;
    }
    
    var image_angle_r_location = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y) + 10;
    var base_angle_r = obj_battle_enemy_attack_frostermit_pincher_right_1.image_angle_r;
    var base_angle_r_location = obj_battle_enemy_attack_frostermit_pincher_right_1.image_angle_r_location;
    var base_dividend = 1 - abs((base_angle_r_location - base_angle_r) / base_angle_diff);
    image_angle = image_angle_r + ((image_angle_r_location - image_angle_r) * base_dividend);
}

image_alpha = obj_battle_enemy_attack_frostermit_pincher_right_1.image_alpha;
