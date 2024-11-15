function scr_sme_yellow_rhythm_out_gen_end_script_bowll()
{
    if (audio_play == 496 || audio_play == 510)
    {
        with (obj_sme_yellow_rhythm_generator)
            alarm[0] = 30;
    }
    else
    {
        with (obj_dialogue_box_battle_transformation_any)
            sc_direction = "Out";
    }
}
