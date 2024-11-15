if (global.flag[24] == 1)
{
    instance_create(160, 160, obj_flowey1);
    instance_destroy();
}

if (global.flag[24] == 3)
{
    if (global.flag[17] == 0)
        instance_create(160, 160, obj_determination);
    
    instance_destroy();
}
