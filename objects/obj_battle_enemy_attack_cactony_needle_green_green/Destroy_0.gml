if (heart_collided == true)
{
    var enemy_count = global.enemy_count;
    
    if (global.battle_enemy_name_1 == "cactony a" && global.enemy_low_hp == false && global.enemy_dead == false && global.enemy_spared == false)
    {
        if (global.action_1_selected_count >= 1)
            global.enemy_sparing = true;
    }
    
    if (enemy_count >= 2)
    {
        if (global.battle_enemy_name_2 == "cactony b" && global.enemy_low_hp_2 == false && global.enemy_dead_2 == false && global.enemy_spared_2 == false)
        {
            if (global.action_1_selected_count_2 >= 1)
                global.enemy_sparing = true;
        }
    }
    
    if (enemy_count >= 3)
    {
        if (global.battle_enemy_name_3 == "cactony c" && global.enemy_low_hp_3 == false && global.enemy_dead_3 == false && global.enemy_spared_3 == false)
        {
            if (global.action_1_selected_count_3 >= 1)
                global.enemy_sparing = true;
        }
    }
}
