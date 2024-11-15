instance_create(205, 205, obj_ceroba_npc);
instance_create(156, 200, obj_starlo_npc);
instance_create(130, 190, obj_player_npc);
obj_starlo_npc.npc_direction = "right";
obj_player_npc.npc_direction = "right";
scene = -1;
timer = 60;
audio_stop_sound(obj_radio.current_song);
