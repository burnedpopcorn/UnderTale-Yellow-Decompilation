event_inherited();

if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        if (other.npc_flag == 1)
        {
            if (global.route == 3)
                message[0] = "* (Empty.)";
            else
                message[0] = "* (It's empty now.)";
            
            if (!global.dialogue_open)
                other.waiter = 0;
            
            exit;
        }
        
        message[0] = "* (There's a discarded burger at#  the bottom of the barrel.)";
        
        if (global.route == 3)
            message[0] = "* (Discarded food lies in the#  barrel.)";
        
        message[1] = "* (Take it?)";
        ch_msg = 1;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            if (scr_item("Feisty Slider"))
            {
                message[2] = "* (You got a Feisty Slider!)";
                other.npc_flag = 1;
            }
            else
            {
                message[2] = "* (Not enough space.)";
            }
            
            other.waiter = 0;
        }
        
        if (outcome == 2)
            other.waiter = 0;
    }
}
