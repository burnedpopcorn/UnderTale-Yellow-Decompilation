if (live_call())
    return global.live_result;

sin_deg += sin_inc;

if (sin_deg > 360)
    sin_deg -= 360;

y = ystart + (sin(degtorad(sin_deg)) * y_variation);

if (abs(x - 320) > 900)
    instance_destroy();

if (can_explode == true)
{
    if (!alarm[0])
        alarm[0] = 20;
    
    can_explode = false;
}
