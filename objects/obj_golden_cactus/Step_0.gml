if (global.dunes_flag[34] == true)
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
        message[0] = "* (A beautiful, delicious-looking#  Golden Cactus catches your eye.)";
        message[1] = "* (Take it?)";
        
        if (outcome == 1 && message_current == 1)
        {
            if (scr_item("G. Cactus"))
            {
                instance_destroy(other);
                global.dunes_flag[34] = true;
                message[2] = "* (You got the Golden#  Cactus!)";
            }
            else
            {
                message[2] = "* (Not enough space.)";
            }
            
            other.waiter = 0;
        }
        
        if (outcome == 2 && message_current == 1)
        {
            message[2] = "* (Beauty is in the eye#  of the beholder anyway.)";
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
