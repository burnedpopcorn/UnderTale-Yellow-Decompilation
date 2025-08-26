if (live_call())
    return global.live_result;

var saw1 = instance_create_depth(xx[0], yy[0], -100, obj_flowey_battle_phase_2_mechanical_saw);
var saw2 = instance_create_depth(xx[1], yy[1], -100, obj_flowey_battle_phase_2_mechanical_saw);
var saw3 = instance_create_depth(xx[0], yy[2], -100, obj_flowey_battle_phase_2_mechanical_saw);
saw1.hspeed = spd[0];
saw2.hspeed = spd[1];
saw3.hspeed = spd[0];
instance_destroy();
