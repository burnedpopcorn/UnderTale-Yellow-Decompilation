function scr_sme_yellow_rhythm_out_gen_alarm_0_script_bowll()
{
    with (obj_sme_yellow_rhythm_generator)
    {
        audio_restore = mus_danza_battle_yellow;
        script_execute(scr_sme_yellow_rhythm_song_data_danza_finale_02);
    }
}
