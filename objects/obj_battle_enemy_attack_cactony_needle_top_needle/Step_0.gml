if (launched == false)
{
    x += lengthdir_x(prep_speed, image_angle);
    y += lengthdir_y(prep_speed, image_angle);
}
else
{
    if (move == true)
    {
        for (i = 0; i < attack_mult; i++)
        {
            x += lengthdir_x(attack_speed, image_angle);
            y += lengthdir_y(attack_speed, image_angle);
            
            if (place_meeting(x, y, obj_attack_boundary_box))
            {
                move = false;
                alarm[0] = fade_alarm;
                break;
            }
        }
    }
    
    if (fade == true)
    {
        if (image_alpha > 0)
        {
            image_alpha -= 0.1;
            
            if (image_alpha <= 0)
                instance_destroy();
        }
    }
}
