y += 3;

if (y >= (obj_pl.y - 20))
{
    with (instance_create(x, y - 15, obj_martlet_follower))
    {
        npc_reset = true;
        direction = 180;
    }
    
    instance_destroy();
    global.cutscene = false;
    scr_text();
    
    with (msg)
    {
        message[0] = "* Heyo!";
        prt[0] = 312;
    }
}
