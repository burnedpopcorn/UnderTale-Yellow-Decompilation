if (live_call())
    return global.live_result;

if (variable_instance_exists(id, "id_target"))
{
    with (id_target)
        instance_destroy();
}

ds_list_destroy(x_list);
ds_list_destroy(y_list);
ds_list_destroy(angle_list);
