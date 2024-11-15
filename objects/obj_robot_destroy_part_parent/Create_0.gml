if (live_call())
    return global.live_result;

vspeed = random_range(-5, -10);
hspeed = irandom_range(3, 5);

if (x < 320)
    hspeed *= -1;

gravity = 0.5;
fade_out_timer = 30;
