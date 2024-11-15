with (obj_microf_cutscene)
    instance_destroy();

draw = false;
global.battle_enemy_name = "micro froggit";
global.exclamation_mark_type = "nothing";
global.battling_enemy = false;
global.battling_boss = true;
global.battle_start = true;
global.current_room_overworld = room_get_name(room);
instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle);
obj_pl.image_alpha = 0;
audio_stop_all();
instance_destroy();
