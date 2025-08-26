function scr_start_enemy_attacking_cactony_slither_duo()
{
    if (live_call())
        return global.live_result;
    
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    var dialogue_1_spawn = false;
    var dialogue_2_spawn = false;
    var enemy_dead = global.enemy_dead;
    var enemy_dead_2 = global.enemy_dead_2;
    var enemy_spared = global.enemy_spared;
    var enemy_spared_2 = global.enemy_spared_2;
    end_loop = false;
    
    if (enemy_dead == false && enemy_spared == false)
    {
        dialogue_1_spawn = true;
        
        if ((global.action_1_selected_count_2 >= 1 || global.action_2_selected_count_2 >= 1 || global.action_3_selected_count_2 >= 1) && global.last_action_selected_2 != "Nothing")
        {
            dialogue_1_spawn = false;
            global.action_1_selected_count = 0;
            global.action_2_selected_count = 0;
        }
    }
    
    if (enemy_dead_2 == false && enemy_spared_2 == false)
    {
        dialogue_2_spawn = true;
        
        if ((global.action_1_selected_count >= 1 && global.last_action_selected == "Action 1 Message 0") || global.action_2_selected_count >= 1)
            dialogue_2_spawn = false;
    }
    
    if (dialogue_1_spawn)
    {
        instance_create(100, 16, obj_quote_bubble_battle_yellow_above_thin);
        instance_create(0, 0, obj_quote_battle_cactony_a);
    }
    
    if (dialogue_2_spawn)
    {
        var bubble = instance_create(390, 16, obj_quote_bubble_battle_yellow_above_thin);
        var quote = instance_create_depth(0, 0, -1000, obj_quote_battle_slither_b);
        quote.spawner = bubble;
    }
    
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
}
