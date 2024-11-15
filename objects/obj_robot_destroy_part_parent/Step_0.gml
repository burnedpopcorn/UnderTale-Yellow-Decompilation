if (live_call())
    return global.live_result;

image_angle += (sign(hspeed) * 15);

if (fade_out_timer > 0)
{
    fade_out_timer--;
}
else
{
    image_alpha -= 0.1;
    
    if (image_alpha <= 0)
        instance_destroy();
}
