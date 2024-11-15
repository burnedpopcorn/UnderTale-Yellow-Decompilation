if (counter_current >= counter_max && !instance_exists(obj_battle_enemy_attack_martlet_feather_fall_feather) && !instance_exists(obj_battle_enemy_attack_martlet_genocide_feather_ext_checker))
{
    instance_destroy();
    exit;
}
