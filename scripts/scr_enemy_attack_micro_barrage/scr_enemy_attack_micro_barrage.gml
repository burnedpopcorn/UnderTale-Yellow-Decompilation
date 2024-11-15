function scr_enemy_attack_micro_barrage()
{
    global.attack_counter_max = 15;
    
    if (global.attack_counter == 0 && global.timer_attacks_counter < 10)
    {
        if (global.timer_attacks_counter < 5)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right - 6, obj_dialogue_box_battle_transformation_any.bbox_bottom - 6, obj_battle_enemy_attack_micro_barrage);
        else
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left + 7, obj_dialogue_box_battle_transformation_any.bbox_bottom - 6, obj_battle_enemy_attack_micro_barrage);
        
        global.timer_attacks_counter += 1;
    }
}
