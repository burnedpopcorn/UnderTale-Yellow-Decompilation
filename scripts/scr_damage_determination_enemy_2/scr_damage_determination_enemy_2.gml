function scr_damage_determination_enemy_2(argument0)
{
    var b_diff, st_temp, b_inc;
    
    switch (argument0)
    {
        case "Gun Single":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy_2;
            global.attacking_damage_stat_critical_2 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_2) + 2) * 2.5);
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
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_attack) - global.enemy_defense_stat_2) + r) * b);
            break;
        
        case "Gun Multi":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy_2;
            global.attacking_damage_stat_critical_2 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_2) + 2) * 2.5);
            r = random_range(0, 2);
            b = 1.5;
            b_diff = 1 / circle_count;
            
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
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_2) + r) * clamp(b, 1.5, 3));
            break;
        
        case "Revolver Single":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy_2;
            global.attacking_damage_stat_critical_2 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_2) + 2) * 3.5);
            r = random_range(0, 2);
            b = 0;
            b_inc = 0.5833333333333334;
            
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
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_2) + r) * b);
            break;
        
        case "Revolver Multi":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy_2;
            global.attacking_damage_stat_critical_2 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + 2) * 3.5);
            r = random_range(0, 2);
            b = 0;
            b_inc = 0.5833333333333334;
            
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
            global.attacking_damage_stat_betrayal = global.current_hp_enemy_2;
            global.attacking_damage_stat_critical_2 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_2) + 2) * 2.2);
            r = random_range(0, 2);
            
            if (x == 319)
                b = 2.2;
            else
                b = abs(x - 319) / (obj_target_battle.sprite_width / 2);
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_attack) - global.enemy_defense_stat_2) + r) * b);
    }
    
    if (global.attacking_damage_cap_2 >= 0)
    {
        if (global.attacking_damage_stat > global.attacking_damage_cap_2)
            global.attacking_damage_stat = global.attacking_damage_cap_2;
        
        if (global.attacking_damage_stat_critical_2 > global.attacking_damage_cap_2)
            global.attacking_damage_stat_critical_2 = global.attacking_damage_cap_2;
    }
    
    if (global.attacking_damage_stat < 5)
        global.attacking_damage_stat = 5;
    
    if (global.attacking_damage_stat_critical_2 < 5)
        global.attacking_damage_stat_critical_2 = 5;
    
    if (button_pressed == true)
    {
        if (global.enemy_sparing_2 == true && global.enemy_vulnerable_2 == true)
        {
            global.last_hp_enemy_2 = global.current_hp_enemy_2;
            global.current_hp_enemy_2 = 0;
            global.enemy_betrayed_2 = true;
            damage_type = "betrayed";
            instance_create(global.enemy_damage_x_2, global.enemy_damage_y_2, obj_text_damage_count);
            audio_play_sound(snd_monster_damage_hit_critical, 20, false);
        }
        else if (global.enemy_vulnerable_2 == true)
        {
            if ((argument0 == "Knife Single" && x == 319) || ((argument0 == "Gun Single" || argument0 == "Revolver Single") && b == 3.5) || ((argument0 == "Gun Multi" || argument0 == "Revolver Multi") && b == 3.5) || global.current_hp_enemy_2 <= global.attacking_damage_stat_critical_2)
            {
                global.last_hp_enemy_2 = global.current_hp_enemy_2;
                global.current_hp_enemy_2 -= global.attacking_damage_stat_critical_2;
                damage_type = "critical";
                instance_create(global.enemy_damage_x_2, global.enemy_damage_y_2, obj_text_damage_count);
                audio_play_sound(snd_monster_damage_hit_critical, 20, false);
            }
            else
            {
                global.last_hp_enemy_2 = global.current_hp_enemy_2;
                global.current_hp_enemy_2 -= global.attacking_damage_stat;
                damage_type = "normal";
                instance_create(global.enemy_damage_x_2, global.enemy_damage_y_2, obj_text_damage_count);
                audio_play_sound(snd_monster_damage_hit, 20, false);
            }
        }
        else
        {
            instance_create(global.enemy_damage_x_2, global.enemy_damage_y_2, obj_text_miss);
        }
    }
    else
    {
        instance_create(global.enemy_damage_x_2, global.enemy_damage_y_2, obj_text_miss);
    }
    
    instance_create(0, 0, obj_battle_enemy_attacking_code_2);
    
    if (instance_exists(obj_text_damage_count))
    {
        instance_create(obj_text_damage_count.x - 52, obj_text_damage_count.y + 26, obj_battle_hp_current_enemy_attacking_2);
        instance_create(obj_text_damage_count.x - 52, obj_text_damage_count.y + 26, obj_battle_hp_previous_enemy_attacking_2);
        instance_create(obj_text_damage_count.x - 52, obj_text_damage_count.y + 26, obj_battle_hp_max_enemy_attacking_2);
    }
    
    scr_determine_can_display_damage_ui(2);
    
    if (global.current_hp_enemy_2 <= global.attacking_damage_stat_critical_2 && instance_exists(obj_text_damage_count))
        global.enemy_low_hp_2 = true;
    
    if (instance_exists(obj_text_fighting_parent))
        script_execute(scr_determine_attack_bonus);
}
