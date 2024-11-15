var lerp_speed, tar;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        image_alpha = lerp(image_alpha, 1.1, 0.25);
        
        if (image_alpha >= 1)
        {
            image_alpha = 1;
            scene++;
        }
        
        break;
    
    case 1:
        lerp_speed = 0.2;
        x = lerp(x, x_target, lerp_speed);
        y = lerp(y, y_target, lerp_speed);
        
        if (abs(x - x_target) <= 5 && abs((y - y_target) <= 5))
            scene++;
        
        break;
    
    case 2:
        if (target_count > 0)
        {
            if (target_timer > 0)
            {
                target_timer--;
            }
            else
            {
                tar = instance_create_depth(irandom_range(target_bounds_left, target_bounds_right), irandom_range(y - 40, y + 40), -110, target_object);
                tar.target_x = tar.x;
                tar.target_y = tar.y;
                target_timer = target_timer_max;
                target_count--;
            }
        }
        else
        {
            target_count = target_count_max;
            scene++;
        }
        
        break;
    
    case 3:
        if (!alarm[0])
            alarm[0] = 20;
        
        break;
}
