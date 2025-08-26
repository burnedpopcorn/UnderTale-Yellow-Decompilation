function scr_enemy_attack_decibat_wave_mini()
{
    global.attack_counter_max = 25;
    
    if (global.attack_counter == 0 && global.timer_attacks_counter < 3)
    {
        var random_wave = irandom_range(0, 1);
        
        if (random_wave == 0)
            instance_create(obj_dialogue_box_battle_transformation_any.x, obj_dialogue_box_battle_transformation_any.bbox_top - 20, obj_battle_enemy_attack_decibat_wave_mini_blue);
        else if (random_wave == 1)
            instance_create(obj_dialogue_box_battle_transformation_any.x, obj_dialogue_box_battle_transformation_any.bbox_top - 20, obj_battle_enemy_attack_decibat_wave_mini_orange);
        
        global.timer_attacks_counter += 1;
    }
}
