function scr_start_enemy_no_attack_insomnitot_duo()
{
    var battle_menu_number = global.battle_menu_number;
    var fight_number = global.fight_number;
    var act_number = global.act_number;
    var enemy_dead = global.enemy_dead;
    var enemy_dead_2 = global.enemy_dead_2;
    var enemy_spared = global.enemy_spared;
    var enemy_spared_2 = global.enemy_spared_2;
    end_loop = false;
    
    if (battle_menu_number == 1)
    {
        if (fight_number == 1)
        {
            if (enemy_dead == false && enemy_spared == false)
            {
                instance_create(220, 132, obj_quote_bubble_battle_yellow_2);
                instance_create(0, 0, obj_quote_battle_insomnitot_a_no_attack);
            }
            else if (enemy_dead_2 == false && enemy_spared_2 == false)
            {
                instance_create(242, 132, obj_quote_bubble_battle_yellow_2_reverse);
                instance_create(0, 0, obj_quote_battle_insomnitot_b_no_attack);
            }
        }
        else if (fight_number == 2)
        {
            if (enemy_dead_2 == false && enemy_spared_2 == false)
            {
                instance_create(242, 132, obj_quote_bubble_battle_yellow_2_reverse);
                instance_create(0, 0, obj_quote_battle_insomnitot_b_no_attack);
            }
            else if (enemy_dead == false && enemy_spared == false)
            {
                instance_create(220, 132, obj_quote_bubble_battle_yellow_2);
                instance_create(0, 0, obj_quote_battle_insomnitot_a_no_attack);
            }
        }
    }
    else if (battle_menu_number == 2)
    {
        if (act_number == 1)
        {
            instance_create(220, 132, obj_quote_bubble_battle_yellow_2);
            instance_create(0, 0, obj_quote_battle_insomnitot_a_no_attack);
        }
        else if (act_number == 2)
        {
            instance_create(242, 132, obj_quote_bubble_battle_yellow_2_reverse);
            instance_create(0, 0, obj_quote_battle_insomnitot_b_no_attack);
        }
    }
    else
    {
        var random_number = irandom_range(1, 2);
        
        while (end_loop == false)
        {
            if (random_number == 1 && enemy_dead == false && enemy_spared == false)
            {
                instance_create(220, 132, obj_quote_bubble_battle_yellow_2);
                instance_create(0, 0, obj_quote_battle_insomnitot_a_no_attack);
                end_loop = true;
                break;
            }
            else if (random_number == 2 && enemy_dead_2 == false && enemy_spared_2 == false)
            {
                instance_create(242, 132, obj_quote_bubble_battle_yellow_2_reverse);
                instance_create(0, 0, obj_quote_battle_insomnitot_b_no_attack);
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
