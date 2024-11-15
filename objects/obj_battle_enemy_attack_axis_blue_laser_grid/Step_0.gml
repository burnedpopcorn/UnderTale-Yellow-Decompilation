if (live_call())
    return global.live_result;

if (image_alpha < 0.99)
{
    image_alpha = lerp(image_alpha, 1, 0.25);
    exit;
}
else
{
    image_alpha = 1;
}

if (can_move)
{
    if (vspeed < speed_target)
        vspeed += 0.2;
    else
        vspeed = speed_target;
}
else if (vspeed > 0)
{
    vspeed -= 0.2;
}
else
{
    vspeed = 0;
}
