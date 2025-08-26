function scr_sme_yellow_rhythm_song_data_danza(arg0 = 499, arg1 = false, arg2 = false, arg3 = 2, arg4 = [520, 517, 514])
{
    can_end_script = true;
    var sound = array_create(array_length(arg1), 0);
    
    for (var i = 0; i < array_length(sound); i++)
        sound[i] = arg4[arg2[i]];
    
    scr_audio_stop_sound(1);
    audio_play = arg0;
    audio_sound_gain(audio_play, 1, 0);
    audio_sound_pitch(audio_play, 1);
    audio_play_sound(audio_play, 20, false);
    note_1second = 30;
    note_speed_denominator = 30 * arg3;
    note_speed = note_speed_numerator / note_speed_denominator;
    note_current = 0;
    note_time = 0;
    note_add = 0;
    note_total = array_length(arg1);
    note_final = false;
    
    if (song_play_ct == 0)
        timeline = timeline_add();
    else if (!timeline_exists(timeline))
        timeline = timeline_add();
    else
        timeline_clear(timeline);
    
    note_time = (arg1[0] * note_1second) - note_speed_denominator;
    note_sarray[0] = sound[0];
    note_parray[0] = arg2[0];
    timeline_moment_add_script(timeline, note_time, scr_sme_yellow_rhythm_create_note);
    
    for (var i = 1; i < array_length(arg1); i++)
    {
        note_add = (arg1[i] - arg1[i - 1]) * note_1second;
        note_time += note_add;
        note_sarray[i] = sound[i];
        note_parray[i] = arg2[i];
        timeline_moment_add_script(timeline, note_time, scr_sme_yellow_rhythm_create_note);
    }
    
    timeline_index = timeline;
    timeline_loop = false;
    timeline_speed = 1;
    timeline_position = 0;
    timeline_running = true;
    song_play_ct += 1;
}
