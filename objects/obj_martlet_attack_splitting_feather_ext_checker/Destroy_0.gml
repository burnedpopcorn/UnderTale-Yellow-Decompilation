if (live_call())
    return global.live_result;

if (variable_instance_exists(id, "id_feather") && is_array(id_feather))
{
    for (i = 0; i < array_length(id_feather); i += 1)
    {
        with (id_feather[i])
            instance_destroy();
    }
}
