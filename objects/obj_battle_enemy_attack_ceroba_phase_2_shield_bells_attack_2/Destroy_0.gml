if (live_call())
    return global.live_result;

instance_destroy(obj_ceroba_attack_fireball);

with (obj_heart_yellow_shot)
    instance_destroy();

instance_destroy(obj_attack_ceroba_bell_ring_white);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
