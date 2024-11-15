if (live_call())
    return global.live_result;

image_xscale = 0;
image_yscale = 0;
scene = 0;
cutscene_timer = 0;
spawner = -4;
audio_play_sound(snd_bullet_warning, 1, 0);
