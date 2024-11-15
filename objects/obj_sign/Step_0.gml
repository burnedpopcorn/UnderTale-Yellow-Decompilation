if (keyboard_multicheck_pressed(0))
{
    if (scr_interact() == true && obj_pl.direction == 90)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue);
        
        with (msg)
        {
            portrait = false;
            sndfnt = 99;
        }
        
        msg.message[0] = id.message;
        
        if (message2 != "")
            msg.message[1] = id.message2;
    }
}
