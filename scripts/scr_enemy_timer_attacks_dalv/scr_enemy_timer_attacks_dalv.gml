function scr_enemy_timer_attacks_dalv()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Dalv Lightning Vertical")
        {
            script_execute(scr_enemy_attack_dalv_lightning_vertical);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
        else if (enemy_attack == "Dalv Lightning Dual")
        {
            script_execute(scr_enemy_attack_dalv_lightning_dual);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
        else if (enemy_attack == "Dalv Lightning Balls")
        {
            script_execute(scr_enemy_attack_dalv_lightning_balls);
            
            if (global.attack_counter >= 0)
            {
                global.attack_counter -= 1;
                
                if (global.attack_counter < 0)
                    global.attack_counter = global.attack_counter_max;
            }
        }
        else if (enemy_attack == "Dalv Lightning Shift" && !instance_exists(obj_battle_enemy_attack_dalv_lightning_shift_main))
        {
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)) + 1, round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_battle_enemy_attack_dalv_lightning_shift_main);
        }
        else if (enemy_attack == "Dalv Lightning Spinner" && !instance_exists(obj_battle_enemy_attack_dalv_lightning_spinner))
        {
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_battle_enemy_attack_dalv_lightning_spinner);
        }
        else if (enemy_attack == "Dalv Lightning Bolt")
        {
            with (obj_dalv_body)
            {
                if (cloak_direction == 0)
                    cloak_direction = 1;
            }
            
            if (!instance_exists(obj_battle_enemy_attack_dalv_lightning_bolt) && obj_dalv_body.cloak_out == true)
                script_execute(scr_enemy_attack_dalv_lightning_bolt);
        }
    }
}
