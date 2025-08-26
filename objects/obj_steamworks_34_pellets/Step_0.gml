if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
    waiter = 1;

if (waiter > 0)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = sndfnt_default;
        message[0] = "* (Take the Friendliness#  Pellets?)";
        
        if (outcome == 1 && message_current == 0)
        {
            if (scr_item("Friendliness Pellets"))
            {
                message[1] = "* (You got the Friendliness#  Pellets!)";
                other.waiter = 0;
                instance_destroy(other);
                
                if (room != rm_dunes_40)
                    global.sworks_flag[29] = 3;
                else
                    global.dunes_flag[51] = 2;
            }
            else
            {
                message[1] = "* (Not enough space.)";
                other.waiter = 0;
            }
        }
        
        if (outcome == 2 && message_current == 0)
            other.waiter = 0;
        
        if (message_current == 0)
        {
            ch_msg = 0;
            ch[1] = "Yes";
            ch[2] = "No";
        }
    }
}
