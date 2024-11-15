if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("jandroid a", "void", "void");
image_speed = 0;
image_index = irandom_range(0, image_number - 1);
gravity = 0.25;
image_xscale = 0.5;
image_yscale = 0.5;
bounce_noloop = false;
vspeed_max = 4;
fade_out = false;
