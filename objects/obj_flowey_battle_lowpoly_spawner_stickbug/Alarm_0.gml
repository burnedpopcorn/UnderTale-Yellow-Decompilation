if (live_call())
    return global.live_result;

instance_create_depth(irandom_range(200, 440), 80, obj_flowey_battle_final.depth + 1, obj_flowey_battle_phase_2_lowpoly_stickbug);
var variation = irandom_range(-40, 60);
alarm[0] = stickbug_delay + variation;
