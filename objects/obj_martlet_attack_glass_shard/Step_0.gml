if (live_call())
    return global.live_result;

if (vspeed > 5)
    image_alpha -= 0.1;

if (image_alpha < 0)
    instance_destroy();
