if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    if (!audio_is_playing(snd_snore) && !snoring_cutscene)
    {
        if (snore_count == 5)
        {
            audio_sound_gain(mus_the_wild_east_hospital, 0, 100);
            audio_play_sound(mus_snoring_justice, 1, 0);
            snoring_cutscene = true;
        }
        else
        {
            audio_play_sound(snd_snore, 1, 0);
            snore_count += 1;
        }
    }
}

if (snoring_cutscene)
{
    if (!audio_is_playing(mus_snoring_justice) || instance_exists(obj_transition))
    {
        if (audio_is_playing(mus_snoring_justice))
            audio_stop_sound(mus_snoring_justice);
        
        audio_sound_gain(mus_the_wild_east_hospital, 1, 100);
        snoring_cutscene = false;
        snore_count += 1;
    }
}
