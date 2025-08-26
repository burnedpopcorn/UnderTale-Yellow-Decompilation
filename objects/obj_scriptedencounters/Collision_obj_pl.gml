instance_create(obj_pl.x - 4, obj_pl.y - 26, obj_exclamation_mark);
global.battle_enemy_name = enc_name[0];

for (var i = 0; i < array_length_1d(enc_name); i++)
    ds_list_add(global.encounter_list, enc_name[i]);

global.current_room_overworld = room_get_name(room);
global.battling_boss = false;
global.battle_start = true;
enc_flag = true;
instance_destroy();

if (ds_map_find_value(global.npc_map, npc_id) != enc_flag)
    ds_map_replace(global.npc_map, npc_id, enc_flag);
