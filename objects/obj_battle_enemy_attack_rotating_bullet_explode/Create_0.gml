if (live_call())
    return global.live_result;

scr_screenshake_battle(3, 4);
scene = 0;
cutscene_timer = 0;
draw_alpha = 0;
audio_play_sound(snd_ceroba_super_bullet_explosion, 1, 0);