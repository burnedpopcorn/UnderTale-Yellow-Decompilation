if (live_call())
    return global.live_result;

audio_play_sound(snd_mail_unpin, 1, 0);
ds_grid_clear(drawing_grid, 0);
