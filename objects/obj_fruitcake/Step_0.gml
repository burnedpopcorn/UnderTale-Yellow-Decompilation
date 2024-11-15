if (scr_interact() && keyboard_multicheck_pressed(0))
    waiter = 1;

if (waiter == 1)
{
    scr_text();
    
    with (msg)
    {
        if (global.dunes_flag[11] == 1)
        {
            message[0] = "* (Just a bucket of trash.#  Fascinating.)";
            
            if (!global.dialogue_open)
                other.waiter = 0;
            
            exit;
        }
        
        message[0] = "* (Some stale fruitcake sits in a#  bucket, leftover from a Mining#  Co. holiday party.)";
        message[1] = "* (Take it?)";
        ch_msg = 1;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            if (scr_item("Fruitcake"))
            {
                message[2] = "* (You got fruitcake!)";
                global.dunes_flag[11] = 1;
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
            global.dialogue_open = false;
            other.waiter = 0;
        }
    }
}
