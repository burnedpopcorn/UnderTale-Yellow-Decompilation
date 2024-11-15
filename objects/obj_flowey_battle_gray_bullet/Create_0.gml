if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey2", "void", "void");
speed = 20;
instance_create_depth(x, y, depth + 1, obj_flowey_battle_gray_cross_gun_smoke);
