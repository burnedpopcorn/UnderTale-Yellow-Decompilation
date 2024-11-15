if (live_call())
    return global.live_result;

with (obj_battle_enemy_attack_macro_knight)
    instance_destroy();

with (obj_battle_enemy_attack_macro_knight_bullet)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
