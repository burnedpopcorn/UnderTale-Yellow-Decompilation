if (audio_sound_get_gain(audio_to_fade) <= 0.1)
{
    audio_stop_sound(audio_to_fade);
    audio_sound_gain(audio_to_fade, 1, 0);
    instance_destroy();
}
