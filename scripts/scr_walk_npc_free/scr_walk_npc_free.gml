function scr_walk_npc_free(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    if (arg6 == "nothing")
        arg6 = -4;
    
    is_walking = true;
    walk_speed = arg2;
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
        
        walk_speed_x = sign(arg0 - x);
        walk_speed_y = sign(arg1 - y);
        
        if (walk_speed_x == 0)
            walk_speed_x = walk_speed;
        
        if (walk_speed_y == 0)
            walk_speed_y = walk_speed;
        
        no_loop_destination = true;
        lock_axis = false;
    }
    
    walk_speed_x = sign(walk_speed_x) * walk_speed;
    walk_speed_y = sign(walk_speed_y) * walk_speed;
    
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
        exit;
    }
    
    switch (walk_axis)
    {
        case "x":
            x_previous = x;
            x += walk_speed_x;
            
            if (abs(arg0 - x) < walk_speed && !place_meeting(arg0, y, arg6))
                x = arg0;
            
            if (!place_meeting(x, y, arg6) && x_previous != arg0)
            {
                npc_walking = true;
                image_speed = arg3;
                
                if (walk_speed_x == -walk_speed)
                    npc_direction = "left";
                else if (walk_speed_x == walk_speed)
                    npc_direction = "right";
            }
            
            if (!place_meeting(x, y + walk_speed_y, arg6) && lock_axis == true)
            {
                lock_axis = false;
                walk_axis = "y";
                exit;
            }
            
            if ((place_meeting(x, y, arg6) || x_previous == arg0) && lock_axis == false)
            {
                if (place_meeting(x, y, arg6))
                    lock_axis = true;
                
                x = x_previous;
                walk_axis = "y";
                exit;
            }
            
            walk_speed_y = sign(arg1 - y) * walk_speed;
            i = x + walk_speed_x;
            j = y;
            
            if (abs(arg0 - i) < walk_speed)
                i = arg0;
            
            while (j != arg1)
            {
                j += walk_speed_y;
                
                if (abs(arg1 - j) < walk_speed)
                    j = arg1;
                
                if (place_meeting(i, j, arg6))
                {
                    condition_1 = true;
                    break;
                }
            }
            
            if (condition_1 == true)
            {
                while (i != arg0)
                {
                    i += walk_speed_x;
                    j = y;
                    
                    if (abs(arg0 - i) < walk_speed)
                        i = arg0;
                    
                    while (j != arg1)
                    {
                        j += walk_speed_y;
                        
                        if (abs(arg1 - j) < walk_speed)
                            j = arg1;
                        
                        if (i == arg0 && j == arg1)
                            exit;
                        else if (place_meeting(i, j, arg6))
                            break;
                        else if (j == arg1)
                            exit;
                    }
                }
                
                if (!lock_axis)
                    walk_axis = "y";
                
                exit;
            }
            
            break;
        
        case "y":
            y_previous = y;
            y += walk_speed_y;
            
            if (abs(arg1 - y) < walk_speed && !place_meeting(x, arg1, arg6))
                y = arg1;
            
            if (!place_meeting(x, y, arg6) && y_previous != arg1)
            {
                npc_walking = true;
                image_speed = arg3;
                
                if (walk_speed_y == -walk_speed)
                    npc_direction = "up";
                else if (walk_speed_y == walk_speed)
                    npc_direction = "down";
            }
            
            if (!place_meeting(x + walk_speed_x, y, arg6) && lock_axis == true)
            {
                lock_axis = false;
                walk_axis = "x";
                exit;
            }
            
            var collider = instance_place(x, y, arg6);
            
            if ((collider != -4 || y_previous == arg1) && lock_axis == false)
            {
                if (collider != -4)
                {
                    lock_axis = true;
                    var walk_dir;
                    
                    if ((x - collider.bbox_left) > (collider.bbox_right - x))
                        walk_dir = 1;
                    else
                        walk_dir = -1;
                    
                    walk_speed_x = walk_speed * walk_dir;
                }
                
                y = y_previous;
                walk_axis = "x";
                exit;
            }
            
            walk_speed_x = sign(arg0 - x) * walk_speed;
            i = x;
            j = y + walk_speed_y;
            
            if (abs(arg1 - j) < walk_speed)
                j = arg1;
            
            while (i != arg0)
            {
                i += walk_speed_x;
                
                if (abs(arg0 - i) < walk_speed)
                    i = arg0;
                
                if (place_meeting(i, j, arg6))
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
                    j += walk_speed_y;
                    
                    if (abs(arg1 - j) < walk_speed)
                        j = arg1;
                    
                    while (i != arg0)
                    {
                        i += walk_speed_x;
                        
                        if (abs(arg0 - i) < walk_speed)
                            i = arg0;
                        
                        if (i == arg0 && j == arg1)
                            exit;
                        else if (place_meeting(i, j, arg6))
                            break;
                        else if (i == arg0)
                            exit;
                    }
                }
                
                if (!lock_axis)
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
