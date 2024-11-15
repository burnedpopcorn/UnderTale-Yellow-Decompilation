if (!instance_exists(obj_rndenc))
    exit;

obj_rndenc.enc_time = 0;
enc_flag = true;
instance_destroy();

if (ds_map_find_value(global.npc_map, npc_id) != enc_flag)
    ds_map_replace(global.npc_map, npc_id, enc_flag);
