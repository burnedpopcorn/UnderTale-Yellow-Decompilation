if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");
speed = 2;
gravity = 0.25;
vsp_max = 5;
stage = 1;

if (y < 200)
{
    if (x < 320)
        direction = 270;
    else
        direction = 270;
}

image_angle = direction + 90;
