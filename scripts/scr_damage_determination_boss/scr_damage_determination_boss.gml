function scr_damage_determination_boss(arg0)
{
    switch (arg0)
    {
        case "Gun Single":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy;
            global.attacking_damage_stat_critical = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + 2) * 2.5);
            r = random_range(0, 2);
            
            switch (shot_type)
            {
                case "strong":
                    b = 2.5;
                    break;
                
                case "medium":
                    b = 2;
                    break;
                
                default:
                    b = 1.5;
            }
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + r) * b);
            break;
        
        case "Gun Multi":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy;
            global.attacking_damage_stat_critical = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + 2) * 2.5);
            r = random_range(0, 2);
            b = 1.5;
            var b_diff = 1 / circle_count;
            var st_temp;
            
            for (st_temp = shot_total; st_temp > 3; st_temp -= 3)
                b += b_diff;
            
            switch (st_temp)
            {
                case 3:
                    b += b_diff;
                    break;
                
                case 2:
                    b += (0.8 * b_diff);
                    break;
                
                default:
                    b += (0.6 * b_diff);
            }
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + r) * clamp(b, 1.5, 3));
            break;
        
        case "Revolver Single":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy;
            global.attacking_damage_stat_critical = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + 2) * 3.5);
            r = random_range(0, 2);
            b = 0;
            var b_inc = 0.5833333333333334;
            
            switch (shot_type)
            {
                case "strong":
                    b += b_inc;
                    break;
                
                case "medium":
                    b += (b_inc * 0.5);
                    break;
                
                default:
                    b = 0;
            }
            
            var st_temp;
            
            for (st_temp = shot_total_pre; st_temp > 3; st_temp -= 3)
                b += b_inc;
            
            switch (st_temp)
            {
                case 3:
                    b += b_inc;
                    break;
                
                case 2:
                    b += (b_inc * 0.5);
                    break;
                
                default:
                    b += 0;
            }
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + r) * b);
            break;
        
        case "Revolver Multi":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy;
            global.attacking_damage_stat_critical = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + 2) * 3.5);
            r = random_range(0, 2);
            b = 0;
            var b_inc = 0.5833333333333334;
            var st_temp;
            
            for (st_temp = shot_total; st_temp > 3; st_temp -= 3)
                b += b_inc;
            
            switch (st_temp)
            {
                case 3:
                    b += b_inc;
                    break;
                
                case 2:
                    b += (b_inc / 2);
                    break;
                
                default:
                    b += 0;
            }
            
            for (st_temp = shot_total_pre; st_temp > 3; st_temp -= 3)
                b += b_inc;
            
            switch (st_temp)
            {
                case 3:
                    b += b_inc;
                    break;
                
                case 2:
                    b += (b_inc / 2);
                    break;
                
                default:
                    b += 0;
            }
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + r) * b);
            break;
        
        default:
            global.attacking_damage_stat_betrayal = global.current_hp_enemy;
            global.attacking_damage_stat_critical = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + 2) * 2.2);
            r = random_range(0, 2);
            
            if (x == 319)
                b = 2.2;
            else
                b = abs(x - 319) / (obj_target_battle.sprite_width / 2);
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_attack) - global.enemy_defense_stat) + r) * b);
    }
    
    if (global.attacking_damage_cap >= 0)
    {
        if (global.attacking_damage_stat > global.attacking_damage_cap)
            global.attacking_damage_stat = global.attacking_damage_cap;
        
        if (global.attacking_damage_stat_critical > global.attacking_damage_cap)
            global.attacking_damage_stat_critical = global.attacking_damage_cap;
    }
    
    if (global.attacking_damage_stat < 5)
        global.attacking_damage_stat = 5;
    
    if (global.attacking_damage_stat_critical < 5)
        global.attacking_damage_stat_critical = 5;
    
    var boss_mini = global.boss_mini;
    
    if (button_pressed == true)
    {
        if (global.enemy_sparing == true && global.enemy_vulnerable == true)
        {
            global.last_hp_enemy = global.current_hp_enemy;
            global.current_hp_enemy = 0;
            global.enemy_betrayed = true;
            damage_type = "betrayed";
            
            if (boss_mini == true)
                instance_create(global.enemy_damage_x, global.enemy_damage_y, obj_text_damage_count);
            else
                instance_create(319, 120, obj_text_damage_count);
            
            audio_play_sound(snd_monster_damage_hit_critical, 20, false);
        }
        else if (global.enemy_vulnerable == true)
        {
            if ((arg0 == "Knife Single" && x == 319) || ((arg0 == "Gun Single" || arg0 == "Revolver Single") && b == 3.5) || ((arg0 == "Gun Multi" || arg0 == "Revolver Multi") && b == 3.5) || global.current_hp_enemy <= global.attacking_damage_stat_critical)
            {
                global.last_hp_enemy = global.current_hp_enemy;
                global.current_hp_enemy -= global.attacking_damage_stat_critical;
                damage_type = "critical";
                
                if (boss_mini == true)
                    instance_create(global.enemy_damage_x, global.enemy_damage_y, obj_text_damage_count);
                else
                    instance_create(319, 120, obj_text_damage_count);
                
                audio_play_sound(snd_monster_damage_hit_critical, 20, false);
            }
            else
            {
                global.last_hp_enemy = global.current_hp_enemy;
                global.current_hp_enemy -= global.attacking_damage_stat;
                damage_type = "normal";
                
                if (boss_mini == true)
                    instance_create(global.enemy_damage_x, global.enemy_damage_y, obj_text_damage_count);
                else
                    instance_create(319, 120, obj_text_damage_count);
                
                audio_play_sound(snd_monster_damage_hit, 20, false);
            }
        }
        else if (boss_mini == true)
        {
            instance_create(global.enemy_damage_x, global.enemy_damage_y, obj_text_miss);
        }
        else
        {
            instance_create(319, 120, obj_text_miss);
        }
    }
    else if (boss_mini == true)
    {
        instance_create(global.enemy_damage_x, global.enemy_damage_y, obj_text_miss);
    }
    else
    {
        instance_create(319, 120, obj_text_miss);
    }
    
    instance_create(0, 0, obj_battle_boss_attacking_code);
    
    if (instance_exists(obj_text_damage_count))
    {
        if (boss_mini == true)
        {
            instance_create(obj_text_damage_count.x - 52, obj_text_damage_count.y + 26, obj_battle_hp_current_boss_attacking_mini);
            instance_create(obj_text_damage_count.x - 52, obj_text_damage_count.y + 26, obj_battle_hp_previous_boss_attacking_mini);
            instance_create(obj_text_damage_count.x - 52, obj_text_damage_count.y + 26, obj_battle_hp_max_boss_attacking_mini);
        }
        else if (global.battle_enemy_name != "ceroba")
        {
            instance_create(192, 152, obj_battle_hp_current_boss_attacking);
            instance_create(192, 152, obj_battle_hp_previous_boss_attacking);
            instance_create(192, 152, obj_battle_hp_max_boss_attacking);
        }
    }
    
    scr_determine_can_display_damage_ui(1);
    
    if (global.current_hp_enemy <= global.attacking_damage_stat_critical && instance_exists(obj_text_damage_count))
        global.enemy_low_hp = true;
    
    if (instance_exists(obj_text_damage_count))
        script_execute(scr_determine_hit_special_effect_boss);
    
    if (instance_exists(obj_text_fighting_parent))
        script_execute(scr_determine_attack_bonus);
}
