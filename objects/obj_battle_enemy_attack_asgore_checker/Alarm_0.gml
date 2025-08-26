if (live_call())
    return global.live_result;

var random_number = irandom_range(0, ds_list_size(spawner_list) - 1);
var attack_instance = ds_list_find_value(spawner_list, random_number);
ds_list_delete(spawner_list, random_number);
instance_create(0, 0, attack_instance);

if (ds_list_empty(spawner_list))
    ds_list_copy(spawner_list, spawner_list_original);
