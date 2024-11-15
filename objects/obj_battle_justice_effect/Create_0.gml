if (live_call())
    return global.live_result;

depth = -99999;
audio_play_sound(snd_justice_effect, 1, 0);
overlay_offset = 120;
sin_degree = 160;
draw_alpha = 0;
stage = 1;
box_size = 0;
box_alpha = 0;
box_stage = 0;
destroy_timer = 120;
scr_screenshake_battle_custom(8, 2);
