function scr_recreate_heart_battle_menu_text_sweet_corn_duo()
{
    var last_text_move_select = global.last_text_move_select;
    
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
    else if (global.battle_menu_number == 1 && ((global.enemy_dead == true && global.fight_number == 1) || (global.enemy_dead_2 == true && global.fight_number == 2)))
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_dead);
        text_deadlock_contents_1 = spr_cafe_sign;
        text_deadlock_1 = true;
    }
    else if ((global.enemy_low_hp == true && global.enemy_dead == false && global.enemy_spared == false) || (global.enemy_low_hp_2 == true && global.enemy_dead_2 == false && global.enemy_spared_2 == false))
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
    else if ((global.enemy_sparing == true && global.enemy_dead == false && global.enemy_spared == false) || (global.enemy_sparing_2 == true && global.enemy_dead_2 == false && global.enemy_spared_2 == false))
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_sparing);
        text_deadlock_contents_1 = spr_flashback_ceroba_run_worried;
        text_deadlock_1 = true;
    }
    else if (global.hurt_self == false)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_special);
        text_deadlock_contents_1 = spr_fight_yellow_locked;
        text_deadlock_1 = true;
    }
    else
    {
        var random_text_move_select;
        
        if ((global.enemy_dead + global.enemy_spared + global.enemy_dead_2 + global.enemy_spared_2) < 1)
            random_text_move_select = irandom_range(1, 5);
        else
            random_text_move_select = irandom_range(1, 3);
        
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
    }
}
