if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_bigfrog_frog_run)
    instance_destroy();

with (obj_battle_enemy_attack_bigfrog_frog_tongue)
    instance_destroy();

with (obj_battle_enemy_attack_bigfrog_frog_tongue_fly)
    instance_destroy();

with (obj_battle_enemy_attack_bigfrog_frog_tongue_tip)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
