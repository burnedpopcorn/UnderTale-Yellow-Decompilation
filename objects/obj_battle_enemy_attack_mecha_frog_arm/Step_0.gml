if (live_call())
    return global.live_result;

y_offset = 5;
sin_deg += 5.3;

if (sin_deg >= 360)
    sin_deg -= 1;

y = ystart + (sin(degtorad(sin_deg)) * y_offset);
