var dirnew;

if (image_alpha < 0.99)
{
    image_alpha = lerp(image_alpha, 1, 0.15);
    exit;
}
else
{
    image_alpha = 1;
}

if (attack_stage == 1)
{
    gravity = 0.5;
    
    if (vspeed > 10)
        vspeed = 10;
    
    if (y >= target_y)
    {
        y = target_y;
        gravity = 0;
        vspeed = 0;
        screenshake = true;
        attack_stage += 1;
        audio_play_sound(snd_metallic_impact, 1, 0);
    }
}

if (attack_stage == 2)
{
    if (!alarm[0])
        alarm[0] = 40;
}

if (attack_stage == 3)
{
    swing_speed += 0.1;
    
    if (swing_speed > swing_speed_max)
        swing_speed = swing_speed_max;
    
    dirnew = direction + swing_speed;
    
    if (dirnew >= 360)
        swing_speed_max += 1;
    
    direction = dirnew;
    image_angle = direction;
}

if (screenshake == true)
{
    __view_set(e__VW.XView, 0, 0);
    __view_set(e__VW.YView, 0, 0);
    __view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + choose(-screenshake_max, screenshake_max));
    __view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + choose(-screenshake_max, screenshake_max));
    screenshake_max -= 0.5;
}

if (screenshake_max <= 0 && image_index >= (image_number - 1))
{
    __view_set(e__VW.XView, 0, 0);
    __view_set(e__VW.YView, 0, 0);
}
