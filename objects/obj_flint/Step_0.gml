if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    scr_text();
    waiter = 1;
}

if (waiter == 1)
{
    if (global.dunes_flag[19] == 0)
    {
        with (msg)
        {
            message[0] = "* (You spot a dark, dislodged#  stone among this pile of#  rocks.)";
            message[1] = "* (Take it?)";
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                if (scr_item("Flint"))
                {
                    message[2] = "* (You got some flint!)";
                    global.dunes_flag[19] = 1;
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
            message[0] = "* (It's just a rock now.)";
            other.waiter = 0;
        }
    }
}
