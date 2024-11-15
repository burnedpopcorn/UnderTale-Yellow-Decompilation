if (live_call())
    return global.live_result;

with (obj_fmartlet_wings)
    instance_destroy();

with (obj_martlet_attack_wing_feather)
    instance_destroy();

with (obj_feather_fall_final_holder)
    instance_destroy();

instance_destroy(obj_martlet_final_slowdown);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
