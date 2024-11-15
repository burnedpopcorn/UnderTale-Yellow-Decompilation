if (live_call())
    return global.live_result;

if (!fade_out)
{
    if (image_alpha < 1)
        image_alpha += 0.1;
    else if (!alarm[0])
        alarm[0] = 5;
}
else if (image_alpha > 0)
{
    image_alpha -= 0.1;
}
else
{
    instance_destroy();
}

if ((vspeed > 0 && y > y_target) || (vspeed < 0 && y < y_target))
    fade_out = true;

image_xscale = lerp(image_xscale, 1, 0.15);
image_yscale = image_xscale;
