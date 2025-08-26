if (global.flag[17] == 1)
{
    if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_cutscene_start();
        
        if (global.interaction_count_broom == 0)
        {
            obj_dalv2.destination_x_dalv = obj_pl.x;
            obj_dalv2.destination_y_dalv = obj_pl.y + 20;
        }
        else
        {
            obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvroomhall;
            obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvroomhall;
        }
        
        if (obj_dalv2.x == obj_dalv2.destination_x_dalv && obj_dalv2.y == obj_dalv2.destination_y_dalv)
            waiter++;
    }
    
    if (waiter == 2)
    {
        scr_text();
        
        with (msg)
        {
            if (global.interaction_count_broom == 0)
            {
                portrait = true;
                sndfnt = sndfnt_dalv;
                message[0] = "* Be careful with that.";
                message[1] = "* That broom has been like#  my best friend.";
                message[2] = "* I never thought he'd be#  replaced by a real#  friend!";
                prt[0] = spr_dalv_head_sad;
                prt[1] = spr_dalv_head_regular;
                prt[2] = spr_dalv_head_content;
            }
            else
            {
                portrait = true;
                sndfnt = sndfnt_dalv;
                message[0] = "* ...";
                prt[0] = spr_dalv_head_regular;
            }
        }
        
        waiter++;
    }
    
    if (waiter == 3 && !instance_exists(obj_dialogue))
    {
        if (global.interaction_count_broom == 0)
        {
            global.interaction_count_broom++;
            waiter++;
        }
        else
        {
            waiter = 4;
        }
    }
    
    if (waiter >= 4 && waiter <= 5 && !instance_exists(obj_dialogue))
    {
        obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvroomhall;
        obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvroomhall;
        
        if (obj_dalv2.x == obj_dalv2.default_x_dalvroomhall && obj_dalv2.y == obj_dalv2.default_y_dalvroomhall)
            waiter++;
    }
    
    if (waiter == 6)
    {
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
else if (global.flag[17] != 1 && global.route != 3)
{
    if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            sndfnt = sndfnt_default;
            message[0] = "* (It's a well worn broom.)";
            obj_broom.waiter = 2;
        }
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
    {
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
else if (global.route == 3)
{
    if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            sndfnt = sndfnt_default;
            message[0] = "* (A broom.)";
            message[1] = "* (The wood is splintered.)";
            obj_broom.waiter = 2;
        }
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
    {
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
