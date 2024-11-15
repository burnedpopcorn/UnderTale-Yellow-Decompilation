if (live_call())
    return global.live_result;

if (rad_current < 360)
    rad_current += rad_inc;
else
    rad_current = 0;

y = 300 + (sin(rad_current) * move_range);
x = 400;
