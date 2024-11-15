if (live_call())
    return global.live_result;

instance_destroy(obj_ceroba_phase_2_opener_lamp);
instance_destroy(obj_ceroba_attack_fireball);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
