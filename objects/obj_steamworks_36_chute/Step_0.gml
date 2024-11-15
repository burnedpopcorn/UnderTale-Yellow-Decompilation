if (scr_interact() && keyboard_multicheck_pressed(0))
{
    if (waiter == 0)
    {
        scr_cutscene_start();
        waiter = 1;
    }
}

if (waiter == 1)
{
    scr_text();
    
    if (global.party_member == 1171)
    {
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* Let's not venture off#  the path.";
            message[1] = "* I've had enough#  Steamworks for today.";
            prt[0] = 370;
            prt[1] = 377;
        }
        
        global.cutscene = false;
        waiter = 0;
    }
    else
    {
        with (msg)
        {
            message[0] = "* (Return to the laundry#  room?)";
            ch[1] = "Yes";
            ch[2] = "No";
            ch_msg = 0;
            
            if (outcome == 1)
            {
                other.image_speed = 1;
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
    if (image_index >= (image_number - 1))
        scene++;
}

if (scene == 2)
{
    instance_create(0, 0, obj_steamworks_chute_travel_effect);
    cutscene_change_room(150, 128, 128, 0.1);
    global.cutscene = false;
}
