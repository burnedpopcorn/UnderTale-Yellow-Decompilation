function scr_audio_fade_out(arg0, arg1)
{
    var snd = arg0;
    var fade_len = arg1;
    
    if (!audio_is_playing(snd))
        return false;
    
    audio_sound_gain(snd, 0, fade_len);
    
    if (instance_exists(obj_audio_fade_helper))
    {
        with (obj_audio_fade_helper)
        {
            if (audio_to_fade == snd)
                return false;
        }
    }
    
    with (instance_create(0, 0, obj_audio_fade_helper))
        audio_to_fade = snd;
}
