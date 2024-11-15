if (live_call())
    return global.live_result;

if (image_alpha < 1 && fade_in)
    image_alpha += 0.2;
else
    fade_in = false;
