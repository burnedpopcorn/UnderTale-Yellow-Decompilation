if (live_call())
    return global.live_result;

image_angle += (5 * rotation_angle);

if (fade_out == true)
{
    image_alpha -= 0.05;
    
    if (image_alpha <= 0)
        instance_destroy();
}
