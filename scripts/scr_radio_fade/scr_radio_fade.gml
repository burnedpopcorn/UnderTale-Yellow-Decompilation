function scr_radio_fade(arg0, arg1)
{
    var fade_vol = arg0;
    var fade_len = arg1;
    
    with (obj_radio)
        audio_sound_gain(current_song, fade_vol, fade_len);
}
