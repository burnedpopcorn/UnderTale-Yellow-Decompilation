if (live_call())
    return global.live_result;

x = obj_axis_body.x;
y = obj_axis_body.y;

with (obj_axis_body)
{
    if (death_sprite == true)
        instance_destroy(other);
    else if (sprite_index == spr_axis_body && floor(image_index) > 0)
        other.y = y - 2;
}

image_angle = obj_axis_body.image_angle;
