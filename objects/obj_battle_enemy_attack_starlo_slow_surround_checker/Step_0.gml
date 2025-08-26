var song_pitch = audio_sound_get_pitch(mus_showdown);

if (song_pitch > 0.75)
    audio_sound_pitch(mus_showdown, song_pitch - 0.01);

if (starlo_take_aim_fade_out == true)
{
    if (starlo_take_aim_overlay_alpha > 0.1)
    {
        starlo_take_aim_overlay_alpha = lerp(starlo_take_aim_overlay_alpha, 0, 0.2);
    }
    else
    {
        starlo_take_aim_overlay_alpha = 0;
        instance_destroy();
    }
}
else if (starlo_take_aim_overlay_alpha < 0.98)
{
    starlo_take_aim_overlay_alpha = lerp(starlo_take_aim_overlay_alpha, 1, 0.15);
}
else
{
    starlo_take_aim_overlay_alpha = 1;
}
