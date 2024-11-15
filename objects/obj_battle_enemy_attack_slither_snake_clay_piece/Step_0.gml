if (live_call())
    return global.live_result;

if (fade_out)
{
    image_alpha -= 0.2;
    
    if (image_alpha <= 0.2)
        instance_destroy();
}
