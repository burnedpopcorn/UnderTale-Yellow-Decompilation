if (live_call())
    return global.live_result;

sin_deg += sin_inc;

if (sin_deg > 360)
    sin_deg -= 360;

direction = dir_start + (sin(degtorad(sin_deg)) * dir_variation);
image_angle = direction;
