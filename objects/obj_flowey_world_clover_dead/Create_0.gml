scr_cutscene_start();
obj_pl.image_alpha = 0;
sprite_index = obj_pl.sprite_index;
image_index = obj_pl.image_index;
image_speed = 0;
audio_play_sound(snd_monster_damage_hit, 1, 0);
