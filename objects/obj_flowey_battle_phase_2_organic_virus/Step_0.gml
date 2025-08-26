if (live_call())
    return global.live_result;

var launch_speed = 10;

switch (scene)
{
    case 0:
        if (image_xscale < 1.2)
        {
            image_xscale += 0.1;
            image_yscale = image_xscale;
        }
        else
        {
            scene++;
        }
        
        break;
    
    case 1:
        image_xscale = lerp(image_xscale, 1, 0.1);
        image_yscale = image_xscale;
        
        if (image_xscale <= 1.01)
        {
            image_xscale = 1;
            image_yscale = 1;
            scene++;
        }
        
        break;
    
    case 2:
        cutscene_wait(1);
        break;
    
    case 3:
        var soul = obj_heart_battle_fighting_parent;
        target_x = soul.x;
        target_y = soul.y;
        direction = point_direction(x, y, target_x, target_y);
        image_xscale = lerp(image_xscale, 1.25, 0.35);
        image_yscale = image_xscale;
        
        if (image_xscale > 1.24)
        {
            speed = launch_speed;
            scene++;
        }
        
        break;
    
    case 4:
        speed -= 0.25;
        image_xscale = lerp(image_xscale, 1, 0.5);
        image_yscale = image_xscale;
        
        if (speed <= 1)
            scene++;
        
        break;
    
    case 5:
        if (cutscene_wait(0.5))
            scene = 3;
        
        break;
}

image_angle += (1 * rot);
