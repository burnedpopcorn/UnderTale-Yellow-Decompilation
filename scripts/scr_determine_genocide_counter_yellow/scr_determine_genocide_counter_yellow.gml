function scr_determine_genocide_counter_yellow()
{
    var enemy_dead_total, world_current, current_room_overworld;
    
    if (!global.enemy_dead && !global.enemy_dead_2 && !global.enemy_dead_3)
        exit;
    
    enemy_dead_total = 0;
    world_current = scr_determine_world_value_yellow();
    enemy_dead_total += (global.enemy_dead + global.enemy_dead_2 + global.enemy_dead_3);
    current_room_overworld = global.current_room_overworld;
    global.kill_area[world_current][global.kill_area_current] -= enemy_dead_total;
    
    if ((world_current > 1 && !global.geno_complete[world_current - 1]) || (world_current == 3 && global.snowdin_flag[21] == 0) || (world_current == 3 && global.dunes_flag[26] == 2))
        exit;
    
    if (global.battling_boss == false)
    {
        global.kill_number[world_current] -= enemy_dead_total;
        
        if (global.kill_number[world_current] <= 0)
        {
            global.route = 3;
            global.geno_complete[world_current] = true;
        }
    }
}
