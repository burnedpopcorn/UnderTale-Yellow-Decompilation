if (live_call())
    return global.live_result;

scr_audio_fade_out(40, 1500);
audio_play_sound(snd_undertale_explosion, 1, 0);
draw_alpha = 0;
scene = 0;
cutscene_timer = 0;
