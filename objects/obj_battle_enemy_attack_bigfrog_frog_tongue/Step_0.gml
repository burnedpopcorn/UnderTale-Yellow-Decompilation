if (live_call())
    return global.live_result;

grow_speed_current += (sign(grow_speed_target - grow_speed_current) * 1);
current_length += grow_speed_current;

if (current_length >= target_length && target_length != 0)
{
    target_length = 0;
    grow_speed_target *= -1;
}

if (current_length <= 1)
    spawner.image_speed = -1;

if (current_length <= 0)
{
    instance_destroy(tongue_tip);
    instance_destroy();
    exit;
}

image_xscale = current_length;
image_yscale = 1;
tongue_tip.x = x + lengthdir_x(image_xscale, direction);
tongue_tip.y = y + lengthdir_y(image_xscale, direction);
image_angle = direction;
tongue_tip.image_angle = image_angle;
