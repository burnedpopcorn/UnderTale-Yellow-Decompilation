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
    if (hspeed < speed_target)
        hspeed += 0.2;
    else
        hspeed = speed_target;
}
else if (hspeed > 0)
{
    hspeed -= 0.2;
}
else
{
    hspeed = 0;
}
