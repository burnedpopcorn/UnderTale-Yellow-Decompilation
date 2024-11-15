var song_pitch;

song_pitch = audio_sound_get_pitch(mus_showdown);

if (song_pitch < 1)
{
    audio_sound_pitch(mus_showdown, song_pitch + 0.02);
}
else
{
    audio_sound_pitch(mus_showdown, 1);
    instance_destroy();
}
