if ((keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true) && !instance_exists(obj_dialogue))
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = sndfnt_default;
        message[0] = "* (There's corn on the#  cobweb.)";
        
        if (global.route == 3)
            message[0] = "* (A corn cob.)";
    }
}
