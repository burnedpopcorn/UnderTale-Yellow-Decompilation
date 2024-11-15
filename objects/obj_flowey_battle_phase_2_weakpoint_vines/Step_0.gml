if (live_call())
    return global.live_result;

weakpoint_position = irandom_range(0, 9);

if (!instance_exists(obj_flowey_battle_phase_2_weakpoint_spikes))
    image_speed = 1;
