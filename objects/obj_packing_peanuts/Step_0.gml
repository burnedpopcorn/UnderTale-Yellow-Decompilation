if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    scr_text();
    waiter = 1;
}

if (waiter == 1)
{
    if (global.dunes_flag[9] == 0)
    {
        with (msg)
        {
            message[0] = "* (There are some Packing Peanuts#  in the box.)";
            message[1] = "* (Will you take them?)";
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                if (scr_item("Packing Peanuts"))
                {
                    if (global.route != 3)
                        message[2] = "* (You got Packing Peanuts!)";
                    else
                        message[2] = "* (You got Packing Peanuts.)";
                    
                    global.dunes_flag[9] = 1;
                    other.image_index = 1;
                }
                else
                {
                    message[2] = "* (Not enough inventory space.)";
                }
            }
            else if (outcome == 2)
            {
                other.waiter = 0;
                global.dialogue_open = false;
            }
        }
    }
    else
    {
        with (msg)
        {
            message[0] = "* (There is nothing here of#  conceivable use to you.)";
            other.waiter = 0;
        }
    }
}
