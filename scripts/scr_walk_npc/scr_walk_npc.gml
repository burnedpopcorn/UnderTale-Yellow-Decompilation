function scr_walk_npc(argument0, argument1, argument2, argument3, argument4, argument5, argument6)
{
    var destination_x, destination_y, axis_override, result;
    
    is_walking = true;
    actor_speed = argument2;
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
        
        actor_speed_x = sign(argument0 - x) * actor_speed;
        actor_speed_y = sign(argument1 - y) * actor_speed;
        no_loop_destination = true;
    }
    
    if (x == argument0 && y == argument1)
    {
        no_loop_destination = false;
        npc_walking = false;
        
        if (argument5 != "nothing")
            npc_direction = argument5;
        
        image_speed = 0;
        image_index = 0;
        exit;
    }
    
    switch (walk_axis)
    {
        case "x":
            x_previous = x;
            x += actor_speed_x;
            
            if (abs(argument0 - x) < actor_speed && place_free(argument0, y) && !place_meeting(argument0, y, argument6))
                x = argument0;
            
            if (place_free(x, y) && !place_meeting(x, y, argument6) && x_previous != argument0)
            {
                npc_walking = true;
                image_speed = argument3;
                
                if (actor_speed_x == -actor_speed)
                    npc_direction = "left";
                else if (actor_speed_x == actor_speed)
                    npc_direction = "right";
            }
            
            if (!place_free(x, y) || place_meeting(x, y, argument6) || x_previous == argument0)
            {
                x = x_previous;
                walk_axis = "y";
                exit;
            }
            
            actor_speed_y = sign(argument1 - y) * actor_speed;
            i = x + actor_speed_x;
            j = y;
            
            if (abs(argument0 - i) < actor_speed)
                i = argument0;
            
            while (j != argument1)
            {
                j += actor_speed_y;
                
                if (abs(argument1 - j) < actor_speed)
                    j = argument1;
                
                if (!place_free(i, j) || place_meeting(i, j, argument6))
                {
                    condition_1 = true;
                    break;
                }
            }
            
            if (condition_1 == true)
            {
                while (i != argument0)
                {
                    i += actor_speed_x;
                    j = y;
                    
                    if (abs(argument0 - i) < actor_speed)
                        i = argument0;
                    
                    while (j != argument1)
                    {
                        j += actor_speed_y;
                        
                        if (abs(argument1 - j) < actor_speed)
                            j = argument1;
                        
                        if (i == argument0 && j == argument1)
                            exit;
                        else if (!place_free(i, j) || place_meeting(i, j, argument6))
                            break;
                        else if (j == argument1)
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
            
            if (abs(argument1 - y) < actor_speed && place_free(x, argument1) && !place_meeting(x, argument1, argument6))
                y = argument1;
            
            if (place_free(x, y) && !place_meeting(x, y, argument6) && y_previous != argument1)
            {
                npc_walking = true;
                image_speed = argument3;
                
                if (actor_speed_y == -actor_speed)
                    npc_direction = "up";
                else if (actor_speed_y == actor_speed)
                    npc_direction = "down";
            }
            
            if (!place_free(x, y) || place_meeting(x, y, argument6) || y_previous == argument1)
            {
                y = y_previous;
                walk_axis = "x";
                exit;
            }
            
            actor_speed_x = sign(argument0 - x) * actor_speed;
            i = x;
            j = y + actor_speed_y;
            
            if (abs(argument1 - j) < actor_speed)
                j = argument1;
            
            while (i != argument0)
            {
                i += actor_speed_x;
                
                if (abs(argument0 - i) < actor_speed)
                    i = argument0;
                
                if (!place_free(i, j) || place_meeting(i, j, argument6))
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
                    j += actor_speed_y;
                    
                    if (abs(argument1 - j) < actor_speed)
                        j = argument1;
                    
                    while (i != argument0)
                    {
                        i += actor_speed_x;
                        
                        if (abs(argument0 - i) < actor_speed)
                            i = argument0;
                        
                        if (i == argument0 && j == argument1)
                            exit;
                        else if (!place_free(i, j) || place_meeting(i, j, argument6))
                            break;
                        else if (i == argument0)
                            exit;
                    }
                }
                
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
