depth = -y;

if (global.dunes_flag[16] > 0)
    exit;

alarm[0] = 30;

if (!audio_is_playing(snd_machinery))
    audio_play_sound(snd_machinery, 1, 1);
