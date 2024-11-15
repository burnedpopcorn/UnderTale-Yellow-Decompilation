var world_current;

npc_id = room_get_name(room) + object_get_name(object_index);

if (is_undefined(ds_map_find_value(global.npc_map, npc_id)))
    ds_map_add(global.npc_map, npc_id, 0);

enc_name[0] = "flier solo";
enc_flag = ds_map_find_value(global.npc_map, npc_id);

if (enc_flag == true)
    instance_destroy();

if (instance_exists(obj_martlet_follower))
    instance_destroy();

world_current = scr_determine_world_value_yellow();

if (global.geno_complete[world_current] == true)
{
    enc_flag = true;
    instance_destroy();
    
    if (ds_map_find_value(global.npc_map, npc_id) != enc_flag)
        ds_map_replace(global.npc_map, npc_id, enc_flag);
}
