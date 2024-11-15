var box;

if (live_call())
    return global.live_result;

box = 3154;
damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");
scene = 0;
cutscene_timer = 0;
soul_switch_treshold = 3;
direction = point_direction(x, y, box.x, box.y);
speed = 1.5;
alarm[0] = 40;
image_speed = 0;
