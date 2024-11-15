if (global.snowdin_flag[10] == true)
    instance_destroy();

if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
    waiter = 1;

if (waiter > 0)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = 99;
        message[0] = "* (A beautiful, delicious-looking#  Golden Coffee catches your eye.)";
        message[1] = "* (Take it?)";
        
        if (global.route == 3)
        {
            message[0] = "* (It's a cup of coffee.)";
            message[1] = "* (Take it?)";
        }
        
        if (outcome == 1 && message_current == 1)
        {
            if (scr_item("G. Coffee"))
            {
                global.snowdin_flag[10] = true;
                other.waiter = 0;
                message[2] = "* (Obtained Golden Coffee!)";
                instance_destroy(other);
            }
            else
            {
                message[2] = "* (Not enough space.)";
                other.waiter = 0;
            }
        }
        
        if (outcome == 2 && message_current == 1)
        {
            message[2] = "* Beauty is in the eye#  of the beholder anyway.";
            
            if (global.route == 3)
                message[2] = "* It doesn't seem appetizing.";
            
            other.waiter = 0;
        }
        
        if ((message_current + 1) == 1)
        {
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
        }
    }
}
