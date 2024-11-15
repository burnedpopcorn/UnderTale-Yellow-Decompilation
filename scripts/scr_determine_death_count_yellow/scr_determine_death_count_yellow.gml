function scr_determine_death_count_yellow()
{
    var battle_enemy_name, death_count_array_max, i;
    
    battle_enemy_name = global.battle_enemy_name;
    
    if (battle_enemy_name == "decibat")
        global.death_count[1] += 1;
    else if (battle_enemy_name == "dalv")
        global.death_count[2] += 1;
    else if (battle_enemy_name == "micro froggit")
        global.death_count[3] += 1;
    else if (battle_enemy_name == "martlet pacifist" || battle_enemy_name == "martlet genocide")
        global.death_count[4] += 1;
    else if (battle_enemy_name == "flowey")
        global.death_count[7] += 1;
    else
        global.death_count[0] += 1;
    
    global.death_count_total = 0;
    death_count_array_max = array_length_1d(global.death_count) - 1;
    
    for (i = 0; i <= death_count_array_max; i += 1)
        global.death_count_total += global.death_count[i];
    
    scr_savegame_meta();
}
