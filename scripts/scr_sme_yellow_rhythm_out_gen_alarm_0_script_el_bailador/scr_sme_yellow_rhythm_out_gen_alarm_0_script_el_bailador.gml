function scr_sme_yellow_rhythm_out_gen_alarm_0_script_el_bailador()
{
    with (obj_heart_battle_fighting_parent)
        moveable = false;
    
    instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    instance_create(0, 0, obj_quote_battle_el_bailador_finale);
}
