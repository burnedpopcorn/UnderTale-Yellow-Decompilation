if (global.flag[24] == 0 && !instance_exists(obj_flowey1))
{
    instance_destroy();
    instance_create(160, 160, obj_flowey1);
}
