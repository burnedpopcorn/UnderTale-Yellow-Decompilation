if (live_call())
    return global.live_result;

event_inherited();

if (hp_self <= 0)
{
    image_alpha -= 0.1;
    
    if (image_alpha <= 0)
        instance_destroy();
}

if (point_distance(x, y, 320, 240) > 900)
    instance_destroy();
