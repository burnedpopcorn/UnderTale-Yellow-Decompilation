if (!instance_exists(obj_cactony_body_a))
{
    instance_destroy();
    exit;
}

if (obj_cactony_body_a.animating == true)
{
    x = obj_cactony_body_a.bbox_right - disjoint_x;
    y = obj_cactony_body_a.bbox_top + disjoint_y;
    image_angle = angle_max * ((obj_cactony_body_a.image_yscale - 1) / obj_cactony_body_a.max_rise);
}
else
{
    x = starting_point_x;
    y = starting_point_y;
    image_angle = 0;
}

image_speed = 0;
image_index = 0;

with (obj_cactony_arm_right_shadow_a)
    event_user(0);
