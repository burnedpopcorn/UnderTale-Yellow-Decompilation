if (!instance_exists(obj_ceroba_ribbon_base))
{
    if (!noloop && obj_battle_enemy_attack_ceroba_phase_2_attack_spawner.alarm[1] < 6)
        obj_battle_enemy_attack_ceroba_phase_2_attack_spawner.alarm[1] = 6;
    
    noloop = true;
}
