var enemy_count;

enemy_count = global.enemy_count;
damage = (global.enemy_attack_stat - global.player_armor_defense - global.player_armor_modifier_defense - global.player_defense) + 10;

if (damage < 1)
    damage = 1;

if (enemy_count >= 2)
{
    damage_2 = (global.enemy_attack_stat_2 - global.player_armor_defense - global.player_armor_modifier_defense - global.player_defense) + 10;
    
    if (damage_2 < 1)
        damage_2 = 1;
}

if (enemy_count >= 3)
{
    damage_3 = (global.enemy_attack_stat_3 - global.player_armor_defense - global.player_armor_modifier_defense - global.player_defense) + 10;
    
    if (damage_3 < 1)
        damage_3 = 1;
}
