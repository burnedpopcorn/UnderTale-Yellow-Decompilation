var side, variation;

if (live_call())
    return global.live_result;

side = choose(-1, 1);

if (side == -1)
{
    instance_create_depth(-40, 300, -100, obj_flowey_battle_phase_2_lowpoly_hspike);
    instance_create_depth(0, 380, -100, obj_flowey_battle_phase_2_lowpoly_hspike);
    instance_create_depth(-40, 460, -100, obj_flowey_battle_phase_2_lowpoly_hspike);
}
else
{
    instance_create_depth(680, 300, -100, obj_flowey_battle_phase_2_lowpoly_hspike);
    instance_create_depth(640, 380, -100, obj_flowey_battle_phase_2_lowpoly_hspike);
    instance_create_depth(680, 460, -100, obj_flowey_battle_phase_2_lowpoly_hspike);
}

variation = irandom_range(-60, 60);
alarm[0] = attack_delay + variation;
