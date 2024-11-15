last_move_x = move_x;

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
