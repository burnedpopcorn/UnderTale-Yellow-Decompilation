if (live_call())
    return global.live_result;

if (fade_timer > 0)
    fade_timer -= 1;
else if (image_alpha > 0)
    image_alpha -= 0.1;
else
    instance_destroy();
