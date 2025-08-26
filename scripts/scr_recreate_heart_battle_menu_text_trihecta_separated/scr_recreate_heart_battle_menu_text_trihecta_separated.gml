function scr_recreate_heart_battle_menu_text_trihecta_separated()
{
    var last_text_move_select = global.last_text_move_select;
    var heart_position = script_execute(scr_return_heart_battle_menu_position);
    
    if (text_deadlock_1 == true)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, text_deadlock_contents_1);
    }
    else if (last_text_move_select == 0)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_intro);
        text_deadlock_contents_1 = spr_audience_joy_sign;
        text_deadlock_1 = true;
    }
    else if ((global.enemy_low_hp == true && global.enemy_dead == false && global.enemy_spared == false) || (global.enemy_low_hp_2 == true && global.enemy_dead_2 == false && global.enemy_spared_2 == false) || (global.enemy_low_hp_3 == true && global.enemy_dead_3 == false && global.enemy_spared_3 == false))
    {
        var random_number = irandom_range(1, 3);
        
        if (random_number == 1)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_low_hp_1);
            text_deadlock_contents_1 = spr_goosic_head_hurt;
        }
        else if (random_number == 2)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_low_hp_1_v2);
            text_deadlock_contents_1 = spr_axis_battery_meter;
        }
        else if (random_number == 3)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_low_hp_1_v3);
            text_deadlock_contents_1 = spr_hotland_cold_man;
        }
        
        text_deadlock_1 = true;
    }
    else
    {
        var random_number = irandom_range(1 + sign(global.enemy_dead + global.enemy_spared), 3 - sign(global.enemy_dead_3 + global.enemy_spared_3));
        
        if (random_number == 2 && (global.enemy_dead_2 == true || global.enemy_spared_2 == true))
        {
            random_number = irandom_range(1 + sign(global.enemy_dead + global.enemy_spared), 2 - sign(global.enemy_dead_3 + global.enemy_spared_3));
            
            if (random_number == 2)
                random_number = 3;
        }
        
        var random_text_move_select;
        
        if (random_number == 1)
        {
            if ((global.enemy_dead_2 + global.enemy_spared_2 + global.enemy_dead_3 + global.enemy_spared_3) < 2)
                random_text_move_select = irandom_range(1, 3);
            else
                random_text_move_select = irandom_range(1, 2);
        }
        else if (random_number == 2)
        {
            if ((global.enemy_dead + global.enemy_spared + global.enemy_dead_3 + global.enemy_spared_3) < 2)
                random_text_move_select = irandom_range(1, 3);
            else
                random_text_move_select = irandom_range(1, 2);
        }
        else if (random_number == 3)
        {
            if ((global.enemy_dead + global.enemy_spared + global.enemy_dead_2 + global.enemy_spared_2) < 2)
                random_text_move_select = irandom_range(1, 3);
            else
                random_text_move_select = irandom_range(1, 2);
        }
        
        if (random_number == 1)
        {
            if (random_text_move_select == 1)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_1);
                text_deadlock_contents_1 = spr_sousborg_egg_fire_burn;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 2)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_2);
                text_deadlock_contents_1 = spr_sousborg_egg_smoke;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 3)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_3);
                text_deadlock_contents_1 = spr_credits_SPROUT_BLOOM;
                text_deadlock_1 = true;
            }
        }
        else if (random_number == 2)
        {
            if (random_text_move_select == 1)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_1_v2);
                text_deadlock_contents_1 = spr_martlet_head_smirk_battle;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 2)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_2_v2);
                text_deadlock_contents_1 = spr_pacifist_ending_starlo_kneel_getup;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 3)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_3);
                text_deadlock_contents_1 = spr_credits_SPROUT_BLOOM;
                text_deadlock_1 = true;
            }
        }
        else if (random_number == 3)
        {
            if (random_text_move_select == 1)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_1_v3);
                text_deadlock_contents_1 = spr_arcade_controls_buttons;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 2)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_2_v3);
                text_deadlock_contents_1 = spr_petal_pull_petal4;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 3)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_3);
                text_deadlock_contents_1 = spr_credits_SPROUT_BLOOM;
                text_deadlock_1 = true;
            }
        }
    }
}
