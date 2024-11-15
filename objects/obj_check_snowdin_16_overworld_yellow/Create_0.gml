if (global.snowdin_flag[11] != 1)
{
    if (!audio_is_playing(snd_snowdin_bridge))
        audio_play_sound(snd_snowdin_bridge, 20, 1);
    
    audio_sound_gain(snd_snowdin_bridge, 0, 1);
    audio_sound_gain(snd_snowdin_bridge, 0.5, 500);
}
