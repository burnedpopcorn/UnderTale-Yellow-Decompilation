if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
fade_out = false;
image_speed = 0;
image_angle = irandom_range(0, 360);
image_index = irandom_range(0, image_number - 1);
gravity = 0.5;
speed = 6;
alarm[0] = 40;
