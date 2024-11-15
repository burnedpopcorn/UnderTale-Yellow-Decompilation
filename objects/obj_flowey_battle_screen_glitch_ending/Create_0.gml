if (live_call())
    return global.live_result;

audio_play_sound(snd_flowey_glitch_yellow, 1, 0);
alarm[0] = 15;
noise_alpha = 0;
noise_timer = 0;
noise_timer_max = 3;
