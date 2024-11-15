if (live_call())
    return global.live_result;

sprite_index = spr_flowey_friendliness_pellets;
image_speed = 0;
image_index = 1;
damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");
speed = 3;
target = -4;
