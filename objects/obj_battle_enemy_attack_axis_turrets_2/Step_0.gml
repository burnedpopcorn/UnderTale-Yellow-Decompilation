if (live_call())
    return global.live_result;

if (!instance_exists(obj_battle_enemy_attack_axis_turret_2) && !instance_exists(obj_battle_enemy_attack_axis_turret_twinkle_2) && !alarm[0])
    alarm[0] = 1;
