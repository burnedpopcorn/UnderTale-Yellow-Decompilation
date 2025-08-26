if (keyboard_multicheck_pressed(vk_nokey))
{
    if (scr_interact() == true)
    {
        if (!instance_exists(obj_dialogue))
            msg = instance_create(x, y, obj_dialogue);
        
        with (msg)
        {
            sndfnt = sndfnt_default;
            portrait = false;
            message[0] = "* (You jostle the gate.)";
            message[1] = "* (It doesn't budge.)";
        }
    }
}
