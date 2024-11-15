if (move_x != 0)
    last_move_x = move_x;

if (move_y != 0)
    last_move_y = move_y;

if (move_x == 0)
{
    move_x_count = 0;
    
    if (idle_x_count < max_move_counter)
        idle_x_count += 1;
}
else
{
    idle_x_count = 0;
    
    if (move_x < 0)
    {
        if (move_x_count > 0)
            move_x_count = 0;
        
        if (move_x_count > -max_move_counter)
            move_x_count -= 1;
    }
    else if (move_x > 0)
    {
        if (move_x_count < 0)
            move_x_count = 0;
        
        if (move_x_count < max_move_counter)
            move_x_count += 1;
    }
}

if (move_y == 0)
{
    move_y_count = 0;
    
    if (idle_y_count < max_move_counter)
        idle_y_count += 1;
}
else
{
    idle_y_count = 0;
    
    if (move_y < 0)
    {
        if (move_y_count > 0)
            move_y_count = 0;
        
        if (move_y_count > -max_move_counter)
            move_y_count -= 1;
    }
    else if (move_y > 0)
    {
        if (move_y_count < 0)
            move_y_count = 0;
        
        if (move_y_count < max_move_counter)
            move_y_count += 1;
    }
}

if (x != x_previous)
    last_hsp = move_x;

if (y != y_previous)
    last_vsp = move_y;

if (x == x_previous)
{
    move_hsp_count = 0;
    
    if (idle_hsp_count < max_speed_counter)
        idle_hsp_count += 1;
}
else
{
    idle_hsp_count = 0;
    
    if (x < x_previous)
    {
        if (move_hsp_count > 0)
            move_hsp_count = 0;
        
        if (move_hsp_count > -max_speed_counter)
            move_hsp_count -= 1;
    }
    else if (x > x_previous)
    {
        if (move_hsp_count < 0)
            move_hsp_count = 0;
        
        if (move_hsp_count < max_speed_counter)
            move_hsp_count += 1;
    }
}

if (y == y_previous)
{
    move_vsp_count = 0;
    
    if (idle_vsp_count < max_speed_counter)
        idle_vsp_count += 1;
}
else
{
    idle_vsp_count = 0;
    
    if (y < y_previous)
    {
        if (move_vsp_count > 0)
            move_vsp_count = 0;
        
        if (move_vsp_count > -max_speed_counter)
            move_vsp_count -= 1;
    }
    else if (y > y_previous)
    {
        if (move_vsp_count < 0)
            move_vsp_count = 0;
        
        if (move_vsp_count < max_speed_counter)
            move_vsp_count += 1;
    }
}
