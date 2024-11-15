if (keyboard_multicheck_pressed(0) && scr_interact() == true)
{
    scr_text();
    
    with (msg)
    {
        sndfnt = 99;
        portrait = false;
        message[0] = "* (You notice a dark path beyond#  the rocks but you can't squeeze#  past them.)";
        
        if (global.route == 3)
            message[0] = "* (Rocks block this path.)";
    }
}

if (global.tinypuzzle == 0)
    instance_destroy();
