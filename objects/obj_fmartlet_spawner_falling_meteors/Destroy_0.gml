if (live_call())
    return global.live_result;

with (obj_fmartlet_meteor_small)
    instance_destroy();

with (obj_fmartlet_meteor)
    instance_destroy();

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

part_system_clear(global.ps_meteors);
part_system_destroy(global.ps_meteors);
