if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("asgore", "void", "void");
image_alpha = 1;
fade_in = false;
scene = 0;
speed_max = 0;
accel_speed = 0.25;
speed_noloop = false;
speed_current = 5;
bullet_dist = 100;
