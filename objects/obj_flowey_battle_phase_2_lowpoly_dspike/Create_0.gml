if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey2", "void", "void");
move_speed = 6;
direction = 315;

if (x > 320)
    direction = 225;

image_angle = direction;
speed = move_speed;
