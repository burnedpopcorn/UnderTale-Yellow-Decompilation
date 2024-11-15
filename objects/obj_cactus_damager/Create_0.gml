global.current_hp_self = clamp(global.current_hp_self - 5, 1, 999);
audio_play_sound(snd_hurt, 20, false);
scr_screenshake_battle(12, 6);
