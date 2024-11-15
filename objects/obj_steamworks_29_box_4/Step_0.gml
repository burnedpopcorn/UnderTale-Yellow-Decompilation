if (keyboard_multicheck_pressed(0) && scr_interact())
{
    scr_text();
    waiter = 1;
}

if (waiter == 1)
{
    if (global.sworks_flag[33] == 0)
    {
        with (msg)
        {
            message[0] = "* (You peer inside the box and#  find some Grassy Fries.)";
            
            if (global.route == 3)
                message[0] = "* (Some food here.)";
            
            message[1] = "* (Take it?)";
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                if (scr_item("Grassy Fries"))
                {
                    if (global.route != 3)
                        message[2] = "* (You got Grassy Fries!)";
                    else
                        message[2] = "* (You got Grassy Fries.)";
                    
                    global.sworks_flag[33] = 1;
                }
                else
                {
                    message[2] = "* (Not enough inventory space.)";
                }
            }
            else if (outcome == 2)
            {
                global.dialogue_open = false;
                other.waiter = 0;
            }
        }
    }
    else
    {
        with (msg)
        {
            message[0] = "* (Nothing of interest here.)";
            other.waiter = 0;
        }
    }
}
