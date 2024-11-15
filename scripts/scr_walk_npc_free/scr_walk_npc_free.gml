function scr_walk_npc_free(argument0, argument1, argument2, argument3, argument4, argument5, argument6)
{
    var destination_x, destination_y, axis_override, result, collider, walk_dir;
    
    if (argument6 == "nothing")
        argument6 = -4;
    
    is_walking = true;
    walk_speed = argument2;
    condition_1 = false;
    
    if (no_loop_destination == false)
    {
        destination_x = abs(x - argument0);
        destination_y = abs(y - argument1);
        axis_override = argument4;
        
        if (axis_override == "x" || axis_override == "y")
        {
            walk_axis = axis_override;
        }
        else
        {
            result = sign(destination_x - destination_y);
            
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
        
        walk_speed_x = sign(argument0 - x);
        walk_speed_y = sign(argument1 - y);
        
        if (walk_speed_x == 0)
            walk_speed_x = walk_speed;
        
        if (walk_speed_y == 0)
            walk_speed_y = walk_speed;
        
        no_loop_destination = true;
        lock_axis = false;
    }
    
    walk_speed_x = sign(walk_speed_x) * walk_speed;
    walk_speed_y = sign(walk_speed_y) * walk_speed;
    
    if (x == argument0 && y == argument1)
    {
        no_loop_destination = false;
        npc_walking = false;
        is_walking = false;
        
        if (argument5 != "nothing")
            npc_direction = argument5;
        
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
            
            if (abs(argument0 - x) < walk_speed && !place_meeting(argument0, y, argument6))
                x = argument0;
            
            if (!place_meeting(x, y, argument6) && x_previous != argument0)
            {
                npc_walking = true;
                image_speed = argument3;
                
                if (walk_speed_x == -walk_speed)
                    npc_direction = "left";
                else if (walk_speed_x == walk_speed)
                    npc_direction = "right";
            }
            
            if (!place_meeting(x, y + walk_speed_y, argument6) && lock_axis == true)
            {
                lock_axis = false;
                walk_axis = "y";
                exit;
            }
            
            if ((place_meeting(x, y, argument6) || x_previous == argument0) && lock_axis == false)
            {
                if (place_meeting(x, y, argument6))
                    lock_axis = true;
                
                x = x_previous;
                walk_axis = "y";
                exit;
            }
            
            walk_speed_y = sign(argument1 - y) * walk_speed;
            i = x + walk_speed_x;
            j = y;
            
            if (abs(argument0 - i) < walk_speed)
                i = argument0;
            
            while (j != argument1)
            {
                j += walk_speed_y;
                
                if (abs(argument1 - j) < walk_speed)
                    j = argument1;
                
                if (place_meeting(i, j, argument6))
                {
                    condition_1 = true;
                    break;
                }
            }
            
            if (condition_1 == true)
            {
                while (i != argument0)
                {
                    i += walk_speed_x;
                    j = y;
                    
                    if (abs(argument0 - i) < walk_speed)
                        i = argument0;
                    
                    while (j != argument1)
                    {
                        j += walk_speed_y;
                        
                        if (abs(argument1 - j) < walk_speed)
                            j = argument1;
                        
                        if (i == argument0 && j == argument1)
                            exit;
                        else if (place_meeting(i, j, argument6))
                            break;
                        else if (j == argument1)
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
            
            if (abs(argument1 - y) < walk_speed && !place_meeting(x, argument1, argument6))
                y = argument1;
            
            if (!place_meeting(x, y, argument6) && y_previous != argument1)
            {
                npc_walking = true;
                image_speed = argument3;
                
                if (walk_speed_y == -walk_speed)
                    npc_direction = "up";
                else if (walk_speed_y == walk_speed)
                    npc_direction = "down";
            }
            
            if (!place_meeting(x + walk_speed_x, y, argument6) && lock_axis == true)
            {
                lock_axis = false;
                walk_axis = "x";
                exit;
            }
            
            collider = instance_place(x, y, argument6);
            
            if ((collider != -4 || y_previous == argument1) && lock_axis == false)
            {
                if (collider != -4)
                {
                    lock_axis = true;
                    
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
            
            walk_speed_x = sign(argument0 - x) * walk_speed;
            i = x;
            j = y + walk_speed_y;
            
            if (abs(argument1 - j) < walk_speed)
                j = argument1;
            
            while (i != argument0)
            {
                i += walk_speed_x;
                
                if (abs(argument0 - i) < walk_speed)
                    i = argument0;
                
                if (place_meeting(i, j, argument6))
                {
                    condition_1 = true;
                    break;
                }
            }
            
            if (condition_1 == true)
            {
                while (j != argument1)
                {
                    i = x;
                    j += walk_speed_y;
                    
                    if (abs(argument1 - j) < walk_speed)
                        j = argument1;
                    
                    while (i != argument0)
                    {
                        i += walk_speed_x;
                        
                        if (abs(argument0 - i) < walk_speed)
                            i = argument0;
                        
                        if (i == argument0 && j == argument1)
                            exit;
                        else if (place_meeting(i, j, argument6))
                            break;
                        else if (i == argument0)
                            exit;
                    }
                }
                
                if (!lock_axis)
                    walk_axis = "x";
                
                exit;
            }
            
            break;
    }
    
    if (x == argument0 && y == argument1)
    {
        no_loop_destination = false;
        npc_walking = false;
        is_walking = false;
        
        if (argument5 != "nothing")
            npc_direction = argument5;
        
        image_speed = 0;
        image_index = 0;
        return true;
    }
}
