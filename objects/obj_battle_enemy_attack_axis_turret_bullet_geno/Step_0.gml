if (live_call())
    return global.live_result;

fade_out_timer -= 1;

if (fade_out_timer <= 0)
{
    image_alpha -= 0.2;
    
    if (image_alpha <= 0)
        instance_destroy();
}
