if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("guardener", "void", "void");
gravity = 0.5;
vspeed_max = 8;
image_speed = 0;
image_index = irandom_range(0, image_number - 1);
