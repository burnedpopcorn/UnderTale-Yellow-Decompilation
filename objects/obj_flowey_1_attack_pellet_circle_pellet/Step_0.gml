if (live_call())
    return global.live_result;

distance_speed_current += 0.05;
distance_current += distance_speed_current;
x = xstart + lengthdir_x(distance_current, direction);
y = ystart + lengthdir_y(distance_current, direction);

if (distance_to_point(xstart, ystart) > 220)
{
    image_alpha -= 0.2;
    
    if (image_alpha <= 0)
        instance_destroy();
}
