function scr_start_enemy_attacking_trihecta_separated()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    var battle_menu_number = global.battle_menu_number;
    var fight_number = global.fight_number;
    var act_number = global.act_number;
    var enemy_dead = global.enemy_dead;
    var enemy_dead_2 = global.enemy_dead_2;
    var enemy_dead_3 = global.enemy_dead_3;
    var enemy_spared = global.enemy_spared;
    var enemy_spared_2 = global.enemy_spared_2;
    var enemy_spared_3 = global.enemy_spared_3;
    end_loop = false;
    
    if (battle_menu_number == 1)
    {
        if (fight_number == 1)
        {
            if (enemy_dead == false && enemy_spared == false)
            {
                instance_create(232, 42, obj_quote_bubble_battle_6);
                instance_create(0, 0, obj_quote_battle_tri);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
            }
            else
            {
                var random_number = irandom_range(1, 2);
                
                if (random_number == 1)
                {
                    if (enemy_dead_2 == false && enemy_spared_2 == false)
                    {
                        instance_create(122, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_hec);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                    else if (enemy_dead_3 == false && enemy_spared_3 == false)
                    {
                        instance_create(346, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_ta);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                }
                else if (random_number == 2)
                {
                    if (enemy_dead_3 == false && enemy_spared_3 == false)
                    {
                        instance_create(346, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_ta);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                    else if (enemy_dead_2 == false && enemy_spared_2 == false)
                    {
                        instance_create(122, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_hec);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                }
            }
        }
        else if (fight_number == 2)
        {
            if (enemy_dead_2 == false && enemy_spared_2 == false)
            {
                instance_create(122, 42, obj_quote_bubble_battle_6);
                instance_create(0, 0, obj_quote_battle_hec);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
            }
            else
            {
                var random_number = irandom_range(1, 2);
                
                if (random_number == 1)
                {
                    if (enemy_dead == false && enemy_spared == false)
                    {
                        instance_create(232, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_tri);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                    else if (enemy_dead_3 == false && enemy_spared_3 == false)
                    {
                        instance_create(346, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_ta);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                }
                else if (random_number == 2)
                {
                    if (enemy_dead_3 == false && enemy_spared_3 == false)
                    {
                        instance_create(346, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_ta);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                    else if (enemy_dead == false && enemy_spared == false)
                    {
                        instance_create(232, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_tri);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                }
            }
        }
        else if (fight_number == 3)
        {
            if (enemy_dead_3 == false && enemy_spared_3 == false)
            {
                instance_create(346, 42, obj_quote_bubble_battle_6);
                instance_create(0, 0, obj_quote_battle_ta);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
            }
            else
            {
                var random_number = irandom_range(1, 2);
                
                if (random_number == 1)
                {
                    if (enemy_dead == false && enemy_spared == false)
                    {
                        instance_create(232, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_tri);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                    else if (enemy_dead_2 == false && enemy_spared_2 == false)
                    {
                        instance_create(122, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_hec);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                }
                else if (random_number == 2)
                {
                    if (enemy_dead_2 == false && enemy_spared_2 == false)
                    {
                        instance_create(122, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_hec);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                    else if (enemy_dead == false && enemy_spared == false)
                    {
                        instance_create(232, 42, obj_quote_bubble_battle_6);
                        instance_create(0, 0, obj_quote_battle_tri);
                        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                    }
                }
            }
        }
    }
    else if (battle_menu_number == 2)
    {
        if (act_number == 1)
        {
            instance_create(232, 42, obj_quote_bubble_battle_6);
            instance_create(0, 0, obj_quote_battle_tri);
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
        }
        else if (act_number == 2)
        {
            instance_create(122, 42, obj_quote_bubble_battle_6);
            instance_create(0, 0, obj_quote_battle_hec);
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
        }
        else if (act_number == 3)
        {
            instance_create(346, 42, obj_quote_bubble_battle_6);
            instance_create(0, 0, obj_quote_battle_ta);
            instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
        }
    }
    else
    {
        var random_number = irandom_range(1, 3);
        
        while (end_loop == false)
        {
            if (random_number == 1 && enemy_dead == false && enemy_spared == false)
            {
                instance_create(232, 42, obj_quote_bubble_battle_6);
                instance_create(0, 0, obj_quote_battle_tri);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                end_loop = true;
                break;
            }
            else if (random_number == 2 && enemy_dead_2 == false && enemy_spared_2 == false)
            {
                instance_create(122, 42, obj_quote_bubble_battle_6);
                instance_create(0, 0, obj_quote_battle_hec);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                end_loop = true;
                break;
            }
            else if (random_number == 3 && enemy_dead_3 == false && enemy_spared_3 == false)
            {
                instance_create(346, 42, obj_quote_bubble_battle_6);
                instance_create(0, 0, obj_quote_battle_ta);
                instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
                end_loop = true;
                break;
            }
            else
            {
                var seed_1 = sign(enemy_dead + enemy_spared);
                var seed_2 = sign(enemy_dead_2 + enemy_spared_2);
                var seed_3 = sign(enemy_dead_3 + enemy_spared_3);
                random_number = irandom_range(1 + seed_1, 3 - seed_3);
                
                if (random_number == 2 && seed_2 == 1)
                {
                    random_number = irandom_range(1 + seed_1, 2 - seed_3);
                    
                    if (random_number == 2)
                        random_number = 3;
                }
            }
        }
    }
}
