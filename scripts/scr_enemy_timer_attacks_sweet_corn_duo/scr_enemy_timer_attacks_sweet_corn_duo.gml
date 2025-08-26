function scr_enemy_timer_attacks_sweet_corn_duo()
{
    var enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Candy Spear Corn" && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_attack_candy_spear_corn);
        
        if (global.attack_counter >= 0)
        {
            global.attack_counter -= 1;
            
            if (global.attack_counter < 0)
                global.attack_counter = global.attack_counter_max;
        }
        
        if (!instance_exists(obj_battle_enemy_attack_spear_corn) && !instance_exists(obj_battle_enemy_attack_spear_corn_warning))
            instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_spear_corn_warning);
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Homing Spear Corn" && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (!instance_exists(obj_battle_enemy_attack_homing_corn))
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), obj_dialogue_box_battle_transformation_any.bbox_top - 20, obj_battle_enemy_attack_homing_corn);
        
        if (!instance_exists(obj_battle_enemy_attack_spear_corn) && !instance_exists(obj_battle_enemy_attack_spear_corn_warning))
            instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom - 5, obj_battle_enemy_attack_spear_corn_warning);
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && (enemy_attack == "Candy Corn" || enemy_attack == "Spear Corn" || enemy_attack == "Homing Corn") && obj_heart_battle_fighting_parent.moveable == true)
    {
        script_execute(scr_enemy_timer_attacks_sweet_corn_solo);
    }
}
