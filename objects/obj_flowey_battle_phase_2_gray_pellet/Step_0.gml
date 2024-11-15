if (live_call())
    return global.live_result;

if (fade_out == false)
{
    if (image_alpha < 1)
        image_alpha += 0.2;
}
else if (image_alpha > 0)
{
    image_alpha -= 0.1;
}
else
{
    instance_destroy();
}

image_angle = direction;

if (point_distance(x, y, 320, 240) > 900)
    instance_destroy();
