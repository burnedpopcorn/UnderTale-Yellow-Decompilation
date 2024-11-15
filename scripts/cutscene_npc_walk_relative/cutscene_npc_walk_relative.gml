function cutscene_npc_walk_relative()
{
    if (!instance_exists(argument[0]))
        exit;
    
    with (argument[0])
    {
        if (npc_original_x == 0)
            npc_original_x = x;
        
        if (npc_original_y == 0)
            npc_original_y = y;
        
        can_walk = true;
        
        if (x_dest[0] != (npc_original_x + argument[1]) || y_dest[0] != (npc_original_y + argument[2]))
        {
            x_dest = 0;
            y_dest = 0;
            x_dest[0] = npc_original_x + argument[1];
            y_dest[0] = npc_original_y + argument[2];
            actor_speed = argument[3];
            axis_override = argument[4];
            end_direction = argument[5];
            
            if (argument_count > 6)
                walk_collider = argument[6];
            
            if (argument_count > 7)
                x_dest[1] = npc_original_x + argument[7];
            
            if (argument_count > 8)
                y_dest[1] = npc_original_y + argument[8];
            
            if (argument_count > 9)
                x_dest[2] = npc_original_x + argument[9];
            
            if (argument_count > 10)
                y_dest[2] = npc_original_y + argument[10];
            
            if (x != x_dest[array_length_1d(x_dest) - 1] || y != y_dest[array_length_1d(y_dest) - 1])
                npc_arrived = false;
        }
        
        if (npc_arrived == true)
        {
            can_walk = false;
            npc_arrived = false;
            npc_original_x = 0;
            npc_original_y = 0;
            argument[0].npc_direction = argument[5];
            
            with (other)
                cutscene_advance();
            
            return true;
        }
    }
    
    return false;
}
