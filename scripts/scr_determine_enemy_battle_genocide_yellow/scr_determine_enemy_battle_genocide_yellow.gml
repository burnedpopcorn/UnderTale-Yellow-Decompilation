function scr_determine_enemy_battle_genocide_yellow()
{
    var current_world_value = script_execute(scr_determine_world_value_yellow);
    var enemy_count = global.enemy_count;
    var part_1 = 0;
    var part_2 = 0;
    
    switch (current_world_value)
    {
        case 1:
            part_1 = global.dark_ruins_genocide_max_total - global.dark_ruins_genocide_counter_total;
            break;
        
        case 2:
            part_1 = global.snowdin_genocide_max_total - global.snowdin_genocide_counter_total;
            break;
        
        default:
            return false;
            exit;
    }
    
    part_2 += global.enemy_dead;
    
    if (enemy_count >= 2)
        part_2 += global.enemy_dead_2;
    
    if (enemy_count >= 3)
        part_2 += global.enemy_dead_3;
    
    if ((part_1 - part_2) <= 0)
        return true;
    else
        return false;
}
