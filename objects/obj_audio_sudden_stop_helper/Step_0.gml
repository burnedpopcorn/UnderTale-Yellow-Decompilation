if (audio_stop == true)
{
    if (current_pitch == -1)
        current_pitch = 1;
    
    current_pitch -= fade_strength;
    audio_sound_pitch(audio_to_fade, floor(current_pitch * 100) / 100);
    
    if (current_pitch < 0.1)
    {
        audio_sound_pitch(audio_to_fade, 0);
        audio_pause_sound(audio_to_fade);
        instance_destroy();
    }
}
else
{
    if (current_pitch == -1)
        current_pitch = 0;
    
    current_pitch += fade_strength;
    audio_sound_pitch(audio_to_fade, floor(current_pitch * 100) / 100);
    
    if (current_pitch >= 0.9)
    {
        audio_sound_pitch(audio_to_fade, 1);
        instance_destroy();
    }
}
