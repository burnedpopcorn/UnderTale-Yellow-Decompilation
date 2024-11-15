function scr_enemy_attack_decibat_wave_multi()
{
    global.attack_counter_max = 25;
    
    if (global.attack_counter == 0)
    {
        if (global.timer_attacks_counter == 0 || global.timer_attacks_counter == 2)
            instance_create(obj_decibat_body.x, obj_decibat_body.y - 10, obj_battle_enemy_attack_decibat_wave_blue);
        else if (global.timer_attacks_counter == 1)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 40, obj_dialogue_box_battle_transformation_any.y, obj_battle_enemy_attack_decibat_wave_orange);
        else if (global.timer_attacks_counter == 3)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + 40, obj_dialogue_box_battle_transformation_any.y, obj_battle_enemy_attack_decibat_wave_orange);
        
        if (global.timer_attacks_counter >= 3)
            global.timer_attacks_counter = 0;
        else
            global.timer_attacks_counter += 1;
    }
}
