if (live_call())
    return global.live_result;

if (flowey_shake_intensity > 0)
{
    flowey_shake_intensity -= 0.2;
    x = starting_point_x + random_range(-flowey_shake_intensity, flowey_shake_intensity);
    y = starting_point_y + random_range(-flowey_shake_intensity, flowey_shake_intensity);
    flowey_shake_noloop = false;
}
else if (!flowey_shake_noloop)
{
    x = starting_point_x;
    y = starting_point_y;
    flowey_shake_noloop = true;
}
