if (global.flag[14] == true)
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
        message[0] = "* (A little pile of conveniently#  bullet shaped pebbles.)";
        message[1] = "* (Take them?)";
        
        if (outcome == 1 && message_current == 1)
        {
            scr_item("Pebble Ammo");
            message[2] = "* (Obtained Pebbles!)";
            
            with (obj_pebblesitem)
                instance_destroy();
            
            global.flag[14] = true;
        }
        
        if (outcome == 2 && message_current == 1)
        {
            message[2] = "* (Pebbles are too dangerous.)";
            obj_pebblesitem.waiter = 0;
        }
        
        if ((message_current + 1) == 1)
        {
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
        }
    }
}
