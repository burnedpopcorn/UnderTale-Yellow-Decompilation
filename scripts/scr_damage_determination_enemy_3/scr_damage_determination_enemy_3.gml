function scr_damage_determination_enemy_3(arg0)
{
    switch (arg0)
    {
        case "Gun Single":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy_3;
            global.attacking_damage_stat_critical_3 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_3) + 2) * 2.5);
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
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_attack) - global.enemy_defense_stat_3) + r) * b);
            break;
        
        case "Gun Multi":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy_3;
            global.attacking_damage_stat_critical_3 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_3) + 2) * 2.5);
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
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_3) + r) * clamp(b, 1.5, 3));
            break;
        
        case "Revolver Single":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy_3;
            global.attacking_damage_stat_critical_3 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_3) + 2) * 3.5);
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
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_3) + r) * b);
            break;
        
        case "Revolver Multi":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy_3;
            global.attacking_damage_stat_critical_3 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat) + 2) * 3.5);
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
            global.attacking_damage_stat_betrayal = global.current_hp_enemy_3;
            global.attacking_damage_stat_critical_3 = round((((global.player_weapon_attack + global.player_weapon_modifier_attack + global.player_attack) - global.enemy_defense_stat_3) + 2) * 2.2);
            r = random_range(0, 2);
            
            if (x == 319)
                b = 2.2;
            else
                b = abs(x - 319) / (obj_target_battle.sprite_width / 2);
            
            global.attacking_damage_stat = round((((global.player_weapon_attack + global.player_attack) - global.enemy_defense_stat_3) + r) * b);
    }
    
    if (global.attacking_damage_cap_3 >= 0)
    {
        if (global.attacking_damage_stat > global.attacking_damage_cap_3)
            global.attacking_damage_stat = global.attacking_damage_cap_3;
        
        if (global.attacking_damage_stat_critical_3 > global.attacking_damage_cap_3)
            global.attacking_damage_stat_critical_3 = global.attacking_damage_cap_3;
    }
    
    if (global.attacking_damage_stat < 5)
        global.attacking_damage_stat = 5;
    
    if (global.attacking_damage_stat_critical_3 < 5)
        global.attacking_damage_stat_critical_3 = 5;
    
    if (button_pressed == true)
    {
        if (global.enemy_sparing_3 == true && global.enemy_vulnerable_3 == true)
        {
            global.last_hp_enemy_3 = global.current_hp_enemy_3;
            global.current_hp_enemy_3 = 0;
            global.enemy_betrayed_3 = true;
            damage_type = "betrayed";
            instance_create(global.enemy_damage_x_3, global.enemy_damage_y_3, obj_text_damage_count);
            audio_play_sound(snd_monster_damage_hit_critical, 20, false);
        }
        else if (global.enemy_vulnerable_3 == true)
        {
            if ((arg0 == "Knife Single" && x == 319) || ((arg0 == "Gun Single" || arg0 == "Revolver Single") && b == 3.5) || ((arg0 == "Gun Multi" || arg0 == "Revolver Multi") && b == 3.5) || global.current_hp_enemy_3 <= global.attacking_damage_stat_critical_3)
            {
                global.last_hp_enemy_3 = global.current_hp_enemy_3;
                global.current_hp_enemy_3 -= global.attacking_damage_stat_critical_3;
                damage_type = "critical";
                instance_create(global.enemy_damage_x_3, global.enemy_damage_y_3, obj_text_damage_count);
                audio_play_sound(snd_monster_damage_hit_critical, 20, false);
            }
            else
            {
                global.last_hp_enemy_3 = global.current_hp_enemy_3;
                global.current_hp_enemy_3 -= global.attacking_damage_stat;
                damage_type = "normal";
                instance_create(global.enemy_damage_x_3, global.enemy_damage_y_3, obj_text_damage_count);
                audio_play_sound(snd_monster_damage_hit, 20, false);
            }
        }
        else
        {
            instance_create(global.enemy_damage_x_3, global.enemy_damage_y_3, obj_text_miss);
        }
    }
    else
    {
        instance_create(global.enemy_damage_x_3, global.enemy_damage_y_3, obj_text_miss);
    }
    
    instance_create(0, 0, obj_battle_enemy_attacking_code_3);
    
    if (instance_exists(obj_text_damage_count))
    {
        instance_create(obj_text_damage_count.x - 52, obj_text_damage_count.y + 26, obj_battle_hp_current_enemy_attacking_3);
        instance_create(obj_text_damage_count.x - 52, obj_text_damage_count.y + 26, obj_battle_hp_previous_enemy_attacking_3);
        instance_create(obj_text_damage_count.x - 52, obj_text_damage_count.y + 26, obj_battle_hp_max_enemy_attacking_3);
    }
    
    scr_determine_can_display_damage_ui(3);
    
    if (global.current_hp_enemy_3 <= global.attacking_damage_stat_critical_3 && instance_exists(obj_text_damage_count))
        global.enemy_low_hp_3 = true;
    
    if (instance_exists(obj_text_fighting_parent))
        script_execute(scr_determine_attack_bonus);
}
