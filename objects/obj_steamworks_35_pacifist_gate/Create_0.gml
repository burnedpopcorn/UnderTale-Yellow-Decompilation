if (live_call())
    return global.live_result;

noloop = false;
audio_play_sound(snd_rumble, 1, 1);
draw_alpha = 0;
