if (!instance_exists(obj_battle_enemy_attack_martlet_ff_3_target) && !instance_exists(obj_battle_enemy_attack_martlet_genocide_feather_ext_checker) && !instance_exists(obj_battle_enemy_attack_martlet_genocide_feather_ext_explosion) && !instance_exists(obj_battle_enemy_attack_martlet_genocide_feather_ext_feather) && fcreate_count >= fcreate_max && no_loop_destroy == false)
{
    alarm[1] = 10;
    no_loop_destroy = true;
}
