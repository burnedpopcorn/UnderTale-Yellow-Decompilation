function scr_start_enemy_attacking_jandroid_goosic_duo()
{
    var dialogue_1_spawn, dialogue_2_spawn, fight_number, act_number, enemy_dead, enemy_dead_2, enemy_spared, enemy_spared_2, rnd, bubble, quote;
    
    if (live_call())
        return global.live_result;
    
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    dialogue_1_spawn = false;
    dialogue_2_spawn = false;
    fight_number = global.fight_number;
    act_number = global.act_number;
    enemy_dead = global.enemy_dead;
    enemy_dead_2 = global.enemy_dead_2;
    enemy_spared = global.enemy_spared;
    enemy_spared_2 = global.enemy_spared_2;
    end_loop = false;
    
    if ((((global.battle_menu_number == 2 && act_number == 1) || (global.battle_menu_number == 1 && fight_number == 1)) && enemy_dead == false && enemy_spared == false) || (enemy_spared_2 == true && enemy_spared == false) || (enemy_dead_2 == true && enemy_dead == false))
    {
        dialogue_1_spawn = true;
    }
    else if ((((global.battle_menu_number == 2 && act_number == 2) || (global.battle_menu_number == 1 && fight_number == 2)) && enemy_dead_2 == false && enemy_spared_2 == false) || (enemy_spared == true && enemy_spared_2 == false) || (enemy_dead == true && enemy_dead_2 == false))
    {
        dialogue_2_spawn = true;
    }
    else
    {
        rnd = choose(1, 2);
        
        if ((rnd == 1 && !enemy_dead && !enemy_spared) || (enemy_dead_2 || enemy_spared_2))
            dialogue_1_spawn = true;
        else
            dialogue_2_spawn = true;
    }
    
    if (dialogue_1_spawn)
    {
        instance_create(242, 60, obj_quote_bubble_battle_yellow_2);
        instance_create(0, 0, obj_quote_battle_jandroid_a);
    }
    
    if (dialogue_2_spawn)
    {
        bubble = instance_create(220, 60, obj_quote_bubble_battle_yellow_2_reverse);
        quote = instance_create_depth(0, 0, -1000, obj_quote_battle_goosic_b);
    }
    
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red_slippery);
}
