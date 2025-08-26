if (live_call())
    return global.live_result;

var dir = irandom_range(0, 359);
var distance = 140;
instance_create_depth(battle_box.x + lengthdir_x(distance, dir), battle_box.y + lengthdir_y(distance, dir), -100, obj_battle_enemy_attack_axis_energy_ball_pulse);
alarm[0] = attack_interval;
attack_number--;

if (attack_number <= 0)
    instance_destroy();
