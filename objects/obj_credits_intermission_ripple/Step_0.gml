if (live_call())
    return global.live_result;

if (image_index >= 1)
    image_speed = 0;

if (y < 0)
    instance_destroy();
