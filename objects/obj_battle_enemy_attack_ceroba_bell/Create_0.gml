if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
image_alpha = 0;
hspeed = irandom_range(4, 6);
vspeed = -3;
gravity = 0.5;

if (x > 320)
{
    hspeed *= -1;
    image_xscale *= -1;
}

bounce_speed = 12;
bounce_noloop = 0;
image_angle_rot = 0;
image_angle_rot_max = 15;
