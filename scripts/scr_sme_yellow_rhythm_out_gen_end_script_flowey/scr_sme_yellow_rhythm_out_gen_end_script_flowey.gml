function scr_sme_yellow_rhythm_out_gen_end_script_flowey()
{
    with (obj_battle_enemy_attack_el_bailador_dance)
        event_user(1);
    
    with (obj_dialogue_box_battle_transformation_any)
        sc_direction = "Out";
}
