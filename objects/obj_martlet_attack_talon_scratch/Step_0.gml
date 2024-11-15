if (live_call())
    return global.live_result;

if (fade_out == true)
{
    image_alpha -= 0.15;
    
    if (image_alpha <= 0)
        instance_destroy();
}
