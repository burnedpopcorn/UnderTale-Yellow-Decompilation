var sound_to_play;

if (irandom(sound_probability) == snd_chem_05_axis_acid_1)
{
    sound_to_play = choose(322, 323, 324);
    
    while (sound_to_play == sound_last)
        sound_to_play = choose(322, 323, 324);
    
    audio_sound_gain(sound_to_play, 0.05, 0);
    audio_sound_pitch(sound_to_play, 0.45);
    audio_play_sound(sound_to_play, 1, 0);
    sound_last = sound_to_play;
    sound_probability = 800;
}

if (sound_probability > 350)
    sound_probability--;
