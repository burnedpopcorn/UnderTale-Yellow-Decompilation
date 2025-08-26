if (global.flag[19] == true)
    instance_destroy();

if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
    waiter = 1;

if (waiter > 0)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = sndfnt_default;
        message[0] = "* (A beautiful, delicious-looking#  Golden Pear catches your eye.)";
        message[1] = "* (Take it?)";
        
        if (outcome == 1 && message_current == 1)
        {
            message[2] = "* (You got the Golden Pear!)";
            scr_item("G. Pear");
            
            with (obj_pear)
                instance_destroy();
            
            global.flag[19] = true;
        }
        
        if (outcome == 2 && message_current == 1)
        {
            message[2] = "* (Beauty is in the eye#  of the beholder anyway.)";
            obj_pear.waiter = 0;
        }
        
        if ((message_current + 1) == 1)
        {
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
        }
    }
}
