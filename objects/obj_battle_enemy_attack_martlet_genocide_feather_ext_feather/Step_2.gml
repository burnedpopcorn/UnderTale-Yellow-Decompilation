if (obj_heart_battle_fighting_parent.vulnerable == true && !place_meeting(xprevious, yprevious, obj_heart_hitbox_parent))
{
    var hsc_x_temp = x;
    var hsc_y_temp = y;
    var hsc_max = 4;
    
    for (i = 0; i < hsc_max; i++)
    {
        x -= lengthdir_x(id_checker.feather_speed / hsc_max, image_angle);
        y -= lengthdir_y(id_checker.feather_speed / hsc_max, image_angle);
        
        with (obj_heart_hitbox_parent)
            event_user(0);
        
        if (obj_heart_battle_fighting_parent.vulnerable == false)
            break;
    }
    
    x = hsc_x_temp;
    y = hsc_y_temp;
}
