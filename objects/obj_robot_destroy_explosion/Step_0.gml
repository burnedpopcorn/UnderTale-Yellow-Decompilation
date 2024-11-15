if (live_call())
    return global.live_result;

if (fade_out == true)
{
    image_alpha -= 0.1;
    
    if (image_alpha <= 0)
        instance_destroy();
}

image_xscale = 2 + (sin(current_time / 100) * 0.2);
image_yscale = image_xscale;
