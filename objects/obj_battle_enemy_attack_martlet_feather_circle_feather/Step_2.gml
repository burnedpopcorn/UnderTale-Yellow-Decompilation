var hsc_x_temp, hsc_y_temp, hsc_max;

if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

if (state == 3 && obj_heart_battle_fighting_parent.vulnerable == true && !place_meeting(xprevious, yprevious, obj_heart_hitbox_parent))
{
    hsc_x_temp = x;
    hsc_y_temp = y;
    hsc_max = 4;
    
    for (i = 0; i < hsc_max; i++)
    {
        x -= lengthdir_x(attack_speed / hsc_max, image_angle);
        y -= lengthdir_y(attack_speed / hsc_max, image_angle);
        
        with (obj_heart_hitbox_parent)
            event_user(0);
    }
    
    x = hsc_x_temp;
    y = hsc_y_temp;
}
