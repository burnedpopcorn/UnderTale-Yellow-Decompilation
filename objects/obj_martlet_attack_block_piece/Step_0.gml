if (live_call())
    return global.live_result;

dist++;
image_alpha -= 0.1;

if (image_alpha <= 0)
    instance_destroy();
