var fight_number, enemy_vulnerable_hold, player_weapon_attack_original, player_attack_original;

fight_number = global.fight_number;

if (fight_number == 1)
    enemy_vulnerable_hold = global.enemy_vulnerable;
else if (fight_number == 2)
    enemy_vulnerable_hold = global.enemy_vulnerable_2;
else if (fight_number == 3)
    enemy_vulnerable_hold = global.enemy_vulnerable_3;

player_weapon_attack_original = global.player_weapon_attack;
player_attack_original = global.player_attack;

switch (global.player_weapon_modifier)
{
    case "Silver Ammo":
        if (shot_type == "weak")
        {
            global.player_attack *= 0.5;
            global.player_weapon_attack *= 0.5;
        }
        else if (shot_type == "strong")
        {
            global.player_attack *= 1.75;
            global.player_weapon_attack *= 1.75;
        }
        
        break;
}

if (global.battling_boss == true)
    scr_damage_determination_boss(dd_type);
else if (global.fight_number == 1)
    scr_damage_determination_enemy(dd_type);
else if (global.fight_number == 2)
    scr_damage_determination_enemy_2(dd_type);
else if (global.fight_number == 3)
    scr_damage_determination_enemy_3(dd_type);

global.player_attack = player_attack_original;
global.player_weapon_attack = player_weapon_attack_original;

if (fight_number == 1)
    global.enemy_vulnerable = enemy_vulnerable_hold;
else if (fight_number == 2)
    global.enemy_vulnerable_2 = enemy_vulnerable_hold;
else if (fight_number == 3)
    global.enemy_vulnerable_3 = enemy_vulnerable_hold;
