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
            {
                message[0] = "* (No business to conduct here.)";
            }
            else
            {
                message[0] = "* (A faint face is burned into#  the machine's screen...)";
                message[1] = "* (...staring out into the dim#  chasm of rock and steel.)";
            }
            
            if (!global.dialogue_open)
                other.waiter = 0;
            
            exit;
        }
        
        message[0] = "* (You spot some Gravity Granola#  inside the machine.)";
        
        if (global.route == 3)
            message[0] = "* (Some food lies within the#  robotic husk.)";
        
        message[1] = "* (Take it?)";
        ch_msg = 1;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            if (scr_item("Gravity Granola"))
            {
                message[2] = "* (You got some Gravity Granola!)";
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
            other.waiter = 0;
    }
}
