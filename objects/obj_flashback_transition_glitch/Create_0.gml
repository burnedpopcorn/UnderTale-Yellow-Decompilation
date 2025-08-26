if (live_call())
    return global.live_result;

var glitch_sound = audio_play_sound(snd_flowey_glitch_yellow, 1, 0);
audio_sound_gain(glitch_sound, 0.4, 0);
audio_sound_pitch(glitch_sound, random_range(0.8, 1.2));
alarm[0] = 10;
