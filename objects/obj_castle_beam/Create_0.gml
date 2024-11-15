var blast_sound;

if (live_call())
    return global.live_result;

blast_sound = audio_play_sound(snd_kamehamehablast, 1, 0);
audio_sound_pitch(blast_sound, 0.75);
scene = 0;
cutscene_timer = 0;
draw_alpha = 0;
scr_screenshake(10, 4);
