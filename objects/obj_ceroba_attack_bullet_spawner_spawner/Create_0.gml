if (live_call())
    return global.live_result;

attack_stop = false;
battle_box = 3154;
instance_create_depth(choose(battle_box.bbox_left - 20, battle_box.bbox_right + 20), battle_box.bbox_top - 20, -100, obj_ceroba_attack_bullet_spawner_mask);