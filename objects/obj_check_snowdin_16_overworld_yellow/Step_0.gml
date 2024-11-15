if ((instance_exists(obj_transition) && obj_transition.fadein == false) || global.snowdin_flag[11] == 1)
    audio_sound_gain(snd_snowdin_bridge, 0, 500);

if (!audio_is_playing(mus_ambient_river))
    audio_play_sound(mus_ambient_river, 20, 1);
