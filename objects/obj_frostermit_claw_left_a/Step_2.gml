if (obj_frostermit_body_a.animating == true)
{
    x = obj_frostermit_body_a.claw_left_x;
    y = obj_frostermit_body_a.claw_left_y;
}
else
{
    x = starting_point_x;
    y = starting_point_y;
}

with (obj_frostermit_claw_left_shadow_a)
    event_user(0);
