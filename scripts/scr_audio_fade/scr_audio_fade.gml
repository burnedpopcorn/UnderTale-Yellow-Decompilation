function scr_audio_fade(arg0, arg1)
{
    var snd = arg0;
    var fade_len = arg1;
    
    with (obj_radio)
    {
        audio_other_fade = true;
        audio_to_fade = snd;
        audio_fade_length = fade_len;
    }
}
