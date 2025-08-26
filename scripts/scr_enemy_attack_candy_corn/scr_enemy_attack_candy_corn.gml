function scr_enemy_attack_candy_corn()
{
    var distance_x = 20;
    var distance_y = 26;
    var max_variations = 3;
    global.attack_counter_max = 25;
    
    if (global.attack_counter == 0 && global.timer_attacks_counter < 6)
    {
        if (global.timer_attacks_counter == 0)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance_x, obj_dialogue_box_battle_transformation_any.bbox_top + distance_y, obj_battle_enemy_attack_candy_corn);
        else if (global.timer_attacks_counter == 1)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance_x, round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_battle_enemy_attack_candy_corn);
        else if (global.timer_attacks_counter == 2)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance_x, obj_dialogue_box_battle_transformation_any.bbox_bottom - distance_y, obj_battle_enemy_attack_candy_corn);
        else if (global.timer_attacks_counter == 3)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance_x, obj_dialogue_box_battle_transformation_any.bbox_top + distance_y, obj_battle_enemy_attack_candy_corn);
        else if (global.timer_attacks_counter == 4)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance_x, round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_battle_enemy_attack_candy_corn);
        else if (global.timer_attacks_counter == 5)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance_x, obj_dialogue_box_battle_transformation_any.bbox_bottom - distance_y, obj_battle_enemy_attack_candy_corn);
        
        global.timer_attacks_counter += 1;
    }
}
