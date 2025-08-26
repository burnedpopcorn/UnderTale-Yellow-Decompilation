event_inherited();

if (npc_flag > 0)
    instance_destroy();

if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    if (global.route == 3)
    {
        with (msg)
        {
            message[0] = "* (A broken necklace.)";
            message[1] = "* (Useless.)";
        }
        
        waiter = 0;
        exit;
    }
    
    with (msg)
    {
        message[0] = "* (An old necklace, discarded in#  the sand.)";
        message[1] = "* (Looks expensive.)";
        message[2] = "* (Take it?)";
        
        if (!global.dialogue_open)
            other.waiter = 0;
        
        ch_msg = 2;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            if (scr_item("Necklace"))
            {
                message[3] = "* (You got the necklace!)";
                other.npc_flag = 1;
                other.waiter = 0;
            }
            else
            {
                message[3] = "* (Not enough space.)";
                global.cutscene = false;
                other.waiter = 0;
            }
        }
        
        if (outcome == 2)
        {
            global.dialogue_open = false;
            other.waiter = 0;
            global.cutscene = false;
        }
    }
}

depth = 1000;
