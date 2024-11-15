if (!instance_exists(obj_savebox))
{
    instance_destroy();
    instance_create(x, y - 5, obj_savefl);
}
