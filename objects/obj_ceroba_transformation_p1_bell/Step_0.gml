if (live_call())
    return global.live_result;

image_angle = sin(current_time / 300) * 30;

if (fade)
{
    if (image_alpha < 1)
        image_alpha += 0.1;
}
else if (image_alpha > 0)
{
    image_alpha -= 0.1;
}
