if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_ceroba_flower_circle_flower)
    instance_destroy();

with (obj_battle_enemy_attack_ceroba_flower_circle_full_spawner)
    instance_destroy();

instance_destroy(obj_battle_enemy_attack_ceroba_flower_circle_explosion);
