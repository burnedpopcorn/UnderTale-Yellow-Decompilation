if (!instance_exists(obj_battle_enemy_attack_starlo_bottle))
{
    alarm[1] = 30;
    exit;
}

var current_bottle = irandom_range(0, 2);

while (!instance_exists(bottle[current_bottle]))
    current_bottle = irandom_range(0, 2);

instance_create(bottle[current_bottle].x, bottle[current_bottle].y - 25, obj_battle_enemy_attack_starlo_take_aim_target);
alarm[0] = attack_interval;
