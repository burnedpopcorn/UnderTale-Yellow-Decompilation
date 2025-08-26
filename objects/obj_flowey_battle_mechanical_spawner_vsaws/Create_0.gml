if (live_call())
    return global.live_result;

spawn_count = 4;
spawn_list = ds_list_create();
ds_list_add(spawn_list, 1, 2, 3, 4, 5, 6);

for (var i = 0; i < spawn_count; i++)
{
    ds_list_shuffle(spawn_list);
    x_spawn[i] = 100 * ds_list_find_value(spawn_list, 0);
    instance_create_depth(x_spawn[i], 440, -100, obj_flowey_battle_mechanical_saw_warning);
    ds_list_delete(spawn_list, 0);
}

ds_list_clear(spawn_list);
alarm[0] = 17;
