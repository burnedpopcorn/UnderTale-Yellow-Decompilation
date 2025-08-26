event_inherited();
npc_id = room_get_name(room) + object_get_name(object_index);

if (is_undefined(ds_map_find_value(global.npc_map, npc_id)))
    ds_map_add(global.npc_map, npc_id, 0);

npc_flag = ds_map_find_value(global.npc_map, npc_id);
npc_voice_sfx = snd_talk_mooch;
up_sprite_idle = spr_mooch_up_talk;
right_sprite_idle = spr_mooch_right_talk;
down_sprite_idle = spr_mooch_down_talk;
left_sprite_idle = spr_mooch_left_talk;
waiter = 0;
