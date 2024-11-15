y = obj_pl.y;
x = obj_pl.x;
sprite_index = spr_pl_down;
path_start(pt_pljump, 4, path_action_stop, false);
audio_play_sound(snd_playerjump, 1, 0);
alarm[5] = 15;
