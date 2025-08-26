if (sprite_index == spr_mug_broken)
{
    if (solid == false && !place_meeting(x, y, obj_pl))
        solid = true;
    
    if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
    {
        scr_text();
        waiter = 1;
    }
    
    if (waiter == 1)
    {
        with (msg)
        {
            message[0] = "* (Take the mug shards?)";
            ch_msg = 0;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                if (scr_item("Glass Ammo"))
                {
                    message[1] = "* (Obtained Glass Ammo!)";
                    global.dunes_flag[33] = 1;
                    instance_destroy(other);
                }
                else
                {
                    message[1] = "* (Not enough inventory space.)";
                }
            }
            else if (outcome == 2)
            {
                other.waiter = 0;
                global.dialogue_open = false;
            }
        }
    }
}
