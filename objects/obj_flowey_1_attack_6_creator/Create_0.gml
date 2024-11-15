if (live_call())
    return global.live_result;

alarm[0] = 300;
flowey_alpha_override = 1;
instance_create_depth(320, 140, -100, obj_flowey_1_attack_6_face);
flowey_ystart = obj_battle_flowey_body_1.y;
obj_battle_flowey_body_1.y = -1000;
