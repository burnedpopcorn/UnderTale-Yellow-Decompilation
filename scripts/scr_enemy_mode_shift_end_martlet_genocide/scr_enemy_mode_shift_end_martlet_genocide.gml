function scr_enemy_mode_shift_end_martlet_genocide()
{
    var reset_counters = false;
    var enemy_mode = global.enemy_mode;
    
    switch (enemy_mode)
    {
        case 2:
            if (global.hit_count >= 3)
            {
                global.enemy_mode_previous = global.enemy_mode;
                global.enemy_mode = 3;
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
            global.enemy_mode_gen = 1;
            break;
        
        case 2:
        case 3:
            global.enemy_mode_gen = 2;
            break;
        
        case 4:
            global.enemy_mode_gen = 3;
            break;
        
        case 5:
        case 6:
            global.enemy_mode_gen = 4;
            break;
    }
    
    if (global.enemy_mode_gen != enemy_mode_gen_current)
        global.enemy_mode_gen_previous = enemy_mode_gen_current;
    
    if (reset_counters == true)
    {
        global.turns_passed = 0;
        global.action_1_selected_count = 0;
        global.action_2_selected_count = 0;
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
