var dynamic_mus, dynamic_mus_pos;

if (global.route == 3 || (global.dunes_flag[20] == 9 && (global.dunes_flag[24] == 0 || global.dunes_flag[24] == 2)))
{
    instance_destroy();
    exit;
}

if (instance_exists(obj_audio_fade_helper))
    instance_destroy(obj_audio_fade_helper);

dynamic_mus = audio_play_sound(mus_the_wild_east_barn, 1, 1);
dynamic_mus_pos = audio_sound_get_track_position(obj_radio.current_song);
audio_sound_set_track_position(dynamic_mus, dynamic_mus_pos);
audio_sound_gain(dynamic_mus, 0, 0);
audio_sound_gain(dynamic_mus, 1, 300);
audio_sound_gain(obj_radio.current_song, 0, 600);
