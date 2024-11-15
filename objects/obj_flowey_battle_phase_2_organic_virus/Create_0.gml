if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey2", "void", "void");
image_alpha = 1;
image_xscale = 0;
image_yscale = 0;
scene = 0;
cutscene_timer = 0;
target_x = x;
target_y = y;
target_distance = 0;
rot = choose(-1, 1);
