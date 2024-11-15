if (live_call())
    return global.live_result;

audio_sound_set_track_position(glitch_sound, random_range(0.5, audio_sound_length(glitch_sound) * 0.9));
alarm[0] = 3;
