var axis_move, axis_speed;

if (live_call())
    return global.live_result;

axis_move = false;
axis_speed = 2;

with (obj_factory_03_furnace)
{
    if (scr_interact() && keyboard_multicheck_pressed(0) && state == 0)
        state = 1;
}

if (axis_move_timer >= 0)
{
    axis_move_timer--;
}
else
{
    axis_move = true;
    axis_move_timer = axis_move_timer_max;
}

if (axis_move == true)
{
    switch (axis_position_current)
    {
        case 0:
            axis_position_new = choose(1, 3);
            break;
        
        case 1:
            axis_position_new = choose(0, 2, 4);
            break;
        
        case 2:
            axis_position_new = choose(1, 5);
            break;
        
        case 3:
            axis_position_new = choose(4, 0, 6);
            break;
        
        case 4:
            axis_position_new = choose(1, 3, 5, 7);
            break;
        
        case 5:
            axis_position_new = choose(2, 4, 8);
            break;
        
        case 6:
            axis_position_new = choose(7, 3);
            break;
        
        case 7:
            axis_position_new = choose(4, 6, 8);
            break;
        
        case 8:
            axis_position_new = choose(7, 5);
            break;
    }
    
    axis_position_current = axis_position_new;
    
    with (obj_axis_npc)
    {
        actor_speed = axis_speed;
        can_walk = true;
        npc_arrived = false;
        x_dest[0] = other.axis_positions[other.axis_position_new][0];
        y_dest[0] = other.axis_positions[other.axis_position_new][1];
        end_direction = "nothing";
    }
}
