function scr_shuffle_snowdin_13_yellow()
{
    var shuffle_direction, shuff;
    
    shuffle_direction = irandom(1);
    
    if (position_meeting(130, 200, shuffler[current_shuffler]))
    {
        with (shuffler[current_shuffler])
            move_right = true;
        
        shuff = instance_position(160, 200, obj_snowdin_13_shuffler_overworld_yellow);
        
        with (shuff)
            move_left = true;
    }
    else if (position_meeting(160, 200, shuffler[current_shuffler]))
    {
        if (shuffle_direction == 0)
        {
            with (shuffler[current_shuffler])
                move_right = true;
            
            shuff = instance_position(190, 200, obj_snowdin_13_shuffler_overworld_yellow);
            
            with (shuff)
                move_left = true;
        }
        else if (shuffle_direction == 1)
        {
            with (shuffler[current_shuffler])
                move_left = true;
            
            shuff = instance_position(130, 200, obj_snowdin_13_shuffler_overworld_yellow);
            
            with (shuff)
                move_right = true;
        }
    }
    else if (position_meeting(190, 200, shuffler[current_shuffler]))
    {
        with (shuffler[current_shuffler])
            move_left = true;
        
        shuff = instance_position(160, 200, obj_snowdin_13_shuffler_overworld_yellow);
        
        with (shuff)
            move_right = true;
    }
}
