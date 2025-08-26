if (live_call())
    return global.live_result;

if (image_index >= (image_number - 1))
{
    image_alpha = 0;
    
    if (!alarm[1])
        alarm[1] = spawn_delay;
}

if (image_index >= 3 && !audio_noloop)
{
    audio_noloop = true;
    var twinkle = audio_play_sound(snd_axis_twinkle, 1, 0);
    audio_sound_pitch(twinkle, random_range(0.8, 1.2));
    audio_sound_gain(twinkle, 0.7, 0);
}
