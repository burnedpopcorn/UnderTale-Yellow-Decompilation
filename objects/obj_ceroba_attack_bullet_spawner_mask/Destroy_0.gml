if (live_call())
    return global.live_result;

for (var i = 0; i < ds_list_size(fireball_list); i++)
    instance_destroy(ds_list_find_value(fireball_list, i));

ds_list_clear(fireball_list);
