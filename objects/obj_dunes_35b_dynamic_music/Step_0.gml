if (obj_pl.x < 140 && current_mus == 0)
{
    current_mus = 1;
    
    if (audio_is_playing(mus_cafe_arcade))
    {
        audio_sound_gain(mus_cafe_arcade, 1, 600);
        audio_sound_gain(obj_radio.current_song, 0, 600);
        exit;
    }
    
    var dynamic_mus = audio_play_sound(mus_cafe_arcade, 1, 1);
    audio_sound_gain(dynamic_mus, 0, 0);
    var dynamic_mus_pos = audio_sound_get_track_position(obj_radio.current_song);
    audio_sound_set_track_position(dynamic_mus, dynamic_mus_pos);
    audio_sound_gain(obj_radio.current_song, 0, 600);
    audio_sound_gain(dynamic_mus, 1, 600);
}
else if (obj_pl.x >= 140 && current_mus == 1)
{
    current_mus = 0;
    scr_audio_fade_out(mus_cafe_arcade, 600);
    audio_sound_gain(obj_radio.current_song, 1, 300);
}
