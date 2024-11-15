if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
image_index = irandom_range(0, image_number - 1);
can_fall = false;
fall_speed = 12;
image_alpha = 0;
vspeed = 0;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
