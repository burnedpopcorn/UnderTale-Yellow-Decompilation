if ((keyboard_multicheck_pressed(0) && scr_interact() == true) && !instance_exists(obj_dialogue))
{
    scr_text();
    
    with (msg)
    {
        portrait = false;
        sndfnt = 99;
        message[0] = "* (There's corn on the#  cobweb.)";
        
        if (global.route == 3)
            message[0] = "* (A corn cob.)";
    }
}
