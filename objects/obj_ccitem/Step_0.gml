if (global.flag[8] == true)
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
        message[0] = "* (It's a rejected piece of corn.)";
        message[1] = "* (Take it?)";
        
        if (outcome == 1 && message_current == 1)
        {
            scr_item("Candy Corn");
            message[2] = "* (Obtained Candy Corn!)";
            
            with (obj_ccitem)
                instance_destroy();
            
            global.flag[8] = true;
        }
        
        if (outcome == 2 && message_current == 1)
        {
            message[2] = "* (It's probably not good#  enough for you.)";
            obj_ccitem.waiter = 0;
        }
        
        if ((message_current + 1) == 1)
        {
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
        }
    }
}
