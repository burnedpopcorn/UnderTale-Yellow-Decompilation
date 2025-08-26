if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    scr_text();
    waiter = 1;
}

if (waiter == 1)
{
    if (global.sworks_flag[32] == 0)
    {
        with (msg)
        {
            message[0] = "* (You peer into the box and find#  a bucket of nails.)\t";
            message[1] = "* (Take them?)";
            
            if (global.route == 3)
                message[0] = "* (A bucket of nails. Could be#  useful.)";
            
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                if (scr_item("Nails"))
                {
                    if (global.route != 3)
                        message[2] = "* (You got Nails!)";
                    else
                        message[2] = "* (You got nails.)";
                    
                    global.sworks_flag[32] = 1;
                }
                else
                {
                    message[2] = "* (Not enough inventory space.)";
                }
            }
            else if (outcome == 2)
            {
                if (global.route == 3)
                    global.dialogue_open = false;
                else
                    message[2] = "* (You decide not to touch the#  nails.)";
                
                other.waiter = 0;
            }
        }
    }
    else
    {
        with (msg)
        {
            message[0] = "* (Nothing of interest here.)";
            
            if (global.route == 3)
                message[0] = "* (Nothing of use left.)";
            
            other.waiter = 0;
        }
    }
}
