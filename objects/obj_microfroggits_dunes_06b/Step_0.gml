if (irandom(300) == 1 && !alarm[0])
{
    var mf_sound = audio_play_sound(snd_tinyfroggit, 1, 0);
    audio_sound_pitch(mf_sound, irandom_range(0.75, 1.25));
    alarm[0] = 60;
}
