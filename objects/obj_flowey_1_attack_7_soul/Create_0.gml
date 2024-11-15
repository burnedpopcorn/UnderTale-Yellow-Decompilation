if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");
scene = 0;
cutscene_timer = 0;
target_y = y;
target_x = x;
current_speed = 0;
max_speed = 4;
image_speed = 0;
image_alpha = 0;
