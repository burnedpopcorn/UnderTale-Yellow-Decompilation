var target_width;

if (live_call())
    return global.live_result;

image_angle = round(direction);

if (laser_grow == true)
{
    target_width = 1.35;
    laser_width = lerp(laser_width, target_width, 0.5);
    
    if (abs(laser_width - target_width) < 0.1)
        laser_grow = false;
}
else if (laser_shrink == true)
{
    target_width = 0;
    laser_width = lerp(laser_width, target_width, 0.5);
    
    if (abs(laser_width - target_width) < 0.1)
        instance_destroy();
}
else
{
    sin_timer += 30;
    sin_timer_current = degtorad(sin_timer);
    target_width = 1 + (sin(sin_timer_current) * 0.2);
    laser_width = lerp(laser_width, target_width, 0.25);
}

if (impact_frame_current < (impact_frame_max + 1))
    impact_frame_current += impact_frame_speed;
else
    impact_frame_current = 0;
