var dir_inc;

if (live_call())
    return global.live_result;

dir_inc = 1;

if (instance_exists(target) && target != -4)
    direction -= (0.1 * angle_difference(direction, point_direction(x, y, target.x, target.y)));

image_angle = direction;
