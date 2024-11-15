if (global.dunes_flag[1] == 1)
{
    if (!instance_exists(obj_determination))
        instance_create(250, 145, obj_determination);
    
    instance_destroy();
}
