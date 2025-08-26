function scr_enemy_mode_shift_end_martlet_pacifist()
{
    var reset_counters = false;
    var enemy_mode = global.enemy_mode;
    
    switch (enemy_mode)
    {
        case 5:
            if (global.turns_passed >= 6)
            {
                global.enemy_mode_previous = global.enemy_mode;
                global.enemy_mode = 6;
                reset_counters = true;
            }
            
            break;
        
        case 6:
            if (global.action_3_selected_count >= 2)
            {
                global.enemy_mode_previous = global.enemy_mode;
                global.enemy_mode = 7;
                reset_counters = true;
            }
            
            break;
    }
    
    enemy_mode = global.enemy_mode;
    var enemy_mode_gen_preprevious = global.enemy_mode_gen_previous;
    var enemy_mode_gen_current = global.enemy_mode_gen;
    
    switch (enemy_mode)
    {
        case 0:
            global.enemy_mode_gen = 0;
            break;
        
        case 1:
        case 4:
        case 5:
        case 6:
        case 7:
            global.enemy_mode_gen = 1;
            break;
        
        case 2:
        case 3:
            global.enemy_mode_gen = 2;
            break;
        
        case 8:
        case 9:
            global.enemy_mode_gen = 3;
            break;
        
        case 10:
        case 11:
        case 12:
            global.enemy_mode_gen = 4;
            break;
    }
    
    if (global.enemy_mode_gen != enemy_mode_gen_current)
        global.enemy_mode_gen_previous = enemy_mode_gen_current;
    
    if ((enemy_mode_gen_preprevious == 1 && global.enemy_mode_gen_previous == 2 && global.enemy_mode_gen == 1) || (enemy_mode_gen_preprevious == 2 && global.enemy_mode_gen_previous == 1 && global.enemy_mode_gen == 2))
    {
        global.enemy_mode_previous = global.enemy_mode;
        global.enemy_mode = 12;
        reset_counters = true;
        enemy_mode = global.enemy_mode;
        enemy_mode_gen_current = global.enemy_mode_gen;
        global.enemy_mode_gen = 4;
        
        if (global.enemy_mode_gen != enemy_mode_gen_current)
            global.enemy_mode_gen_previous = enemy_mode_gen_current;
    }
    
    switch (enemy_mode)
    {
        case 6:
        case 7:
            global.action_amount = 3;
            break;
        
        default:
            global.action_amount = 2;
    }
    
    switch (enemy_mode)
    {
        case 7:
            global.action_3_important = true;
            break;
        
        default:
            global.action_3_important = false;
    }
    
    if (reset_counters == true)
    {
        global.turns_passed = 0;
        global.action_1_selected_count = 0;
        global.action_2_selected_count = 0;
        global.action_3_selected_count = 0;
        global.spare_selected_count = 0;
        global.hit_count = 0;
        global.miss_count = 0;
        global.no_hit_count = 0;
        global.hurt_self_count = 0;
        global.hurt_self_turn_count = 0;
        global.item_use_count = 0;
        global.item_gift_count = 0;
    }
}
