if (global.dunes_flag[41] >= 1 && global.dunes_flag[41] < 6)
{
    if (keyboard_multicheck_pressed(0) && scr_interact())
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* You can mess with that#  later.";
            message[1] = "* We need to go to#  Ceroba's house.";
            prt[0] = 321;
            prt[1] = 321;
        }
    }
    
    exit;
}

event_inherited();

if (image_speed > 0)
    image_speed = 0.4;
