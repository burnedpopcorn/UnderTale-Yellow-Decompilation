function scr_walk_ai(arg0, arg1, arg2, arg3, arg4)
{
    dalv_walk_speed = arg3;
    condition_1 = false;
    
    if (no_loop_destination_dalv == false)
    {
        var destination_x = abs(x - arg0);
        var destination_y = abs(y - arg1);
        var axis_override = arg4;
        
        if (axis_override == "x" || axis_override == "y")
        {
            dalv_walk_axis = axis_override;
        }
        else
        {
            var result = sign(destination_x - destination_y);
            
            switch (result)
            {
                case 1:
                    dalv_walk_axis = "x";
                    break;
                
                case -1:
                    dalv_walk_axis = "y";
                    break;
                
                default:
                    dalv_walk_axis = "y";
            }
        }
        
        dalv_walk_speed_x = sign(arg0 - x) * dalv_walk_speed;
        dalv_walk_speed_y = sign(arg1 - y) * dalv_walk_speed;
        no_loop_destination_dalv = true;
    }
    
    if (x == arg0 && y == arg1)
    {
        npc_walking = false;
        path_speed = 0;
        image_speed = 0;
        image_index = 0;
        exit;
    }
    
    switch (dalv_walk_axis)
    {
        case "x":
            x_previous = x;
            x += dalv_walk_speed_x;
            
            if (abs(arg0 - x) < dalv_walk_speed && place_free(arg0, y) && !place_meeting(arg0, y, arg2))
                x = arg0;
            
            if (place_free(x, y) && !place_meeting(x, y, arg2) && x_previous != arg0)
            {
                npc_walking = true;
                image_speed = 0.2;
                
                if (dalv_walk_speed_x == -dalv_walk_speed)
                    direction = 180;
                else if (dalv_walk_speed_x == dalv_walk_speed)
                    direction = 0;
            }
            
            if (!place_free(x, y) || place_meeting(x, y, arg2) || x_previous == arg0)
            {
                x = x_previous;
                dalv_walk_axis = "y";
                exit;
            }
            
            dalv_walk_speed_y = sign(arg1 - y) * dalv_walk_speed;
            i = x + dalv_walk_speed_x;
            j = y;
            
            if (abs(arg0 - i) < dalv_walk_speed)
                i = arg0;
            
            while (j != arg1)
            {
                j += dalv_walk_speed_y;
                
                if (abs(arg1 - j) < dalv_walk_speed)
                    j = arg1;
                
                if (!place_free(i, j) || place_meeting(i, j, arg2))
                {
                    condition_1 = true;
                    break;
                }
            }
            
            if (condition_1 == true)
            {
                while (i != arg0)
                {
                    i += dalv_walk_speed_x;
                    j = y;
                    
                    if (abs(arg0 - i) < dalv_walk_speed)
                        i = arg0;
                    
                    while (j != arg1)
                    {
                        j += dalv_walk_speed_y;
                        
                        if (abs(arg1 - j) < dalv_walk_speed)
                            j = arg1;
                        
                        if (i == arg0 && j == arg1)
                            exit;
                        else if (!place_free(i, j) || place_meeting(i, j, arg2))
                            break;
                        else if (j == arg1)
                            exit;
                    }
                }
                
                dalv_walk_axis = "y";
                exit;
            }
            
            break;
        
        case "y":
            y_previous = y;
            y += dalv_walk_speed_y;
            
            if (abs(arg1 - y) < dalv_walk_speed && place_free(x, arg1) && !place_meeting(x, arg1, arg2))
                y = arg1;
            
            if (place_free(x, y) && !place_meeting(x, y, arg2) && y_previous != arg1)
            {
                npc_walking = true;
                image_speed = 0.2;
                
                if (dalv_walk_speed_y == -dalv_walk_speed)
                    direction = 90;
                else if (dalv_walk_speed_y == dalv_walk_speed)
                    direction = 270;
            }
            
            if (!place_free(x, y) || place_meeting(x, y, arg2) || y_previous == arg1)
            {
                y = y_previous;
                dalv_walk_axis = "x";
                exit;
            }
            
            dalv_walk_speed_x = sign(arg0 - x) * dalv_walk_speed;
            i = x;
            j = y + dalv_walk_speed_y;
            
            if (abs(arg1 - j) < dalv_walk_speed)
                j = arg1;
            
            while (i != arg0)
            {
                i += dalv_walk_speed_x;
                
                if (abs(arg0 - i) < dalv_walk_speed)
                    i = arg0;
                
                if (!place_free(i, j) || place_meeting(i, j, arg2))
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
                    j += dalv_walk_speed_y;
                    
                    if (abs(arg1 - j) < dalv_walk_speed)
                        j = arg1;
                    
                    while (i != arg0)
                    {
                        i += dalv_walk_speed_x;
                        
                        if (abs(arg0 - i) < dalv_walk_speed)
                            i = arg0;
                        
                        if (i == arg0 && j == arg1)
                            exit;
                        else if (!place_free(i, j) || place_meeting(i, j, arg2))
                            break;
                        else if (i == arg0)
                            exit;
                    }
                }
                
                dalv_walk_axis = "x";
                exit;
            }
            
            break;
    }
    
    if (x == arg0 && y == arg1)
    {
        npc_walking = false;
        path_speed = 0;
        image_speed = 0;
        image_index = 0;
    }
}
