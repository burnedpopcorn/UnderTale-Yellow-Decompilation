if (live_call())
    return global.live_result;

if (instance_exists(obj_flowey_battle_phase_2_clay_cone))
    image_angle = obj_flowey_battle_phase_2_clay_cone.image_angle;
else
    instance_destroy();
