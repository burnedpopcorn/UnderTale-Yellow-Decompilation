if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_macro_fly)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
