function scr_determine_death_count_yellow_old()
{
    var battle_enemy_name;
    
    battle_enemy_name = global.battle_enemy_name;
    
    if (battle_enemy_name == "dalv")
        global.death_count[1] += 1;
    else if (battle_enemy_name == "martlet pacifist")
        global.death_count[2] += 1;
    
    global.death_count_total += 1;
}
