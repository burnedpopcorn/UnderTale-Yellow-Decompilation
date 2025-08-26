if (live_call())
    return global.live_result;

sin_deg += sin_deg_inc;

if (sin_deg >= 360)
    sin_deg -= 360;

var scale_diff = 0.1;
image_xscale = 1 + abs(sin(degtorad(sin_deg)) * scale_diff);
image_yscale = image_xscale;
sin_deg_inc = 7;
