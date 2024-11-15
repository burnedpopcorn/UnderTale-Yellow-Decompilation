if (live_call())
    return global.live_result;

image_alpha = image_alpha_val * box.sc_dcurrent;

if (y > 700)
    instance_destroy();
