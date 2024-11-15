for (i = 0; i < 5; i++)
    instance_create_depth(x, y, depth - 999999, obj_heart_death_screen_broken_shard);

audio_play_sound(snd_soul_gameover_hit_break, 20, false);
instance_destroy();
