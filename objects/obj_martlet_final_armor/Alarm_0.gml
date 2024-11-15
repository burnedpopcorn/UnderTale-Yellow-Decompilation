if (live_call())
    return global.live_result;

audio_play_sound(snd_mirrorbreak, 1, 0);
audio_play_sound(snd_undertale_explosion, 1, 0);
image_alpha = 0;
alarm[1] = 60;
