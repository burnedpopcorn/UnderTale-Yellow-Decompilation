if (live_call())
    return global.live_result;

image_blend = c_red;
audio_play_sound(snd_bullet_warning, 1, 0);
alarm[2] = 6;
