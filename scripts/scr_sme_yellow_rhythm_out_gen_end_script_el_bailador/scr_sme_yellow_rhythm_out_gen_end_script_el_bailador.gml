function scr_sme_yellow_rhythm_out_gen_end_script_el_bailador()
{
    if (audio_play == 496 || audio_play == 510)
    {
        with (obj_battle_enemy_attack_el_bailador_dance)
            event_user(1);
        
        with (obj_sme_yellow_rhythm_generator)
            alarm[0] = 25;
    }
    else if (audio_play == 497 || audio_play == 511)
    {
        instance_create(0, 0, obj_battle_enemy_attack_el_bailador_whiteout);
    }
    else
    {
        with (obj_battle_enemy_attack_el_bailador_dance)
            event_user(1);
        
        with (obj_dialogue_box_battle_transformation_any)
            sc_direction = "Out";
    }
}
