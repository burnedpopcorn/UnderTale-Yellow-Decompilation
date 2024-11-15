if (live_call())
    return global.live_result;

image_alpha = 0;
image_angle += 90;
image_xscale = 2;
image_yscale = 2;
y_target = 240 + (240 - y);
bullet_number = 10;
route_distance = abs(y_target - ystart);
spawn_point_inc = route_distance / bullet_number;
current_spawn_point = spawn_point_inc;

if (y > 320)
{
    vspeed = -7;
}
else
{
    image_xscale *= -1;
    vspeed = 7;
}

if (x < 320)
    image_yscale *= -1;
