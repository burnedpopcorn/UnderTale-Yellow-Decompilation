if (live_call())
    return global.live_result;

image_angle += (angle_inc * 15);
image_alpha -= 0.1;

if (image_alpha <= 0)
    instance_destroy();
