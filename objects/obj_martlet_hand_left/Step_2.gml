if (!instance_exists(obj_martlet_body))
{
    instance_destroy();
    exit;
}

if (obj_martlet_body.animating == true)
{
    x = obj_martlet_body.x - 26;
    y = obj_martlet_body.hand_left_displacement_y;
}
else
{
    x = starting_point_x;
    y = starting_point_y;
}

sprite_index = hand_left_sprite;
image_speed = 0;
image_index = 0;

with (obj_martlet_hand_left_shadow)
    event_user(0);
