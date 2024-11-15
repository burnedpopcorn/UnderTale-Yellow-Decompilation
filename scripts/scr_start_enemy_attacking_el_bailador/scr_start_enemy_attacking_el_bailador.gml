function scr_start_enemy_attacking_el_bailador()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    
    with (obj_dialogue_box_battle_transformation_any)
    {
        sc_able = true;
        sc_direction = "In";
        sc_dcurrent = 0;
        sc_speed = 0.1;
        sc_in_script = scr_start_enemy_attacking_el_bailador_ext;
        sc_out_script = scr_sme_yellow_rhythm_out_script_el_bailador;
        
        if (global.route != 3)
            sc_sprite = spr_sme_yellow_rhythm_box;
        else
            sc_sprite = spr_sme_yellow_rhythm_box_geno;
    }
    
    if (global.route != 3)
        instance_create(obj_dialogue_box_battle_transformation_any.bbox_left + 79, obj_dialogue_box_battle_transformation_any.bbox_top + 202, obj_heart_battle_fighting_yellow_rhythm);
    else
        instance_create(obj_dialogue_box_battle_transformation_any.x, obj_dialogue_box_battle_transformation_any.y, obj_heart_battle_fighting_red);
}
