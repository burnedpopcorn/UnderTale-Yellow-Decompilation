function scr_sme_yellow_rhythm_song_data_danza(argument0 = 499, argument1 = false, argument2 = false, argument3 = 2, argument4 = [520, 517, 514])
{
    var sound, i;
    
    can_end_script = true;
    sound = array_create(array_length(argument1), 0);
    
    for (i = 0; i < array_length(sound); i++)
        sound[i] = argument4[argument2[i]];
    
    scr_audio_stop_sound(1);
    audio_play = argument0;
    audio_sound_gain(audio_play, 1, 0);
    audio_sound_pitch(audio_play, 1);
    audio_play_sound(audio_play, 20, false);
    note_1second = 30;
    note_speed_denominator = 30 * argument3;
    note_speed = note_speed_numerator / note_speed_denominator;
    note_current = 0;
    note_time = 0;
    note_add = 0;
    note_total = array_length(argument1);
    note_final = false;
    
    if (song_play_ct == 0)
        timeline = timeline_add();
    else if (!timeline_exists(timeline))
        timeline = timeline_add();
    else
        timeline_clear(timeline);
    
    note_time = (argument1[0] * note_1second) - note_speed_denominator;
    note_sarray[0] = sound[0];
    note_parray[0] = argument2[0];
    timeline_moment_add_script(timeline, note_time, scr_sme_yellow_rhythm_create_note);
    
    for (i = 1; i < array_length(argument1); i++)
    {
        note_add = (argument1[i] - argument1[i - 1]) * note_1second;
        note_time += note_add;
        note_sarray[i] = sound[i];
        note_parray[i] = argument2[i];
        timeline_moment_add_script(timeline, note_time, scr_sme_yellow_rhythm_create_note);
    }
    
    timeline_index = timeline;
    timeline_loop = false;
    timeline_speed = 1;
    timeline_position = 0;
    timeline_running = true;
    song_play_ct += 1;
}
