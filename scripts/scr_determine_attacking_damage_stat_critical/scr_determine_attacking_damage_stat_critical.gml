function scr_determine_attacking_damage_stat_critical()
{
    var player_weapon = global.player_weapon;
    var player_weapon_modifier = global.player_weapon_modifier;
    var enemy_count = global.enemy_count;
    
    switch (player_weapon)
    {
        case "Toy Gun":
            switch (player_weapon_modifier)
            {
                case "Pebble Ammo":
                case "Cff Bean Ammo":
                case "Glass Ammo":
                case "Super Ammo":
                case "Silver Ammo":
                    var hit_count = 1;
                    break;
                
                case "Ice Pellets":
                    var hit_count = 2;
                    break;
                
                case "Flint":
                case "Friendliness Pellets":
                case "Nails":
                    var hit_count = 3;
                    break;
                
                default:
                    var hit_count = 1;
            }
            
            global.attacking_damage_stat_critical = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + 2) * 2.5);
            
            if (enemy_count >= 2)
                global.attacking_damage_stat_critical_2 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_2) + 2) * 2.5);
            
            if (enemy_count >= 3)
                global.attacking_damage_stat_critical_3 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_3) + 2) * 2.5);
            
            break;
        
        case "Wild Revolver":
            switch (player_weapon_modifier)
            {
                case "Pebble Ammo":
                case "Cff Bean Ammo":
                case "Glass Ammo":
                case "Super Ammo":
                case "Silver Ammo":
                    var hit_count = 1;
                    break;
                
                case "Ice Pellets":
                    var hit_count = 2;
                    break;
                
                case "Flint":
                case "Friendliness Pellets":
                case "Nails":
                    var hit_count = 3;
                    break;
                
                default:
                    var hit_count = 1;
            }
            
            global.attacking_damage_stat_critical = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + 2) * 3.5);
            
            if (enemy_count >= 2)
                global.attacking_damage_stat_critical_2 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_2) + 2) * 3.5);
            
            if (enemy_count >= 3)
                global.attacking_damage_stat_critical_3 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_3) + 2) * 3.5);
            
            break;
        
        default:
            global.attacking_damage_stat_critical = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + 2) * 2.5);
            
            if (enemy_count >= 2)
                global.attacking_damage_stat_critical_2 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_2) + 2) * 2.5);
            
            if (enemy_count >= 3)
                global.attacking_damage_stat_critical_3 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_3) + 2) * 2.5);
    }
}
