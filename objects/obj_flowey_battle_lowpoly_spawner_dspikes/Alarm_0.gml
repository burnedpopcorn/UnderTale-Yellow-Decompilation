var yy, xx, variation;

if (live_call())
    return global.live_result;

yy = irandom_range(0, 140);
xx = choose(0, 640);
instance_create_depth(xx, yy, -100, obj_flowey_battle_phase_2_lowpoly_dspike);
variation = irandom_range(-60, 80);
alarm[0] = attack_delay + variation;
