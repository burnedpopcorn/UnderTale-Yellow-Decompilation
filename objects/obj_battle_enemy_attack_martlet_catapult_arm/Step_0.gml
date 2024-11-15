if (launch_state == 1)
{
    if (!instance_exists(id_payload))
        event_user(1);
    
    if (instance_exists(id_payload))
    {
        if (id_payload.image_alpha == 1 && alarm_active == false)
        {
            alarm_active = true;
            alarm[0] = 20;
        }
    }
}
else if (launch_state == 2)
{
    image_angle -= angle_pullback_speed;
    
    if (image_angle < 0)
        image_angle += 360;
    
    if (image_angle < max_angle_pullback && abs(max_angle_pullback - image_angle) < angle_pullback_speed)
        image_angle = max_angle_pullback;
    
    if (image_angle == max_angle_pullback && alarm_active == false)
    {
        alarm_active = true;
        alarm[0] = 20;
    }
}
else if (launch_state == 3)
{
    image_angle += angle_release_speed;
    
    if (image_angle > 360)
        image_angle -= 360;
    
    if (image_angle > max_angle_release && abs(max_angle_release - image_angle) < angle_release_speed)
        image_angle = max_angle_release;
    
    if (image_angle == max_angle_release && alarm_active == false)
    {
        with (id_payload)
            launched = true;
        
        alarm_active = true;
        alarm[0] = 20;
    }
}
else if (launch_state == 4)
{
    image_angle -= angle_pullback_speed;
    
    if (image_angle < 0)
        image_angle += 360;
    
    if (image_angle < 0 && abs(image_angle) < angle_pullback_speed)
        image_angle = 0;
    
    if (image_angle == 0)
        event_user(2);
}

with (id_payload)
    event_user(1);
