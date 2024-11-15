if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey2", "void", "void");
image_index = irandom_range(0, 2);
direction = irandom_range(30, 75);

if (x > 320)
    direction = irandom_range(105, 150);

image_speed = 0;
speed = 12;
gravity = 0.3;
