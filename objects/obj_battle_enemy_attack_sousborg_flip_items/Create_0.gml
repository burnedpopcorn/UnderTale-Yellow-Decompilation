if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("sousborg", "void", "void");
image_speed = 0;
image_index = irandom_range(0, image_number - 1);
vspeed = -10;
gravity = 0.3;
vspeed_max = 10;
image_angle_inc = choose(-1, 1);
