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
                message[0] = "* (Nothing useful.)";
            else
                message[0] = "* (Nothing but chewed up#  silverware.)";
            
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
            message[0] = "* (You discover some Monster#  Candy in the trash can.#  It's butterscotch flavored.)\t";
            message[1] = "* (Take it?)";
        }
        
        ch_msg = 1;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            if (scr_item("Monster Candy"))
            {
                message[2] = "* (You got Monster Candy!)";
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
                message[2] = "* (If only it was cinnamon...)";
            
            other.waiter = 0;
        }
    }
}

image_alpha = 0;
