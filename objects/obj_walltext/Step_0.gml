if (keyboard_multicheck_pressed(vk_nokey))
{
    if (scr_interact() == true)
    {
        if (obj_pl.direction == 90)
        {
            if (!instance_exists(obj_dialogue))
                msg = instance_create(x, y, obj_dialogue);
            
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
            }
            
            msg.message[0] = id.message;
        }
    }
}
