var world_current;

world_current = scr_determine_world_value_yellow();

if (global.geno_complete[world_current] == true)
    instance_destroy();

npc_id = room_get_name(room) + object_get_name(object_index);

if (is_undefined(ds_map_find_value(global.npc_map, npc_id)))
    ds_map_add(global.npc_map, npc_id, 0);

enc_flag = ds_map_find_value(global.npc_map, npc_id);

if (enc_flag == true)
    instance_destroy();

if (instance_exists(obj_martlet_follower))
    instance_destroy();
