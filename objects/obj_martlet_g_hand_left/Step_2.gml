if (!instance_exists(obj_martlet_g_body))
{
    instance_destroy();
    exit;
}

if (obj_martlet_g_body.animating == true)
{
    if (obj_martlet_g_body.fight_mode == false)
        x = obj_martlet_g_body.x - 26;
    else
        x = obj_martlet_g_body.x - 36;
    
    y = obj_martlet_g_body.hand_left_displacement_y;
    
    if (obj_martlet_g_body.fight_mode == true)
        image_angle = -fight_mode_angle_max * ((obj_martlet_g_body.image_yscale - 1) / obj_martlet_g_body.max_rise_g);
}
else
{
    x = starting_point_x;
    y = starting_point_y;
    image_angle = 0;
}

sprite_index = hand_left_sprite;
image_speed = 0;
image_index = 0;

with (obj_martlet_g_hand_left_shadow)
    event_user(0);
