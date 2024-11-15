if (live_call())
    return global.live_result;

if (instance_exists(id_target) && id_target != -4)
{
    with (id_target)
        instance_destroy();
}

ds_list_destroy(x_list);
ds_list_destroy(y_list);
ds_list_destroy(angle_list);
