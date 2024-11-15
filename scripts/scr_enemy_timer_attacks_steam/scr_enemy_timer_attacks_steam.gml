function scr_enemy_timer_attacks_steam()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (enemy_attack == "Steam Puffs" && !instance_exists(obj_battle_enemy_attack_steam_puffs_creator))
        instance_create(0, 0, obj_battle_enemy_attack_steam_puffs_creator);
}
