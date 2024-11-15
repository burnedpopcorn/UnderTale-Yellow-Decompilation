if (waiter == 0 && scr_interact() && keyboard_multicheck_pressed(0))
{
    waiter = 1;
}
else if (waiter == 1)
{
    if (global.sworks_flag[26] >= 2)
    {
        scr_text();
        
        with (msg)
        {
            if (global.route != 3)
            {
                message[0] = "* (You notice a sign in the#  receptionist office.)";
                message[1] = "* Do not eat the writing#  utensils! Not again...";
                message[2] = "* (You wonder what tragic event#  warranted this sign.)";
            }
            else
            {
                message[0] = "* (A familiar display.)";
            }
        }
        
        waiter = 0;
        exit;
    }
    
    scr_text();
    
    with (msg)
    {
        message[0] = "* (The receptionist is#  unreceptive.)";
        message[1] = "* (They seemed to be in the#  middle of creating a new#  Steamworks ID.)";
        message[2] = "* (Finish their work?)";
        ch_msg = 2;
        ch[1] = "Yes";
        ch[2] = "No";
        
        if (outcome == 1)
        {
            scr_cutscene_start();
            instance_create(0, 0, obj_crayon_minigame);
            other.waiter = 2;
        }
        else if (outcome == 2)
        {
            global.dialogue_open = false;
            other.waiter = 0;
        }
    }
}
else if (waiter == 2 && !instance_exists(obj_crayon_minigame))
{
    instance_create(0, 0, obj_chem_01_cutscene_b);
    waiter = 0;
}
