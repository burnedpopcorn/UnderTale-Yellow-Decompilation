if (live_call())
    return global.live_result;

if (instance_exists(obj_battle_enemy_attack_bullet_residue))
    instance_destroy(obj_battle_enemy_attack_bullet_residue);
