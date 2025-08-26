if (room != rm_battle && room != rm_dunes_18)
{
    instance_destroy();
}
else
{
    var current_mus_pos = audio_sound_get_track_position(mus_dunes_cave_outdoors);
    audio_sound_gain(obj_radio.current_song, 0, 600);
    
    if (music_in_battle == true)
    {
        audio_sound_gain(obj_radio.current_song, 0, 0);
        music_in_battle = false;
    }
}
