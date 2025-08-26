if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    if (waiter == 0)
    {
        scr_cutscene_start();
        waiter = 1;
    }
}

if (waiter == 1)
{
    if (global.sworks_flag[31] == 0)
    {
        scr_text();
        
        with (msg)
        {
            message[0] = "* (The chute is clogged with#  strange-looking plants.)";
            
            if (global.route == 3)
                message[0] = "* (It's clogged.)";
        }
        
        waiter = 0;
        global.cutscene = false;
    }
    else
    {
        scr_text();
        
        with (msg)
        {
            message[0] = "* (Climb to the top?)";
            ch[1] = "Yes";
            ch[2] = "No";
            ch_msg = 0;
            
            if (outcome == 1)
            {
                other.scene = 1;
                other.waiter = 0;
            }
            
            if (outcome == 2)
            {
                other.waiter = 0;
                scr_cutscene_end();
            }
        }
    }
}

if (scene == 1)
{
    instance_create(0, 0, obj_steamworks_chute_travel_effect);
    cutscene_change_room(rm_steamworks_36, 150, 148, 0.1);
}
