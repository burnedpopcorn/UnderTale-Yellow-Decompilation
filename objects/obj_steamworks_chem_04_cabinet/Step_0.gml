if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    scr_text();
    waiter = 1;
}

if (waiter == 1)
{
    if (global.sworks_flag[35] == 0)
    {
        with (msg)
        {
            message[0] = "* (You open the storage cabinet#  and find some Dihydrogen#  Monoxide.)";
            
            if (global.route == 3)
                message[0] = "* (There's some water inside.)";
            
            message[1] = "* (Take it?)";
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                if (scr_item("Dihydrogen Monoxide"))
                {
                    if (global.route != 3)
                        message[2] = "* (You got Dihydrogen Monoxide!)";
                    else
                        message[2] = "* (You got water.)";
                    
                    global.sworks_flag[35] = 1;
                }
                else
                {
                    message[2] = "* (Not enough inventory space.)";
                }
            }
            else if (outcome == 2)
            {
                if (global.route != 3)
                    message[2] = "* (Could be expired.)";
                
                other.waiter = 0;
            }
        }
    }
    else
    {
        with (msg)
        {
            message[0] = "* (Nothing inside but#  oddly-shaped glass.)";
            other.waiter = 0;
        }
    }
}
