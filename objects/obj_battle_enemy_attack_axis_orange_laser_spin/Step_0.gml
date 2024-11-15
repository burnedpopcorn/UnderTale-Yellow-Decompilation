if (live_call())
    return global.live_result;

image_angle = direction;

if (image_alpha < 0.99)
{
    image_alpha = lerp(image_alpha, 1, 0.25);
    exit;
}
else
{
    image_alpha = 1;
}

dir_inc = clamp(dir_inc + 0.05, 0, 2);
direction += dir_inc;
