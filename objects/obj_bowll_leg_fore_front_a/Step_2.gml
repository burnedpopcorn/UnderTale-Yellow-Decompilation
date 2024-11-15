if (!instance_exists(obj_bowll_body_a))
{
    instance_destroy();
    exit;
}

if (obj_bowll_body_a.animating == true)
{
    x = starting_point_x;
    y = starting_point_y;
    image_angle = 0;
}
else
{
    x = starting_point_x;
    y = starting_point_y;
    image_angle = 0;
}

image_speed = 0;
image_index = 0;

with (obj_bowll_leg_fore_front_shadow_a)
    event_user(0);
