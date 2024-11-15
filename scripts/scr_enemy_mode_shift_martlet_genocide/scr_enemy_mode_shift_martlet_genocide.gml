function scr_enemy_mode_shift_martlet_genocide(argument0)
{
    var reset_counters, enemy_mode, enemy_mode_gen_preprevious, enemy_mode_gen_current;
    
    reset_counters = false;
    enemy_mode = global.enemy_mode;
    
    switch (enemy_mode)
    {
        case 0:
            if (argument0 == "Fight 1")
            {
                if (global.enemy_hit == true)
                {
                    global.enemy_mode_previous = global.enemy_mode;
                    global.enemy_mode = 2;
                    reset_counters = true;
                }
                else if (global.enemy_hit == false)
                {
                    global.enemy_mode_previous = global.enemy_mode;
                    global.enemy_mode = 1;
                    reset_counters = true;
                }
            }
            else if (argument0 == "Action 1")
            {
                global.enemy_mode_previous = global.enemy_mode;
                global.enemy_mode = 4;
                reset_counters = true;
            }
            else
            {
                global.enemy_mode_previous = global.enemy_mode;
                global.enemy_mode = 1;
                reset_counters = true;
            }
            
            break;
        
        case 1:
            if (argument0 == "Fight 1")
            {
                if (global.enemy_hit == true)
                {
                    global.enemy_mode_previous = global.enemy_mode;
                    global.enemy_mode = 2;
                    reset_counters = true;
                }
            }
            else if (argument0 == "Action 1")
            {
                global.enemy_mode_previous = global.enemy_mode;
                global.enemy_mode = 4;
                reset_counters = true;
            }
            
            break;
        
        case 2:
            if (argument0 == "Action 1")
            {
                global.enemy_mode_previous = global.enemy_mode;
                global.enemy_mode = 4;
                reset_counters = true;
            }
            
            break;
        
        case 3:
            if (argument0 == "Fight 1")
            {
                if (global.enemy_low_hp == true)
                {
                    global.enemy_mode_previous = global.enemy_mode;
                    global.enemy_mode = 5;
                    reset_counters = true;
                }
            }
            
            break;
        
        case 4:
            if (argument0 == "Fight 1")
            {
                if (global.enemy_hit == true)
                {
                    if (global.action_1_selected_count < 2)
                    {
                        global.enemy_mode_previous = global.enemy_mode;
                        global.enemy_mode = 3;
                        reset_counters = true;
                    }
                    else
                    {
                        global.enemy_mode_previous = global.enemy_mode;
                        global.enemy_mode = 6;
                        reset_counters = true;
                    }
                }
            }
            
            break;
    }
    
    enemy_mode = global.enemy_mode;
    enemy_mode_gen_preprevious = global.enemy_mode_gen_previous;
    enemy_mode_gen_current = global.enemy_mode_gen;
    
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
