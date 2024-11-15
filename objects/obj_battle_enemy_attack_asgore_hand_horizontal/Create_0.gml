if (live_call())
    return global.live_result;

image_alpha = 0;
image_xscale = 2;
image_yscale = 2;
x_target = 320 + (320 - x);
bullet_number = 10;
route_distance = abs(x_target - xstart);
spawn_point_inc = route_distance / bullet_number;
current_spawn_point = 0;

if (x > 240)
{
    hspeed = -7;
    image_xscale *= -1;
}
else
{
    hspeed = 7;
}

if (y < 240)
    image_yscale *= -1;
