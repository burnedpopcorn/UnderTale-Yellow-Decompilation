if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_macro_big_frog)
    instance_destroy();

with (obj_battle_enemy_attack_bigfrog_herofly)
    instance_destroy();

with (obj_battle_enemy_attack_bigfrog_fly_herotarget)
    instance_destroy();

with (obj_battle_enemy_attack_bigfrog_fly_bullet)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
