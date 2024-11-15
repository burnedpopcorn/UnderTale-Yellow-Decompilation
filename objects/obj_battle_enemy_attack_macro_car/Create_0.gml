var battle_box, frog_car_speed;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("macro froggit", "void", "void");
battle_box = 3154;
frog_car_speed = 4;

if (x < battle_box.x)
    hspeed = frog_car_speed;
else
    hspeed = -frog_car_speed;

image_xscale = sign(hspeed);
smoke_delay = 5;
alarm[0] = smoke_delay;
