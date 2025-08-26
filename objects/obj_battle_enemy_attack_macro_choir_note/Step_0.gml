if (live_call())
    return global.live_result;

var sin_speed = 5;
sin_deg += sin_speed;

if (sin_deg > 360)
    sin_deg -= 360;

x = xstart + (sin(degtorad(sin_deg)) * h_variation);
