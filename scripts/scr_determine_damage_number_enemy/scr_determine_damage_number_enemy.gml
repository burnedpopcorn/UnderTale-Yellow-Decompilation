function scr_determine_damage_number_enemy(arg0, arg1, arg2)
{
    var enemy_count = global.enemy_count;
    
    if (global.battle_enemy_name_1 == arg0)
        return 1;
    else if (enemy_count >= 2 && global.battle_enemy_name_2 == arg1)
        return 2;
    else if (enemy_count >= 3 && global.battle_enemy_name_3 == arg2)
        return 3;
    else
        return 0;
}
