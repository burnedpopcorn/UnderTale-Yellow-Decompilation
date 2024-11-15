if (live_call())
    return global.live_result;

image_speed = 0;
image_index = irandom_range(0, image_number - 1);
vspeed = -6;
gravity = 0.5;
hspeed = irandom_range(-2, 2);
