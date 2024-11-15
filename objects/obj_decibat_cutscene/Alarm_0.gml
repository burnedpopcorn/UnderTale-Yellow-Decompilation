global.battle_enemy_name = "decibat";
global.exclamation_mark_type = "nothing";
global.battling_enemy = false;
global.battling_boss = true;
global.battle_start = true;
global.current_room_overworld = room_get_name(room);
audio_stop_all();
room_goto(rm_battle);
