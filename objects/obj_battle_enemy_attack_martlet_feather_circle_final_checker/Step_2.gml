if (live_call())
    return global.live_result;

if (circle_delay > 0)
{
    circle_delay--;
}
else if (circle_number > 0)
{
    instance_create_depth(0, 0, -100, obj_battle_enemy_attack_martlet_feather_circle_final_spawner);
    circle_number--;
}

if (!instance_exists(obj_battle_enemy_attack_martlet_feather_circle_final_feather) && !instance_exists(obj_battle_enemy_attack_martlet_feather_ext_checker_final) && !instance_exists(obj_battle_enemy_attack_martlet_genocide_feather_ext_feather_final) && !instance_exists(obj_martlet_attack_splitting_feather_ext_checker))
{
    if (!alarm[0])
        alarm[0] = 45;
    
    exit;
}
