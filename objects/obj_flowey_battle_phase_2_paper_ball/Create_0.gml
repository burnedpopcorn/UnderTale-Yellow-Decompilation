if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey2", "void", "void");
image_speed = 0;
image_index = irandom_range(0, 2);
vspeed = 10;
hspeed = irandom_range(-4, 4);
