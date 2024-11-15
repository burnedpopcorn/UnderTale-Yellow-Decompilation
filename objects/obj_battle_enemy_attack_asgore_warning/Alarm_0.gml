if (live_call())
    return global.live_result;

audio_play_sound(snd_bullet_warning, 1, 0);
alarm[0] = 3;
