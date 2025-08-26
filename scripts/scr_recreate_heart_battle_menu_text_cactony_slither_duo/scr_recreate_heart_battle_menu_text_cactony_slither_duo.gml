function scr_recreate_heart_battle_menu_text_cactony_slither_duo()
{
    var last_text_move_select = global.last_text_move_select;
    var action_3_selected_count_2 = global.action_3_selected_count_2;
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
    else if (global.battle_menu_number == 1 && (global.enemy_dead == true && global.fight_number == 1))
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_dead_2);
        text_deadlock_contents_1 = spr_hotland_complex_3_dark;
        text_deadlock_1 = true;
    }
    else if (global.battle_menu_number == 1 && (global.enemy_dead_2 == true && global.fight_number == 2))
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_dead);
        text_deadlock_contents_1 = spr_cafe_sign;
        text_deadlock_1 = true;
    }
    else if (global.enemy_low_hp == true && global.enemy_dead == false && global.enemy_spared == false)
    {
        var random_number = irandom_range(1, 2);
        
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
        
        text_deadlock_1 = true;
    }
    else if (global.enemy_low_hp_2 == true && global.enemy_dead_2 == false && global.enemy_spared_2 == false)
    {
        var random_number = irandom_range(1, 2);
        
        if (random_number == 1)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_low_hp_2);
            text_deadlock_contents_1 = spr_credits_raft_water_start;
        }
        else if (random_number == 2)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_low_hp_2_v2);
            text_deadlock_contents_1 = spr_ceroba_phase_2_staff;
        }
        
        text_deadlock_1 = true;
    }
    else if (global.enemy_sparing == true && global.enemy_dead == false && global.enemy_spared == false)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_sparing);
        text_deadlock_contents_1 = spr_flashback_ceroba_run_worried;
        text_deadlock_1 = true;
    }
    else if (global.enemy_sparing_2 == true && global.enemy_dead_2 == false && global.enemy_spared_2 == false)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_sparing_2);
        text_deadlock_contents_1 = spr_audience_joy_martlet;
        text_deadlock_1 = true;
    }
    else
    {
        var random_number = irandom_range(1, 2);
        
        if (global.enemy_dead == true || global.enemy_spared == true)
            random_number = 2;
        else if (global.enemy_dead_2 == true || global.enemy_spared_2 == true)
            random_number = 1;
        
        var random_text_move_select;
        
        if (random_number == 1)
        {
            if ((global.enemy_dead_2 + global.enemy_spared_2) < 1)
                random_text_move_select = irandom_range(1, 7);
            else
                random_text_move_select = irandom_range(1, 4);
        }
        else if (random_number == 2)
        {
            if ((global.enemy_dead + global.enemy_spared) < 1)
                random_text_move_select = irandom_range(1, 6);
            else
                random_text_move_select = irandom_range(1, 5);
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
            else if (random_text_move_select == 4)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_4);
                text_deadlock_contents_1 = spr_credits_miner_snake;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 5)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_5);
                text_deadlock_contents_1 = spr_sir_slither_neck;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 6)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_6);
                text_deadlock_contents_1 = spr_shot_strong_flint;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 7)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_7);
                text_deadlock_contents_1 = spr_ceroba_attack_mask_large;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 8)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_8);
                text_deadlock_contents_1 = spr_battle_enemy_attack_axis_laser_hands;
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
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_3_v2);
                text_deadlock_contents_1 = spr_steamworks_puzzle_arrows;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 4)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_4_v2);
                text_deadlock_contents_1 = spr_new_steamworks_darkgear;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 5)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_5_v2);
                text_deadlock_contents_1 = spr_conveyor_puzzle_hint_blue_base;
                text_deadlock_1 = true;
            }
            else if (random_text_move_select == 6)
            {
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_6_v2);
                text_deadlock_contents_1 = spr_ceroba_obstacle_bell;
                text_deadlock_1 = true;
            }
        }
    }
}
