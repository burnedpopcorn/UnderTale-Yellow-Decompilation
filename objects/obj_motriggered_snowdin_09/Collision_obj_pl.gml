scr_cutscene_start();
scr_camera_move(140, 100, 2);
obj_snowdin_09_mo.alarm[0] = 50;
audio_sound_gain(obj_radio.current_song, 0, 500);
instance_destroy();
