if (global.route != 3)
{
    if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && waiter == 0 && !instance_exists(obj_dialogue))
        waiter = 1;
    
    if (waiter == 1)
    {
        scr_text();
        
        with (msg)
        {
            if (!instance_exists(obj_dialoguebox_dummy))
                instance_create(0, 0, obj_dialoguebox_dummy);
            
            portrait = false;
            sndfnt = 99;
            message[0] = "* (There is a book of neatly#  written paragraphs on#  the desk.)";
            message[1] = "* (They all appear to be very#  similar.)";
            message[2] = "* (Read one?)";
            
            if (outcome == 1 && message_current == 2)
            {
                obj_dalvsroom_desk.waiter = 2;
                global.cutscene = true;
            }
            else if (outcome == 2 && message_current == 2)
            {
                obj_dalvsroom_desk.waiter = 4;
            }
            
            if ((message_current + 1) == 2)
            {
                ch_msg = 2;
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
            message[0] = "* Dalv is a loner living in#  the ruins of Home.";
            message[1] = "* He enjoys quiet walks in the#  dark, cleaning, and improving#  songs on his organ.";
            message[2] = "* He wants to share with the#  youth of the Underground...";
            message[3] = "* ...the importance of being#  accepting and respecting#  the wishes of others. ";
            message[4] = "* The rest of the page is#  scribbled out.";
            
            with (obj_dalvsroom_desk)
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
            message[0] = "* (There is a book of neatly#  written paragraphs on the#  desk.)";
            message[1] = "* (They all appear to be very#  similar.)";
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
