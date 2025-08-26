function scr_enemy_attack_crispy_laser()
{
    var distance_x = 27;
    var distance_y = 26;
    global.attack_counter_max = 40;
    
    if (global.attack_counter == 0 && global.timer_attacks_counter < 6)
    {
        if (obj_heart_battle_fighting_parent.y < (obj_dialogue_box_battle_transformation_any.bbox_top + round(obj_dialogue_box_battle_transformation_any.sprite_height / 3)))
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance_x, obj_dialogue_box_battle_transformation_any.bbox_top + distance_y, obj_battle_enemy_attack_crispy_laser);
        else if (obj_heart_battle_fighting_parent.y > (obj_dialogue_box_battle_transformation_any.bbox_bottom - round(obj_dialogue_box_battle_transformation_any.sprite_height / 3)))
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance_x, obj_dialogue_box_battle_transformation_any.bbox_bottom - distance_y, obj_battle_enemy_attack_crispy_laser);
        else
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance_x, round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_battle_enemy_attack_crispy_laser);
        
        global.timer_attacks_counter += 1;
    }
}
