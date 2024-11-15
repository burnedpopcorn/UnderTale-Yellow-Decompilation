function cutscene_npc_walk_wait()
{
    if (!instance_exists(argument[0]))
        exit;
    
    with (argument[0])
    {
        if (distance_to_object(obj_pl) > 80)
        {
            can_walk = false;
            is_walking = false;
            
            if (walk_axis == "x")
            {
                if (x < obj_pl.x)
                    npc_direction = "right";
                else
                    npc_direction = "left";
            }
            else if (y < obj_pl.y)
            {
                npc_direction = "down";
            }
            else
            {
                npc_direction = "up";
            }
        }
        else if (distance_to_object(obj_pl) < 50)
        {
            can_walk = true;
        }
        
        if (x_dest[0] != argument[1] || y_dest[0] != argument[2])
        {
            x_dest = 0;
            y_dest = 0;
            x_dest[0] = argument[1];
            y_dest[0] = argument[2];
            axis_override = argument[4];
            end_direction = argument[5];
            
            if (argument_count > 6)
                walk_collider = argument[6];
            
            if (argument_count > 7)
                x_dest[1] = argument[7];
            
            if (argument_count > 8)
                y_dest[1] = argument[8];
            
            if (argument_count > 9)
                x_dest[2] = argument[9];
            
            if (argument_count > 10)
                y_dest[2] = argument[10];
            
            if (x != x_dest[array_length_1d(x_dest) - 1] || y != y_dest[array_length_1d(y_dest) - 1])
                npc_arrived = false;
        }
        
        actor_speed = argument[3] + (obj_pl.is_sprinting * 2);
        
        if (npc_arrived == true)
        {
            can_walk = false;
            npc_arrived = false;
            
            with (other)
                cutscene_advance();
            
            return true;
        }
    }
    
    return false;
}
