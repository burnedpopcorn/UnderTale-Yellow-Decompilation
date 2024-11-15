if (live_call())
    return global.live_result;

image_alpha = 0;
image_speed = 0;
image_xscale = 1;
image_yscale = 1;

if (x < 320)
    x_diff = -40;
else
    x_diff = 40;
