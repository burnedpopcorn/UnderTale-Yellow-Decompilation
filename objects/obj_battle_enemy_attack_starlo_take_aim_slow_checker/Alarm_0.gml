var soul = obj_heart_battle_fighting_red;

if (starlo_take_aim_shots_current < starlo_take_aim_shots_max)
{
    var spawn_dir = point_direction(soul.xprevious, soul.yprevious, soul.x, soul.y);
    var target = instance_create(soul.x + lengthdir_x(15, spawn_dir), soul.y + lengthdir_y(15, spawn_dir), obj_battle_enemy_attack_starlo_take_aim_one_target);
    target.target_radius_dec = 5;
}
else if (starlo_take_aim_fade_out == false)
{
    starlo_take_aim_fade_out = true;
}

starlo_take_aim_shots_current += 1;
alarm[0] = starlo_take_aim_interval;
