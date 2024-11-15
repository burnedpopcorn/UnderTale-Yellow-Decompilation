if (global.flag[17] == 1)
{
    if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        global.cutscene = true;
        obj_dalv2.destination_x_dalv = obj_dalv2.x;
        obj_dalv2.destination_y_dalv = obj_dalv2.y;
        
        if (obj_dalv2.x == obj_dalv2.destination_x_dalv && obj_dalv2.y == obj_dalv2.destination_y_dalv)
            waiter++;
    }
    
    if (waiter == 2)
        image_index = 1;
    
    if (waiter == 2)
    {
        scr_text();
        
        with (msg)
        {
            if (global.interaction_count_flower_pot == 0)
            {
                if (!instance_exists(obj_dialoguebox_dummy))
                    instance_create(0, 0, obj_dialoguebox_dummy);
                
                portrait = false;
                sndfnt = 99;
                message[0] = "* (It's a flower pot full of#  dirt.)";
            }
            else
            {
                portrait = true;
                sndfnt = 100;
                message[0] = "* ...";
                prt[0] = 1755;
            }
        }
        
        waiter++;
    }
    
    if (waiter == 3 && !instance_exists(obj_dialogue))
    {
        if (global.interaction_count_flower_pot == 0)
        {
            obj_dalv2.direction = 0;
            global.interaction_count_flower_pot++;
            waiter++;
        }
        else
        {
            waiter = 7;
        }
    }
    
    if (waiter == 4)
    {
        scr_text();
        
        with (msg)
        {
            portrait = true;
            sndfnt = 100;
            message[0] = "* That's my turnip plant!";
            message[1] = "* He should be sprouting#  up any day now!";
            message[2] = "* ... He's really taking#  his time...";
            message[3] = "* But I don't rush him.";
            prt[0] = 1776;
            prt[1] = 1776;
            prt[2] = 1780;
            prt[3] = 1769;
        }
        
        waiter++;
    }
    
    if (waiter >= 5 && waiter <= 6 && !instance_exists(obj_dialogue))
    {
        obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvshouse;
        obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvshouse;
        
        if (obj_dalv2.x == obj_dalv2.default_x_dalvshouse && obj_dalv2.y == obj_dalv2.default_y_dalvshouse)
            waiter++;
        
        with (obj_dialoguebox_dummy)
            instance_destroy();
    }
    
    if (waiter == 7)
    {
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
else if (global.flag[17] != 1 && global.route != 3)
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
            message[0] = "* (It's a flower pot full of#  dirt.)";
            obj_flower_pot.waiter = 2;
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
    if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            sndfnt = 99;
            message[0] = "* (Dirt.)";
            obj_flower_pot.waiter = 2;
        }
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
    {
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
