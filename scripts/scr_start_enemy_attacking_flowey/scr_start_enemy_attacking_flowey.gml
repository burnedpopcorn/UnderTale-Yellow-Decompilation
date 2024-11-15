function scr_start_enemy_attacking_flowey()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    
    if (global.enemy_attack == "Flowey Corrupt Attack 2")
    {
        instance_create(0, 0, obj_battle_el_bailador_controller);
        instance_create_depth(0, 0, -1000, obj_battle_enemy_attack_bailador_checker_corrupt);
        
        with (obj_dialogue_box_battle_transformation_any)
        {
            sc_able = true;
            sc_direction = "In";
            sc_dcurrent = 0;
            sc_speed = 0.1;
            sc_in_script = scr_start_enemy_attacking_flowey_ext;
            sc_out_script = scr_sme_yellow_rhythm_out_script_el_bailador;
            sc_sprite = spr_sme_yellow_rhythm_box;
        }
        
        instance_create(obj_dialogue_box_battle_transformation_any.x, obj_dialogue_box_battle_transformation_any.y, obj_heart_battle_fighting_red);
    }
    else if (global.enemy_attack == "Flowey Corrupt Attack 5")
    {
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_axis);
        instance_create(0, 0, obj_battle_enemy_attack_axis_shield);
        
        with (obj_heart_battle_fighting_parent)
            moveable = true;
    }
    else
    {
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
        
        with (obj_heart_battle_fighting_parent)
            moveable = true;
    }
}
