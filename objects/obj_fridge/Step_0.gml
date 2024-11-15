if (global.flag[17] == 1)
{
    if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && waiter == 0 && !instance_exists(obj_dialogue))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_cutscene_start();
        
        if (global.interaction_count_mini_fridge == 0)
        {
            obj_dalv2.destination_x_dalv = obj_pl.x + 40;
            obj_dalv2.destination_y_dalv = obj_pl.y;
        }
        else
        {
            obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvshouse;
            obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvshouse;
        }
        
        if (obj_dalv2.x == obj_dalv2.destination_x_dalv && obj_dalv2.y == obj_dalv2.destination_y_dalv)
            waiter++;
    }
    
    if (waiter == 2)
    {
        scr_text();
        
        with (msg)
        {
            if (global.interaction_count_mini_fridge == 0)
            {
                if (!instance_exists(obj_dialoguebox_dummy))
                    instance_create(0, 0, obj_dialoguebox_dummy);
                
                portrait = true;
                sndfnt = 100;
                message[0] = "* I don't exactly have a#  huge selection of food.";
                message[1] = "* I don't get out much... ";
                message[2] = "* Oh wait!  I have some#  leftovers you can take#  with you.";
                message[3] = "* I hope you like it! I#  made it for my birthday.";
                message[4] = "* Sponge Cake is my#  favorite!";
                prt[0] = 1763;
                prt[1] = 1780;
                prt[2] = 1769;
                prt[3] = 1769;
                prt[4] = 1773;
            }
            else
            {
                portrait = true;
                sndfnt = 100;
                message[0] = "* ...";
                prt[0] = 1780;
            }
        }
        
        waiter++;
    }
    
    if (waiter == 3 && !instance_exists(obj_dialogue))
    {
        if (global.interaction_count_mini_fridge == 0)
        {
            global.interaction_count_mini_fridge++;
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
            portrait = false;
            sndfnt = 99;
            message[0] = "* (It's a sponge covered in#  frosting.)";
            message[1] = "* (Take it?)";
            
            if (outcome == 1 && message_current == 1)
            {
                with (obj_fridge)
                    response = "yes";
                
                obj_fridge.image_index = 1;
                obj_fridge.waiter = 5;
            }
            else if (outcome == 2 && message_current == 1)
            {
                with (obj_fridge)
                    response = "no";
                
                obj_fridge.waiter = 5;
            }
            
            if ((message_current + 1) == 1)
            {
                ch_msg = 1;
                ch[1] = "Yes";
                ch[2] = "No";
            }
        }
    }
    
    if (waiter == 5 && !instance_exists(obj_dialogue))
        waiter++;
    
    if (waiter == 6)
    {
        scr_text();
        
        with (msg)
        {
            if (obj_fridge.response == "yes")
            {
                talker[0] = -4;
                sndfnt_array[0] = 391;
                sndfnt_array[1] = 434;
                sndfnt_array[2] = 434;
                sndfnt_array[3] = 434;
                message[0] = "* (You got the Sponge Cake!)";
                message[1] = "* ...";
                message[2] = "* Sorry I didn't invite#  you, it was last week.";
                message[3] = "* You can come next year!";
                prt[1] = 1755;
                prt[2] = 1763;
                prt[3] = 1769;
                scr_item("Sponge Cake");
                
                with (obj_fridge)
                    waiter++;
            }
            else if (obj_fridge.response == "no")
            {
                portrait = true;
                sndfnt = 100;
                message[0] = "* No?";
                message[1] = "* Alright then.";
                message[2] = "* More for me I suppose.";
                prt[0] = 1755;
                prt[1] = 1755;
                prt[2] = 1776;
                
                with (obj_fridge)
                    waiter++;
            }
        }
    }
    
    if (waiter >= 7 && waiter <= 8 && !instance_exists(obj_dialogue))
    {
        response = "nothing";
        obj_fridge.image_index = 0;
        obj_dalv2.destination_x_dalv = obj_dalv2.default_x_dalvshouse;
        obj_dalv2.destination_y_dalv = obj_dalv2.default_y_dalvshouse;
        
        if (obj_dalv2.x == obj_dalv2.default_x_dalvshouse && obj_dalv2.y == obj_dalv2.default_y_dalvshouse)
            waiter++;
        
        with (obj_dialoguebox_dummy)
            instance_destroy();
    }
    
    if (waiter == 9)
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
            message[0] = "* (It's a mini fridge.)";
            message[1] = "* (It's mostly empty.)";
            obj_fridge.waiter = 2;
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
            message[0] = "* (A cheap mini fridge.)";
            message[1] = "* (Nothing inside looks remotely#  edible.)";
            obj_fridge.waiter = 2;
        }
    }
    
    if (waiter == 2 && !instance_exists(obj_dialogue))
    {
        global.cutscene = false;
        waiter = 0;
        obj_pl.alarm[0] = 1;
    }
}
