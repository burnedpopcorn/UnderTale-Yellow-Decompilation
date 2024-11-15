if (scr_timer())
{
    scr_cutscene_start();
    scr_text();
    
    with (msg)
    {
        sndfnt = 97;
        message[0] = "* Hello?";
        message[1] = "* Are you still present,#  little one?";
        message[2] = "* I am going to rescue#  you! Come!";
        prt[0] = 343;
        prt[1] = 340;
        prt[2] = 343;
    }
    
    if (!global.dialogue_open)
    {
        instance_create(160, 145, obj_darkruins_01_rope);
        instance_destroy();
    }
}

if (global.flag[23] == 0 && instance_exists(obj_transition))
{
    if (obj_transition.newRoom != 14)
        exit;
    
    global.flag[23] = 2;
    instance_destroy();
}
