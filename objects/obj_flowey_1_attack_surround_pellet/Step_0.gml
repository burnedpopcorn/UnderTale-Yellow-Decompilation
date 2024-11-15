if (live_call())
    return global.live_result;

if (distance_to_point(xstart, ystart) > 60)
{
    image_alpha -= 0.2;
    
    if (image_alpha <= 0)
        instance_destroy();
}
else if (fade_in == true)
{
    image_alpha += 0.2;
    
    if (image_alpha >= 1)
    {
        fade_in = false;
        image_alpha = 1;
    }
}

switch (scene)
{
    case 0:
        break;
    
    case 1:
        if (speed_current < speed_max)
            speed_current += accel_speed;
        
        bullet_dist -= speed_current;
        break;
}

x = xstart + lengthdir_x(bullet_dist, direction);
y = ystart + lengthdir_y(bullet_dist, direction);
