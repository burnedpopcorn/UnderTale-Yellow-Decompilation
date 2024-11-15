function scr_radio_fade(argument0, argument1)
{
    var fade_vol, fade_len;
    
    fade_vol = argument0;
    fade_len = argument1;
    
    with (obj_radio)
        audio_sound_gain(current_song, fade_vol, fade_len);
}
