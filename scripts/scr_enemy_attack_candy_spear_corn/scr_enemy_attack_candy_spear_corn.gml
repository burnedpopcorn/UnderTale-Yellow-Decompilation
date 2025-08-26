function scr_enemy_attack_candy_spear_corn()
{
    var distance = 20;
    global.attack_counter_max = 25;
    
    if (global.attack_counter == 0)
    {
        if (global.timer_attacks_counter == 0)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_candy_corn);
        else if (global.timer_attacks_counter == 1)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_candy_corn);
        
        global.timer_attacks_counter += 1;
        
        if (global.timer_attacks_counter > 1)
            global.timer_attacks_counter = 0;
    }
}
