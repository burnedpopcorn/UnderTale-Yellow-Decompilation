if (global.flag[10] == true)
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
        message[0] = "* (It's a stray feather.)";
        message[1] = "* (Take it?)";
        
        if (outcome == 1 && message_current == 1)
        {
            scr_item("Feather");
            message[2] = "* (You got a Stray Feather!)";
            
            with (obj_featheritem)
                instance_destroy();
            
            global.flag[10] = true;
        }
        
        if (outcome == 2 && message_current == 1)
        {
            message[2] = "* (You ignore it.#* Strays are nothing but#  trouble.)";
            obj_featheritem.waiter = 0;
        }
        
        if ((message_current + 1) == 1)
        {
            ch_msg = 1;
            ch[1] = "Yes";
            ch[2] = "No";
        }
    }
}
