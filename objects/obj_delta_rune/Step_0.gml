if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = sndfnt_default;
        
        if (global.route == 3)
        {
            message[0] = "* (A large rock with a symbol#  carved into it.)";
            other.waiter++;
            exit;
        }
        
        message[0] = "* (There appears to be something#  interesting on this rock.)";
        message[1] = "* (Touch it?)";
        ch[1] = "Yes";
        ch[2] = "No";
        ch_msg = 1;
        
        if (outcome == 1 && message_current == 1)
        {
            message[2] = "* (It was just some dirt in the#  snow.)";
            message[3] = "* (You wipe off your hand on a#  suspicious carving in the rock#  face.)";
            other.waiter++;
        }
        else if (outcome == 2 && message_current == 1)
        {
            message[2] = "* (It takes considerable#  self-discipline, but you ignore#  the interesting rock.)";
            other.waiter++;
        }
    }
}

if (waiter == 2 && !instance_exists(obj_dialogue))
    waiter = 0;
