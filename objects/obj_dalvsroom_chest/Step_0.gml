script_execute(scr_depth, 0, 0, 0, 0, 0);

if (global.route != 3)
{
    if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && waiter == 0 && !instance_exists(obj_dialogue))
        waiter = 1;
    
    if (waiter == 1)
    {
        global.cutscene = true;
        scr_text();
        
        with (msg)
        {
            if (!instance_exists(obj_dialoguebox_dummy))
                instance_create(0, 0, obj_dialoguebox_dummy);
            
            portrait = false;
            sndfnt = 99;
            message[0] = "* (A fine oak chest.)";
            message[1] = "* (Open it?)";
            
            if (outcome == 1 && message_current == 1)
                obj_dalvsroom_chest.waiter = 2;
            else if (outcome == 2 && message_current == 1)
                obj_dalvsroom_chest.waiter = 4;
            
            if ((message_current + 1) == 1)
            {
                ch_msg = 1;
                ch[1] = "Yes";
                ch[2] = "No";
            }
        }
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
        waiter++;
    
    if (waiter == 3)
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            sndfnt = 99;
            
            if (global.interaction_count_dalvsroom_chest == 0)
            {
                message[0] = "* (Wow! It's lined with high#  quality satin!)";
                global.interaction_count_dalvsroom_chest++;
            }
            else
            {
                message[0] = "* (You check again.)";
                message[1] = "* (It's still a cool chest.)";
            }
            
            with (obj_dalvsroom_chest)
                waiter++;
        }
    }
    
    if (waiter == 4 && !instance_exists(obj_dialogue))
    {
        with (obj_dialoguebox_dummy)
            instance_destroy();
        
        waiter = 0;
        global.cutscene = false;
        obj_pl.alarm[0] = 1;
    }
}
else
{
    if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            sndfnt = 99;
            message[0] = "* (A fine oak chest.)";
        }
        
        waiter++;
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
        waiter++;
    
    if (waiter == 3)
    {
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
