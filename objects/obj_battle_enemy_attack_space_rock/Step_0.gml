if (live_call())
    return global.live_result;

if (is_green)
{
    sin_value += 5;
    
    if (sin_value > 360)
        sin_value -= 360;
    
    color_value = sin(degtorad(sin_value)) * 255;
    image_blend = make_color_rgb(color_value, 255, color_value);
}
