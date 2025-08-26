if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        var x_target = x_previous + lengthdir_x(30, direction);
        var y_target = y_previous + lengthdir_y(30, direction);
        
        if (distance_to_point(x_target, y_target) > 0.1)
        {
            x = lerp(x, x_target, 0.1);
            y = lerp(y, y_target, 0.1);
            peek_distance -= 1;
        }
        else
        {
            x_previous = x;
            y_previous = y;
            peek_distance = 5;
            scene++;
        }
        
        break;
    
    case 1:
        cutscene_wait(0.25);
        break;
    
    case 2:
        var x_target = x_previous - lengthdir_x(sign(flying_speed) * 20, direction);
        var y_target = y_previous - lengthdir_y(sign(flying_speed) * 20, direction);
        
        if (distance_to_point(x_target, y_target) > 0.1)
        {
            x = lerp(x, x_target, 0.1);
            y = lerp(y, y_target, 0.1);
            peek_distance -= 1;
        }
        else
        {
            scene++;
        }
        
        break;
    
    case 3:
        x += lengthdir_x(flying_speed, direction);
        y += (lengthdir_y(flying_speed, direction) + grav_speed);
        
        if (flying_speed > 0)
            flying_speed -= 0.1;
        else
            flying_speed = 0;
        
        break;
}
