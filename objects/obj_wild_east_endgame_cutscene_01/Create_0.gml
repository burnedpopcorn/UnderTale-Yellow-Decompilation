if (live_call())
    return global.live_result;

scene = -1;
cutscene_timer = 0;
draw_alpha = 1;
scr_cutscene_start();
obj_pl.image_alpha = 0;
audio_stop_sound(obj_radio.current_song);
cutscene_music = 154;
audio_play_sound(cutscene_music, 1, 1);
