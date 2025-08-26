if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var distance = 80;
var dir = irandom_range(0, 359);
instance_create_depth(battle_box.x + lengthdir_x(distance, dir), battle_box.y + lengthdir_y(distance, dir), -100, obj_battle_enemy_attack_axis_turret_twinkle);
alarm[0] = attack_interval;
turret_count--;

if (turret_count <= 0)
{
    alarm[0] = attack_interval_big;
    turret_count = turret_count_max;
    turret_wave--;
}

if (turret_wave <= 0)
    instance_destroy();
