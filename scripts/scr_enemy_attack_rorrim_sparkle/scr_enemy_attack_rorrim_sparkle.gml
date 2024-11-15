function scr_enemy_attack_rorrim_sparkle()
{
    var distance;
    
    distance = 20;
    global.attack_counter_max = 30;
    
    if (global.attack_counter == 0 && global.timer_attacks_counter < 5)
    {
        if (global.timer_attacks_counter == 0)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance, obj_dialogue_box_battle_transformation_any.bbox_top - distance, obj_battle_enemy_attack_rorrim_sparkle);
        else if (global.timer_attacks_counter == 1)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance, obj_dialogue_box_battle_transformation_any.bbox_top - distance, obj_battle_enemy_attack_rorrim_sparkle);
        else if (global.timer_attacks_counter == 2)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance, obj_dialogue_box_battle_transformation_any.bbox_top - distance, obj_battle_enemy_attack_rorrim_sparkle);
        else if (global.timer_attacks_counter == 3)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance, obj_dialogue_box_battle_transformation_any.bbox_top - distance, obj_battle_enemy_attack_rorrim_sparkle);
        
        global.timer_attacks_counter += 1;
    }
}
