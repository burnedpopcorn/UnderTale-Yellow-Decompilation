function scr_recreate_heart_battle_menu_text_ceroba()
{
    var last_text_move_select, random_text_move_select;
    
    last_text_move_select = global.last_text_move_select;
    
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
    else
    {
        switch (global.hotland_flag[2])
        {
            case 0:
                random_text_move_select = irandom_range(1, 8);
            
            default:
                random_text_move_select = irandom_range(1, 5);
        }
        
        switch (random_text_move_select)
        {
            case 1:
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_1);
                break;
            
            case 2:
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_2);
                break;
            
            case 3:
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_3);
                break;
            
            case 4:
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_4);
                break;
            
            case 5:
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_5);
                break;
            
            case 6:
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_6);
                break;
            
            case 7:
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_7);
                break;
            
            case 8:
                instance_create(obj_dialogue_box_battle.x + 20, obj_dialogue_box_battle.x + 20, obj_dialogue_battle_move_select_8);
                break;
        }
        
        text_deadlock_contents_1 = 3020;
        text_deadlock_1 = true;
    }
}
