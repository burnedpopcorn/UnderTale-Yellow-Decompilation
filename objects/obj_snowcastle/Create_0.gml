if (live_call())
    return global.live_result;

npc_id = room_get_name(room) + object_get_name(object_index);

if (is_undefined(ds_map_find_value(global.npc_map, npc_id)))
    ds_map_add(global.npc_map, npc_id, 0);

npc_flag = ds_map_find_value(global.npc_map, npc_id);
image_speed = 0;
is_talking = 0;
interact = false;
scene = 0;
snow_cutscene = false;

if (npc_flag == 1)
    image_index = 12;

if (npc_flag >= 2)
    image_index = image_number - 1;
