if (global.sworks_flag[5] > 0)
{
    if (!instance_exists(obj_steamworks_manta))
        instance_create(1330, 480, obj_steamworks_manta);
    
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
