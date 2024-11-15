if (live_call())
    return global.live_result;

image_alpha -= 0.2;

if (image_alpha < 0)
    instance_destroy();
