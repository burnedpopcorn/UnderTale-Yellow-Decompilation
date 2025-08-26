if (global.flag[11] == true)
    image_index = 1;

if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && (waiter == 0 && !instance_exists(obj_dialogue)))
    waiter = 1;

if (waiter > 0)
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = sndfnt_default;
        
        if (global.flag[11] == true)
        {
            if (global.route != 3)
                message[0] = "* (It's a crate with \"special#  corn\" written on it in pink#  crayon.)";
            else
                message[0] = "* (Nothing useful left.)";
            
            other.waiter = 0;
        }
        else
        {
            message[0] = "* (There's a Corn Dog hiding#  amongst the corn cobs.)";
            message[1] = "* (Take it?)";
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1 && message_current == 1)
            {
                message[2] = "* Obtained Corn Dog!";
                scr_item("Corn Dog");
                global.flag[11] = true;
                obj_cornboxdoge.waiter = 0;
            }
            
            if (outcome == 2 && message_current == 1)
            {
                message[2] = "* (It could bite you.)";
                obj_cornboxdoge.waiter = 0;
            }
        }
    }
}
