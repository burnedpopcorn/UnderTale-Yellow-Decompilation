if (live_call())
    return global.live_result;

if (spawner != -4 && instance_exists(spawner))
{
    x = spawner.x + lengthdir_x(120, orbit_direction);
    y = spawner.y + lengthdir_y(120, orbit_direction);
    orbit_direction += orbit_speed;
    
    if (orbit_direction > 360)
        orbit_direction -= 360;
}
else
{
    image_alpha -= 0.3;
    
    if (image_alpha <= 0)
        instance_destroy();
}
