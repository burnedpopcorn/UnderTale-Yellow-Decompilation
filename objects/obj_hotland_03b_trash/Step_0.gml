event_inherited();

if (scr_interact() && keyboard_multicheck_pressed(0))
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        if (other.npc_flag == 1)
        {
            if (global.route == 3)
                message[0] = "* (Just your average garbage.)";
            else
                message[0] = "* (Nothing useful.)";
            
            if (!global.dialogue_open)
                other.waiter = 0;
            
            exit;
        }
        
        if (global.route == 3)
        {
            message[0] = "* (There's some food here.)";
            message[1] = "* (Take it?)";
        }
        else
        {
            message[0] = "* (You find a discarded Hot Dog#  in the trash can.)";
            message[1] = "* (Take it?)";
        }
        
        ch_msg = 1;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            if (scr_item("Hot Dog"))
            {
                message[2] = "* (You got a Hot Dog!)";
                other.npc_flag = 1;
                other.image_index = 1;
            }
            else
            {
                message[2] = "* (Not enough space.)";
            }
            
            other.waiter = 0;
        }
        
        if (outcome == 2)
        {
            if (global.route != 3)
                message[2] = "* (You're more of a cat person.)";
            
            other.waiter = 0;
        }
    }
}

image_alpha = 0;
