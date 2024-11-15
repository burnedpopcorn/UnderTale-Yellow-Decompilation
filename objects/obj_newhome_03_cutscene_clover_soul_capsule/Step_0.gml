if (live_call())
    return global.live_result;

if (fade_in == true && image_alpha < 1)
    image_alpha += 0.1;
else
    fade_in = false;

switch (scene)
{
    case 1:
        sin_deg += sin_deg_inc;
        
        if (sin_deg >= 360)
            sin_deg -= 360;
        
        y = ystart + (sin(degtorad(sin_deg)) * 2);
        break;
}

if (flash_alpha > 0.1)
    flash_alpha = lerp(flash_alpha, 0, 0.05);
else
    flash_alpha = 0;
