if (obj_frostermit_body_a.animating == true)
{
    x = obj_frostermit_body_a.x;
    y = obj_frostermit_body_a.leg_3_displacement_y;
}
else
{
    x = starting_point_x;
    y = starting_point_y;
}

with (obj_frostermit_leg_right_3_shadow_a)
    event_user(0);
