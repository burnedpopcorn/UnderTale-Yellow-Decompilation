var fight_number = global.fight_number;
var battle_enemy_name = global.battle_enemy_name;
var enemy_vulnerable_hold;

if (fight_number == 1)
    enemy_vulnerable_hold = global.enemy_vulnerable;
else if (fight_number == 2)
    enemy_vulnerable_hold = global.enemy_vulnerable_2;
else if (fight_number == 3)
    enemy_vulnerable_hold = global.enemy_vulnerable_3;

var player_weapon_attack_original = global.player_weapon_attack;
var player_attack_original = global.player_attack;

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
            global.player_attack *= 1.25;
            global.player_weapon_attack *= 1.25;
        }
        
        break;
}

if (global.battling_boss == true)
{
    if (battle_enemy_name == "dalv")
    {
        if (global.action_2_important == true)
            global.enemy_sparing = true;
        
        scr_damage_determination_boss(dd_type);
    }
    else if (battle_enemy_name == "axis genocide" && (global.geno_complete[4] || (global.geno_complete[3] && global.attack_cycle < global.attack_cycle_max)))
    {
        global.attacking_damage_stat = 0;
        instance_create(319, 120, obj_text_damage_count);
        audio_play_sound(10, 20, false, 1, 0, random_range(0.8, 1.2));
        damage_type = "normal";
        var attack_code = instance_create(0, 0, obj_battle_boss_attacking_code);
        attack_code.alarm[1] = 20;
    }
    else if (battle_enemy_name == "axis" && instance_exists(obj_battle_enemy_axis_generator))
    {
        global.attacking_damage_stat = 0;
        instance_create(319, 120, obj_text_damage_count);
        audio_play_sound(354, 20, false, 1, 0, random_range(0.8, 1.2));
        damage_type = "normal";
        var attack_code = instance_create(0, 0, obj_battle_boss_attacking_code);
        attack_code.alarm[1] = 20;
    }
    else if (battle_enemy_name == "micro froggit")
    {
        if (shot_type != "strong")
        {
            global.attacking_damage_stat = 0;
            instance_create(319, 120, obj_text_damage_count);
            audio_play_sound(364, 20, false, 1, 0, random_range(0.8, 1.2));
            damage_type = "normal";
            var attack_code = instance_create(0, 0, obj_battle_boss_attacking_code);
            attack_code.alarm[1] = 20;
        }
        else
        {
            scr_damage_determination_boss(dd_type);
        }
    }
    else if (battle_enemy_name == "macro froggit")
    {
        global.attacking_damage_stat = 0;
        instance_create(319, 120, obj_text_damage_count);
        audio_play_sound(635, 20, false, 1, 0, random_range(0.8, 1.2));
        damage_type = "normal";
        var attack_code = instance_create(0, 0, obj_battle_boss_attacking_code);
        attack_code.alarm[1] = 20;
    }
    else if (battle_enemy_name == "ceroba")
    {
        global.attacking_damage_stat = 0;
        instance_create(319, 120, obj_text_damage_count);
        
        with (obj_ceroba_phase_2_shield)
        {
            audio_play_sound(snd_ceroba_shield_impact, 1, 0);
            audio_play_sound(snd_monster_damage_miss, 1, 0);
            hit_show_timer = 30;
            bullet_hit_draw_timer = 5;
        }
        
        damage_type = "normal";
        var attack_code = instance_create(0, 0, obj_battle_boss_attacking_code);
        attack_code.alarm[1] = 20;
    }
    else
    {
        scr_damage_determination_boss(dd_type);
    }
}
else if (global.fight_number == 1)
{
    scr_damage_determination_enemy(dd_type);
}
else if (global.fight_number == 2)
{
    scr_damage_determination_enemy_2(dd_type);
}
else if (global.fight_number == 3)
{
    scr_damage_determination_enemy_3(dd_type);
}

global.player_attack = player_attack_original;
global.player_weapon_attack = player_weapon_attack_original;

if (fight_number == 1)
    global.enemy_vulnerable = enemy_vulnerable_hold;
else if (fight_number == 2)
    global.enemy_vulnerable_2 = enemy_vulnerable_hold;
else if (fight_number == 3)
    global.enemy_vulnerable_3 = enemy_vulnerable_hold;
