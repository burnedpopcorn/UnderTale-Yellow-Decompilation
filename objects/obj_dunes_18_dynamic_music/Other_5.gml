if (!instance_exists(obj_transition))
{
    music_in_battle = true;
    exit;
}

scr_audio_fade_out(mus_dunes_cave_outdoors, 600);
audio_sound_gain(obj_radio.current_song, 1, 300);
