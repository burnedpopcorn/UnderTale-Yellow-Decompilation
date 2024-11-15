function scr_enemy_attack_frostermit_pinchers()
{
    if (!instance_exists(obj_battle_enemy_attack_frostermit_pincher_left_1))
    {
        instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - 25, obj_dialogue_box_battle_transformation_any.bbox_top - 40, obj_battle_enemy_attack_frostermit_pincher_left_1);
        instance_create(0, 0, obj_battle_enemy_attack_frostermit_pincher_left_2);
        instance_create(0, 0, obj_battle_enemy_attack_frostermit_pincher_left_3_outer);
        instance_create(0, 0, obj_battle_enemy_attack_frostermit_pincher_left_3_inner);
        instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + 25, obj_dialogue_box_battle_transformation_any.bbox_top - 40, obj_battle_enemy_attack_frostermit_pincher_right_1);
        instance_create(0, 0, obj_battle_enemy_attack_frostermit_pincher_right_2);
        instance_create(0, 0, obj_battle_enemy_attack_frostermit_pincher_right_3_outer);
        instance_create(0, 0, obj_battle_enemy_attack_frostermit_pincher_right_3_inner);
    }
    
    global.attack_counter_max = 40;
    
    if (global.attack_counter == 1)
    {
        if (obj_heart_battle_fighting_parent.x < round(obj_dialogue_box_battle_transformation_any.bbox_left + (obj_dialogue_box_battle_transformation_any.sprite_width / 2)))
        {
            instance_create(obj_battle_enemy_attack_frostermit_pincher_left_1.x, obj_battle_enemy_attack_frostermit_pincher_left_1.y - 20, obj_battle_enemy_attack_frostermit_pincher_warning);
            
            with (obj_battle_enemy_attack_frostermit_pincher_warning)
                claw_position = "left";
        }
        else
        {
            instance_create(obj_battle_enemy_attack_frostermit_pincher_right_1.x, obj_battle_enemy_attack_frostermit_pincher_right_1.y - 20, obj_battle_enemy_attack_frostermit_pincher_warning);
            
            with (obj_battle_enemy_attack_frostermit_pincher_warning)
                claw_position = "right";
        }
    }
}
