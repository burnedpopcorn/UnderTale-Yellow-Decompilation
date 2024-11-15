function scr_enemy_attack_dalv_lightning_balls()
{
    global.attack_counter_max = 5;
    
    if (global.attack_counter == 0 && global.timer_attacks_counter < 7)
    {
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_battle_enemy_attack_dalv_lightning_ball);
        global.timer_attacks_counter += 1;
    }
}
