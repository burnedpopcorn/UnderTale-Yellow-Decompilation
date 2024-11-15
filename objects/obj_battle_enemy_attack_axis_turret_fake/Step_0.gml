if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        image_alpha += 0.2;
        image_angle = (direction - 180) + (180 * image_alpha);
        
        if (image_alpha >= 1)
            scene++;
        
        break;
    
    case 1:
        if (destroy_self == true)
        {
            gravity = 0.25;
            vspeed -= 7;
            image_angle_speed = choose(-15, 15);
            scene++;
        }
        
        break;
    
    case 2:
        image_angle += image_angle_speed;
        image_alpha -= 0.2;
        
        if (image_alpha <= 0)
            instance_destroy();
        
        break;
}

speed = lerp(speed, 0, 0.2);
