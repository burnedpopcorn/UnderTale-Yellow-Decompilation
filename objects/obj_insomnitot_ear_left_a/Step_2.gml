if (obj_insomnitot_body_a.animating == true)
{
    x = obj_insomnitot_body_a.x + x_offset;
    y = obj_insomnitot_body_a.ears_displacement_y;
    image_angle = image_angle_max * (obj_insomnitot_body_a.animation_disjoint_yscale / obj_insomnitot_body_a.max_rise);
}
else
{
    x = starting_point_x;
    y = starting_point_y;
    image_angle = 0;
}

with (obj_insomnitot_ear_left_shadow_a)
    event_user(0);
