function scr_enemy_attack_dalv_lightning_vertical()
{
    if (global.attack_counter_max != 40)
    {
        global.attack_counter_max = 40;
        global.attack_counter = global.attack_counter_max;
    }
    
    if (global.attack_counter == 0)
        instance_create(obj_heart_battle_fighting_parent.x, round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_battle_enemy_attack_dalv_lightning_vertical_warning);
}
