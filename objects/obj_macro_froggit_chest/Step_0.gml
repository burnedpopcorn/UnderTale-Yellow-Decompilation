if (scr_interact() && keyboard_multicheck_pressed(0))
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        if (global.sworks_flag[51] == 1)
        {
            message[0] = "* (It's full of epic emptiness.)";
            
            if (!global.dialogue_open)
                other.waiter = 0;
            
            exit;
        }
        
        message[0] = "* (You open the mysterious chest#  as an epic melody slowly#  crescendos in your head.)";
        message[1] = "* (You found a Golden Bandana!)";
        message[2] = "* (Take it?)";
        ch_msg = 2;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (message_current == 1)
            other.image_index = 1;
        
        if (outcome == 1)
        {
            if (scr_item("G. Bandana"))
            {
                message[3] = "* (You got the Golden Bandana!)";
                global.sworks_flag[51] = 1;
            }
            else
            {
                message[3] = "* (Not enough space.)";
                other.image_index = 0;
            }
            
            other.waiter = 0;
        }
        
        if (outcome == 2)
        {
            global.dialogue_open = false;
            other.waiter = 0;
            other.image_index = 0;
        }
    }
}
