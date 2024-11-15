if (explosion_count == explosion_max && !instance_exists(obj_battle_enemy_attack_martlet_feather_spiral_explosion) && !instance_exists(obj_battle_enemy_attack_martlet_feather_spiral_feather) && !instance_exists(obj_battle_enemy_attack_martlet_feather_spiral_target_2_axis))
{
    instance_destroy();
    exit;
}
