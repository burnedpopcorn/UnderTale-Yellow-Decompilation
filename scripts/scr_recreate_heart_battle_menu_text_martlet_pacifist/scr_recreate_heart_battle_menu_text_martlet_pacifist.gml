function scr_recreate_heart_battle_menu_text_martlet_pacifist()
{
    var last_text_move_select, enemy_mode, random_text_move_select;
    
    last_text_move_select = global.last_text_move_select;
    enemy_mode = global.enemy_mode;
    
    if (text_deadlock_1 == true)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, text_deadlock_contents_1);
    }
    else if (last_text_move_select == 0)
    {
        instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_intro);
        text_deadlock_contents_1 = 3004;
        text_deadlock_1 = true;
    }
    else if (global.enemy_mode == 3 && global.turns_passed >= 3)
    {
        random_text_move_select = irandom_range(1, 3);
        
        if (random_text_move_select == 1)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_special);
            text_deadlock_contents_1 = 3009;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 2)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_special_v2);
            text_deadlock_contents_1 = 3010;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 3)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_special_v3);
            text_deadlock_contents_1 = 3011;
            text_deadlock_1 = true;
        }
    }
    else if (global.enemy_mode == 5 && global.turns_passed >= 3)
    {
        random_text_move_select = irandom_range(1, 3);
        
        if (random_text_move_select == 1)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_special_v4);
            text_deadlock_contents_1 = 3012;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 2)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_special_v5);
            text_deadlock_contents_1 = 3014;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 3)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_special_v6);
            text_deadlock_contents_1 = 3015;
            text_deadlock_1 = true;
        }
    }
    else
    {
        random_text_move_select = irandom_range(1, 6);
        
        if (random_text_move_select == 1)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_1);
            text_deadlock_contents_1 = 3020;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 2)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_2);
            text_deadlock_contents_1 = 3021;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 3)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_3);
            text_deadlock_contents_1 = 3022;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 4)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_4);
            text_deadlock_contents_1 = 3023;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 5)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_5);
            text_deadlock_contents_1 = 3024;
            text_deadlock_1 = true;
        }
        else if (random_text_move_select == 6)
        {
            instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_6);
            text_deadlock_contents_1 = 3025;
            text_deadlock_1 = true;
        }
    }
}
