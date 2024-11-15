if (live_call())
    return global.live_result;

event_inherited();
hurtbox = instance_create_depth(x, y, depth, obj_flowey_battle_phase_2_lowpoly_hurtbox);
hurtbox.spawner = id;
speed = 4;
hp_self = 1;
