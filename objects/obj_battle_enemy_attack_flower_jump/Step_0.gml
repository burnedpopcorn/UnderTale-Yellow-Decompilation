if (live_call())
    return global.live_result;

image_angle += 20;

if (abs(vspeed) < 4)
    image_speed = 1;

if (image_index >= (image_number - 1))
    instance_destroy();
