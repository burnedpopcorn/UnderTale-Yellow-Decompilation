if (live_call())
    return global.live_result;

image_xscale += 0.3;
image_yscale += 0.3;
image_alpha -= 0.15;

if (image_alpha <= 0)
    instance_destroy();
