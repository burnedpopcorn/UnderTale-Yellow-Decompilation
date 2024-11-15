function scr_enemy_timer_attacks_micro_froggit()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Micro Fly")
        {
            if (!instance_exists(obj_battle_enemy_attack_micro_fly))
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), obj_dialogue_box_battle_transformation_any.bbox_top - 20, obj_battle_enemy_attack_micro_fly);
        }
        else if (enemy_attack == "Micro Barrage")
        {
            script_execute(scr_enemy_attack_micro_barrage);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
    }
}
