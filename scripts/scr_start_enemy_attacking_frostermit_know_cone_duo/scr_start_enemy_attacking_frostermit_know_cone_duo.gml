function scr_start_enemy_attacking_frostermit_know_cone_duo()
{
    var battle_menu_number, fight_number, act_number, enemy_dead, enemy_dead_2, enemy_spared, enemy_spared_2, random_number;
    
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    battle_menu_number = global.battle_menu_number;
    fight_number = global.fight_number;
    act_number = global.act_number;
    enemy_dead = global.enemy_dead;
    enemy_dead_2 = global.enemy_dead_2;
    enemy_spared = global.enemy_spared;
    enemy_spared_2 = global.enemy_spared_2;
    end_loop = false;
    
    if (battle_menu_number == 1)
    {
        if (fight_number == 1)
        {
            if (enemy_dead == false && enemy_spared == false)
            {
                instance_create(242, 132, obj_quote_bubble_battle_yellow_2_reverse);
                instance_create(0, 0, obj_quote_battle_frostermit_a);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
            }
            else if (enemy_dead_2 == false && enemy_spared_2 == false)
            {
                instance_create(170, 84, obj_quote_bubble_battle_yellow_3);
                instance_create(0, 0, obj_quote_battle_know_cone_b);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
            }
        }
        else if (fight_number == 2)
        {
            if (enemy_dead_2 == false && enemy_spared_2 == false)
            {
                instance_create(170, 84, obj_quote_bubble_battle_yellow_3);
                instance_create(0, 0, obj_quote_battle_know_cone_b);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
            }
            else if (enemy_dead == false && enemy_spared == false)
            {
                instance_create(242, 132, obj_quote_bubble_battle_yellow_2_reverse);
                instance_create(0, 0, obj_quote_battle_frostermit_a);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
            }
        }
    }
    else if (battle_menu_number == 2)
    {
        if (global.last_action_selected == "Action 2 Out" && global.enemy_low_hp_2 == false)
        {
            instance_create(170, 84, obj_quote_bubble_battle_yellow_3);
            instance_create(0, 0, obj_quote_battle_know_cone_b);
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
        }
        else if (act_number == 1)
        {
            instance_create(242, 132, obj_quote_bubble_battle_yellow_2_reverse);
            instance_create(0, 0, obj_quote_battle_frostermit_a);
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
        }
        else if (act_number == 2)
        {
            instance_create(170, 84, obj_quote_bubble_battle_yellow_3);
            instance_create(0, 0, obj_quote_battle_know_cone_b);
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
        }
    }
    else
    {
        random_number = irandom_range(1, 2);
        
        while (end_loop == false)
        {
            if (random_number == 1 && enemy_dead == false && enemy_spared == false)
            {
                instance_create(242, 132, obj_quote_bubble_battle_yellow_2_reverse);
                instance_create(0, 0, obj_quote_battle_frostermit_a);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                end_loop = true;
                break;
            }
            else if (random_number == 2 && enemy_dead_2 == false && enemy_spared_2 == false)
            {
                instance_create(170, 84, obj_quote_bubble_battle_yellow_3);
                instance_create(0, 0, obj_quote_battle_know_cone_b);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                end_loop = true;
                break;
            }
            else if (random_number == 1)
            {
                random_number = 2;
            }
            else
            {
                random_number = 1;
            }
        }
    }
}