function scr_determine_damage_number_enemy(argument0, argument1, argument2)
{
    var enemy_count;
    
    enemy_count = global.enemy_count;
    
    if (global.battle_enemy_name_1 == argument0)
        return 1;
    else if (enemy_count >= 2 && global.battle_enemy_name_2 == argument1)
        return 2;
    else if (enemy_count >= 3 && global.battle_enemy_name_3 == argument2)
        return 3;
    else
        return 0;
}
