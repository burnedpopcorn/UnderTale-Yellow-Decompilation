if (live_call())
    return global.live_result;

if (image_alpha < 1 && fade_in)
    image_alpha += 0.2;
else
    fade_in = false;

if (can_move == true)
    speed = lerp(speed, speed_max, 0.15);
