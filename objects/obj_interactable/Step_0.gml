message_length = array_length_1d(message);

if (keyboard_multicheck_pressed(vk_nokey))
{
    if (target_direction != -1 && obj_pl.direction != target_direction)
        exit;
    
    if (scr_interact() == true && can_interact == 0)
    {
        if (global.route == 3 && global.hotland_flag[9] >= 3)
        {
            if (!instance_exists(obj_dialogue_narrator))
            {
                var narrator = instance_create_depth(0, 0, -100, obj_dialogue_narrator);
                
                with (narrator)
                {
                    if (room == rm_castle_05)
                        message[0] = "* (...)";
                    else
                        message[0] = "* (Not of interest.)";
                }
            }
            
            exit;
        }
        
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue);
        
        with (msg)
        {
            portrait = false;
            sndfnt = sndfnt_default;
            
            for (var i = 0; i < other.message_length; i++)
            {
                message[i] = other.message[i];
                
                if (i <= (array_length(other.message_col) - 1))
                {
                    for (var j = 0; j < array_length(other.message_col[i]); j++)
                        message_col[i][j] = other.message_col[i][j];
                }
            }
            
            if (other.color == true)
            {
                color = other.color;
                
                for (var c = 0; c < array_length_1d(other.col_modif); c++)
                    col_modif[c] = other.col_modif[c];
            }
        }
        
        active = true;
        waiter = 1;
    }
}
else
{
    active = false;
}

if (can_interact == 1 && !instance_exists(obj_dialogue))
    can_interact = 0;
