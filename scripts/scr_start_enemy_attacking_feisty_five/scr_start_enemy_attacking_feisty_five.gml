function scr_start_enemy_attacking_feisty_five()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
    
    with (obj_enemy_controller_feisty_four)
    {
        if (global.attack_cycle == 0)
        {
            case_exec = "T0 Quote Ed";
        }
        else if (global.attack_cycle == 1)
        {
            case_exec = "T1 Vanish Ed";
        }
        else if (global.attack_cycle == 2)
        {
            case_exec = "T2 Vanish Moray";
        }
        else if (global.attack_cycle == 3)
        {
            case_exec = "T3 Quote Mooch 1";
        }
        else if (global.attack_cycle == 4)
        {
            case_exec = "T4 Appear Ed";
        }
        else if (global.attack_cycle == 5)
        {
            case_exec = "T5 Vanish Ed";
        }
        else if (global.attack_cycle == 6)
        {
            case_exec = "T6 Vanish Moray";
        }
        else if (global.attack_cycle == 7)
        {
            case_exec = "T7 Quote Mooch";
        }
        else if (global.attack_cycle == 8)
        {
            case_exec = "T8 Vanish Mooch";
        }
        else if (global.attack_cycle == 9)
        {
            case_exec = "T9 Vanish Moray";
            event_user(0);
            case_exec = "T9 Vanish Ed";
            event_user(0);
        }
        else if (global.attack_cycle == 10)
        {
            case_exec = "T10 Vanish Ace";
            event_user(0);
            case_exec = "T10 Vanish Mooch";
            event_user(0);
        }
        
        if (global.attack_cycle != 9 && global.attack_cycle != 10)
            event_user(0);
    }
}
