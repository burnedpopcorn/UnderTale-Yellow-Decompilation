if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("flowey2", "void", "void");
can_explode = false;
sin_deg = 0;
sin_inc = 5;
y_variation = 50;

if (x > 320)
{
    image_xscale = -1;
    direction = 180;
    sin_deg = 180;
}

speed = 4;
hit_flash = false;
