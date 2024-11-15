if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("guardener", "void", "void");
image_alpha = 1;
image_speed = 0;
image_xscale = 1;
image_yscale = 1;
scene = 0;
cutscene_timer = 0;
turn_speed = 0;
turn_speed_max = 2;
shoot_point_next = 30;
shoot_point_inc = 30;
attack_interval = 4;
attack_count = 16;
launch_noloop = false;
