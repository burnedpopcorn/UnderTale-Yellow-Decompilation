function scr_enemy_attack_dalv_lightning_dual()
{
    if (global.attack_counter_max != 40)
    {
        global.attack_counter_max = 40;
        global.attack_counter = 20;
    }
    
    if (global.attack_counter == 0)
    {
        if (global.timer_attacks_counter == 0)
            instance_create(obj_heart_battle_fighting_parent.x, round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_battle_enemy_attack_dalv_lightning_vertical_warning);
        else if (global.timer_attacks_counter == 1)
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)) + 1, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_dalv_lightning_horizontal_warning);
        
        global.timer_attacks_counter += 1;
        
        if (global.timer_attacks_counter > 1)
            global.timer_attacks_counter = 0;
    }
}
