var game_over_sound;

instance_destroy();
instance_deactivate_all(true);
instance_activate_object(obj_pl);
instance_activate_object(global.party_member);
instance_activate_object(obj_controller);
instance_activate_object(obj_radio);
instance_activate_object(obj_arcade_controller);
obj_arcade_controller.arcade_game_over = true;
game_over_sound = choose(469, 470, 471);
audio_play_sound(game_over_sound, 1, 0);
audio_stop_sound(mus_mew);
audio_stop_sound(mus_mew_boss);
