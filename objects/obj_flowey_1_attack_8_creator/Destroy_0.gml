if (live_call())
    return global.live_result;

instance_destroy(obj_flowey_1_attack_8_flower);
instance_destroy(obj_flowey_1_attack_8_slash);
instance_destroy(obj_flowey_1_attack_8_soul);
instance_destroy(obj_flowey_1_attack_7_shard);
instance_destroy(obj_battle_enemy_attack_fpellets_simple);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
