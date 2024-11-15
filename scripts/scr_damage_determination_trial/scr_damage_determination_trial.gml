function scr_damage_determination_trial(argument0)
{
    var st_temp, boss_mini;
    
    switch (argument0)
    {
        case "Gun Single":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy;
            global.attacking_damage_stat_critical = 100;
            
            if (shot_type == "medium")
                global.attacking_damage_stat = 50;
            else if (shot_type == "weak")
                global.attacking_damage_stat = 30;
            
            break;
        
        case "Gun Multi":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy;
            global.attacking_damage_stat_critical = 100 * circle_count;
            b = 0;
            st_temp = shot_total;
            
            while (st_temp > 3)
                b += 100;
            
            switch (st_temp)
            {
                case 3:
                    b += 100;
                    break;
                
                case 2:
                    b += 50;
                    break;
                
                default:
                    b += 30;
            }
            
            global.attacking_damage_stat = b;
            break;
        
        case "Revolver Single":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy;
            global.attacking_damage_stat_critical = 140;
            r = random_range(0, 2);
            c = 0;
            
            switch (shot_type)
            {
                case "strong":
                    b = 60;
                    break;
                
                case "medium":
                    b = 40;
                    break;
                
                default:
                    b = 0;
            }
            
            for (st_temp = shot_total_pre; st_temp > 3; st_temp -= 3)
                c += 16;
            
            switch (st_temp)
            {
                case 3:
                    c += 16;
                    break;
                
                case 2:
                    c += 8;
                    break;
                
                default:
                    c += 0;
            }
            
            global.attacking_damage_stat = b + c;
            break;
        
        case "Revolver Multi":
            global.attacking_damage_stat_betrayal = global.current_hp_enemy;
            global.attacking_damage_stat_critical = (60 * circle_count) + (80 * circle_count);
            r = random_range(0, 2);
            b = 0;
            c = 0;
            
            for (st_temp = shot_total; st_temp > 3; st_temp -= 3)
                b += 60;
            
            switch (st_temp)
            {
                case 3:
                    b += 60;
                    break;
                
                case 2:
                    b += 40;
                    break;
                
                default:
                    b += 0;
            }
            
            for (st_temp = shot_total_pre; st_temp > 3; st_temp -= 3)
                c += (16 * circle_count);
            
            switch (st_temp)
            {
                case 3:
                    c += (16 * circle_count);
                    break;
                
                case 2:
                    c += (8 * circle_count);
                    break;
                
                default:
                    c += 0;
            }
            
            global.attacking_damage_stat = b + c;
            break;
        
        default:
            global.attacking_damage_stat_betrayal = global.current_hp_enemy;
            global.attacking_damage_stat_critical = 100;
            global.attacking_damage_stat = round(-((x - 53) * (x - 585)) / 1415.12);
    }
    
    if (global.attacking_damage_cap >= 0)
    {
        if (global.attacking_damage_stat > global.attacking_damage_cap)
            global.attacking_damage_stat = global.attacking_damage_cap;
        
        if (global.attacking_damage_stat_critical > global.attacking_damage_cap)
            global.attacking_damage_stat_critical = global.attacking_damage_cap;
    }
    
    boss_mini = global.boss_mini;
    
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
            if ((argument0 == "Knife Single" && x == 319) || ((argument0 == "Gun Single" || argument0 == "Revolver Single") && shot_type == "strong") || ((argument0 == "Gun Multi" || argument0 == "Revolver Multi") && shot_total == (circle_count * 3)) || global.current_hp_enemy <= global.attacking_damage_stat_critical)
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
        else
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
