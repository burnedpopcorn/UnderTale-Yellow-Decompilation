damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");

if (live_call())
    return global.live_result;

image_speed = 0;
image_index = irandom_range(0, image_number - 1);
rotation_angle = choose(-1, 1);
rotation_speed = irandom_range(3, 15);
vspeed = 5;
gravity = 0.2;
