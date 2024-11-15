function scr_audio_fade(argument0, argument1)
{
    var snd, fade_len;
    
    snd = argument0;
    fade_len = argument1;
    
    with (obj_radio)
    {
        audio_other_fade = true;
        audio_to_fade = snd;
        audio_fade_length = fade_len;
    }
}
