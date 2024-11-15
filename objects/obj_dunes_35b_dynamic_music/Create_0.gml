with (obj_dunes_35b_dynamic_music)
{
    if (instance_exists(obj_audio_fade_helper))
        instance_destroy(obj_audio_fade_helper);
    
    audio_sound_gain(obj_radio.current_song, 0, 600);
    current_mus = 0;
}
