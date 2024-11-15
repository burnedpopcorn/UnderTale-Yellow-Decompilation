if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey2", "void", "void");
move_speed = 8;
image_xscale = 0.5;
image_yscale = 0.5;

if (x > 320)
{
    image_xscale *= -1;
    move_speed *= -1;
}

hspeed = move_speed;
