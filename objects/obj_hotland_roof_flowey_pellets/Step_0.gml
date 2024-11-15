if (live_call())
    return global.live_result;

if (image_alpha < 0.99)
{
    image_alpha = lerp(image_alpha, 1, 0.2);
    exit;
}
else
{
    image_alpha = 1;
}

switch (scene)
{
    case 1:
        speed = lerp(speed, -3, 0.25);
        
        if (speed < -2.9)
        {
            speed = -3;
            scene++;
        }
        
        break;
    
    case 2:
        speed = lerp(speed, 0, 0.25);
        
        if (speed > -0.1)
        {
            speed = 0;
            scene++;
        }
        
        break;
    
    case 3:
        break;
    
    case 4:
        speed = lerp(speed, 0.5, 0.01);
        
        if (speed > 0.74)
            speed = 0.75;
        
        break;
}

if (point_distance(x, y, obj_pl.x, obj_pl.y) < 10)
{
    with (obj_hotland_roof_flowey_pellets)
        instance_destroy();
}
