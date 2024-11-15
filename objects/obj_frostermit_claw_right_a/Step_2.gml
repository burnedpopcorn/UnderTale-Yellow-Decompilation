if (obj_frostermit_body_a.animating == true)
{
    x = obj_frostermit_body_a.claw_right_x;
    y = obj_frostermit_body_a.claw_right_y;
}
else
{
    x = starting_point_x;
    y = starting_point_y;
}

with (obj_frostermit_claw_right_shadow_a)
    event_user(0);
