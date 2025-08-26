function scr_walk_npc_solid(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    is_walking = true;
    actor_speed = arg2;
    condition_1 = false;
    
    if (no_loop_destination == false)
    {
        var destination_x = abs(x - arg0);
        var destination_y = abs(y - arg1);
        var axis_override = arg4;
        
        if (axis_override == "x" || axis_override == "y")
        {
            walk_axis = axis_override;
        }
        else
        {
            var result = sign(destination_x - destination_y);
            
            switch (result)
            {
                case 1:
                    walk_axis = "x";
                    break;
                
                case -1:
                    walk_axis = "y";
                    break;
                
                default:
                    walk_axis = "y";
            }
        }
        
        actor_speed_x = sign(arg0 - x) * actor_speed;
        actor_speed_y = sign(arg1 - y) * actor_speed;
        no_loop_destination = true;
    }
    
    if (x == arg0 && y == arg1)
    {
        no_loop_destination = false;
        npc_walking = false;
        
        if (arg5 != "nothing")
            npc_direction = arg5;
        
        image_speed = 0;
        image_index = 0;
        exit;
    }
    
    switch (walk_axis)
    {
        case "x":
            x_previous = x;
            x += actor_speed_x;
            
            if (abs(arg0 - x) < actor_speed && place_free(arg0, y) && !place_meeting(arg0, y, arg6))
                x = arg0;
            
            if (place_free(x, y) && !place_meeting(x, y, arg6) && x_previous != arg0)
            {
                npc_walking = true;
                image_speed = arg3;
                
                if (actor_speed_x == -actor_speed)
                    npc_direction = "left";
                else if (actor_speed_x == actor_speed)
                    npc_direction = "right";
            }
            
            if (!place_free(x, y) || place_meeting(x, y, arg6) || x_previous == arg0)
            {
                x = x_previous;
                walk_axis = "y";
                exit;
            }
            
            actor_speed_y = sign(arg1 - y) * actor_speed;
            i = x + actor_speed_x;
            j = y;
            
            if (abs(arg0 - i) < actor_speed)
                i = arg0;
            
            while (j != arg1)
            {
                j += actor_speed_y;
                
                if (abs(arg1 - j) < actor_speed)
                    j = arg1;
                
                if (!place_free(i, j) || place_meeting(i, j, arg6))
                {
                    condition_1 = true;
                    break;
                }
            }
            
            if (condition_1 == true)
            {
                while (i != arg0)
                {
                    i += actor_speed_x;
                    j = y;
                    
                    if (abs(arg0 - i) < actor_speed)
                        i = arg0;
                    
                    while (j != arg1)
                    {
                        j += actor_speed_y;
                        
                        if (abs(arg1 - j) < actor_speed)
                            j = arg1;
                        
                        if (i == arg0 && j == arg1)
                            exit;
                        else if (!place_free(i, j) || place_meeting(i, j, arg6))
                            break;
                        else if (j == arg1)
                            exit;
                    }
                }
                
                walk_axis = "y";
                exit;
            }
            
            break;
        
        case "y":
            y_previous = y;
            y += actor_speed_y;
            
            if (abs(arg1 - y) < actor_speed && place_free(x, arg1) && !place_meeting(x, arg1, arg6))
                y = arg1;
            
            if (place_free(x, y) && !place_meeting(x, y, arg6) && y_previous != arg1)
            {
                npc_walking = true;
                image_speed = arg3;
                
                if (actor_speed_y == -actor_speed)
                    npc_direction = "up";
                else if (actor_speed_y == actor_speed)
                    npc_direction = "down";
            }
            
            if (!place_free(x, y) || place_meeting(x, y, arg6) || y_previous == arg1)
            {
                y = y_previous;
                walk_axis = "x";
                exit;
            }
            
            actor_speed_x = sign(arg0 - x) * actor_speed;
            i = x;
            j = y + actor_speed_y;
            
            if (abs(arg1 - j) < actor_speed)
                j = arg1;
            
            while (i != arg0)
            {
                i += actor_speed_x;
                
                if (abs(arg0 - i) < actor_speed)
                    i = arg0;
                
                if (!place_free(i, j) || place_meeting(i, j, arg6))
                {
                    condition_1 = true;
                    break;
                }
            }
            
            if (condition_1 == true)
            {
                while (j != arg1)
                {
                    i = x;
                    j += actor_speed_y;
                    
                    if (abs(arg1 - j) < actor_speed)
                        j = arg1;
                    
                    while (i != arg0)
                    {
                        i += actor_speed_x;
                        
                        if (abs(arg0 - i) < actor_speed)
                            i = arg0;
                        
                        if (i == arg0 && j == arg1)
                            exit;
                        else if (!place_free(i, j) || place_meeting(i, j, arg6))
                            break;
                        else if (i == arg0)
                            exit;
                    }
                }
                
                walk_axis = "x";
                exit;
            }
            
            break;
    }
    
    if (x == arg0 && y == arg1)
    {
        no_loop_destination = false;
        npc_walking = false;
        is_walking = false;
        
        if (arg5 != "nothing")
            npc_direction = arg5;
        
        image_speed = 0;
        image_index = 0;
        return true;
    }
}
