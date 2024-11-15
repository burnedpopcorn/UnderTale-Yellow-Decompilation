if (state == 1)
{
    if (vspeed == 0)
        vspeed = -4;
    
    if (bbox_bottom < 120)
    {
        state = 2;
        vspeed = 0;
        depth = 1000006;
    }
}

if (state == 2)
{
    vspeed += 0.25;
    
    if (bbox_top > 180)
    {
        instance_destroy();
        instance_destroy(obj_steamworks_mo_flame);
        exit;
    }
}

if (state > 0)
{
    if (instance_exists(obj_steamworks_mo_flame))
    {
        obj_steamworks_mo_flame.vspeed = vspeed;
        obj_steamworks_mo_flame.depth = depth - 1;
    }
}
