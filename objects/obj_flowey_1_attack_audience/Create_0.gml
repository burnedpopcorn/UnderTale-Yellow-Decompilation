if (live_call())
    return global.live_result;

image_alpha = 0;
active = false;
fadeout = false;
throw_delay_max = 10;
throw_delay = throw_delay_max;
throw_dir = irandom_range(135, 405);
spawn_dist = 160;
