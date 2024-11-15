if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "ceroba_phase_switch":
            audio_play_sound(snd_ceroba_yell, 1, 0);
            audio_sound_gain(mus_trial_by_fury_2, 1, 0);
            audio_sound_pitch(mus_trial_by_fury_2, 1);
            audio_play_sound(mus_trial_by_fury_2, 20, true);
            scr_screenshake_battle(6, 2);
            break;
    }
}
