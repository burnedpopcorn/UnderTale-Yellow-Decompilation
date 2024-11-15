if (live_call())
    return global.live_result;

instance_destroy(obj_flowey_1_attack_4_head);
instance_destroy(obj_battle_enemy_attack_flowey_spiral);
instance_destroy(obj_battle_enemy_attack_fpellets_simple);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
