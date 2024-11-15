if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey2", "void", "void");
scene = 0;
move_speed = 4;
image_xscale = 0.5;
image_yscale = 0.5;

if (x < 320)
    hspeed = move_speed;
else
    hspeed = -move_speed;

sin_deg = 0;
sin_inc = 3;
y_variation = 30;

if (y < 240)
    y_variation = -30;
