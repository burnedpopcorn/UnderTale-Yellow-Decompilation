if (obj_pl.x > 690 && obj_pl.y > 260)
{
    if (!audio_is_playing(snd_machinery))
    {
        audio_play_sound(snd_machinery, 1, 1);
        audio_sound_gain(snd_machinery, 0, 0);
    }
    
    audio_sound_gain(snd_machinery, 1, 300);
}
else if (audio_is_playing(snd_machinery))
{
    scr_audio_fade_out(257, 300);
}
