if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("macro froggit", "void", "void");
var battle_box = obj_dialogue_box_battle_transformation_any;
var frog_car_speed = 4;

if (x < battle_box.x)
    hspeed = frog_car_speed;
else
    hspeed = -frog_car_speed;

image_xscale = sign(hspeed);
smoke_delay = 5;
alarm[0] = smoke_delay;
