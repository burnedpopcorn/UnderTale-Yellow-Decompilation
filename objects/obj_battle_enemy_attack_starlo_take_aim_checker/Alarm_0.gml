var soul = obj_heart_battle_fighting_red;

if (starlo_take_aim_shots_current < starlo_take_aim_shots_max)
    instance_create(soul.x + irandom_range(-10, 10), soul.y + irandom_range(-10, 10), obj_battle_enemy_attack_starlo_take_aim_one_target);
else
    instance_destroy();

starlo_take_aim_shots_current += 1;
alarm[0] = starlo_take_aim_interval;
