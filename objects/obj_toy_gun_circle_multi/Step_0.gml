var fight_number, enemy_sparing, enemy_vulnerable, current_hp_enemy, attacking_damage_stat_critical, enemy_target_x, enemy_target_y, missed_shot, enemy_target_x_offset, enemy_target_y_offset;

if (live_call())
    return global.live_result;

if (execute_create == true)
{
    fight_number = global.fight_number;
    
    if (fight_number == 1)
    {
        enemy_sparing = global.enemy_sparing;
        enemy_vulnerable = global.enemy_vulnerable;
        current_hp_enemy = global.current_hp_enemy;
        attacking_damage_stat_critical = global.attacking_damage_stat_critical;
        enemy_target_x = global.enemy_target_x;
        enemy_target_y = global.enemy_target_y;
    }
    else if (fight_number == 2)
    {
        enemy_sparing = global.enemy_sparing_2;
        enemy_vulnerable = global.enemy_vulnerable_2;
        current_hp_enemy = global.current_hp_enemy_2;
        attacking_damage_stat_critical = global.attacking_damage_stat_critical_2;
        enemy_target_x = global.enemy_target_x_2;
        enemy_target_y = global.enemy_target_y_2;
    }
    else if (fight_number == 3)
    {
        enemy_sparing = global.enemy_sparing_3;
        enemy_vulnerable = global.enemy_vulnerable_3;
        current_hp_enemy = global.current_hp_enemy_3;
        attacking_damage_stat_critical = global.attacking_damage_stat_critical_3;
        enemy_target_x = global.enemy_target_x_3;
        enemy_target_y = global.enemy_target_y_3;
    }
    
    script_execute(scr_controls_battle_reticle_multi);
    
    for (i = 0; i <= final_circle; i++)
    {
        if (outline[i] <= 0 && shrink[i] == true)
        {
            outline[i] = 0;
            shrink[i] = false;
            imagea[i] = 0;
            audio_play_sound(snd_fail, 1, 0);
            shrink_speed = 0;
            circle_current = final_circle + 1;
            missed_shot = true;
            alarm[0] = 10;
            no_loop = true;
        }
    }
    
    if (key_select && circle_current <= final_circle)
    {
        missed_shot = false;
        enemy_target_x_offset = 0;
        enemy_target_y_offset = 0;
        
        switch (global.player_weapon_modifier)
        {
            case "Flint":
            case "Ice Pellets":
                enemy_target_x_offset = irandom_range(-40, 40);
                enemy_target_y_offset = irandom_range(-40, 40);
                break;
            
            default:
                enemy_target_x_offset = 0;
                enemy_target_y_offset = 0;
                break;
        }
        
        if (outline[circle_current] >= small_circle)
        {
            outline[circle_current] = 0;
            shrink[circle_current] = false;
            imagea[circle_current] = 0;
            shrink_speed = 0;
            circle_current = final_circle + 1;
            missed_shot = true;
            audio_play_sound(snd_fail, 1, 0);
            alarm[0] = 10;
            no_loop = true;
        }
        else if ((enemy_sparing == true && enemy_vulnerable == true) || (enemy_vulnerable == true && current_hp_enemy <= attacking_damage_stat_critical) || outline[circle_current] <= (small_circle * 0.25))
        {
            hit[circle_current] = 2;
            color_hit_number[circle_current] = 1;
            shot_total += 3;
            
            if (circle_current == final_circle)
                hit_object = 2913;
            else
                hit_object = 2916;
        }
        else if (outline[circle_current] <= (small_circle * 0.6) && outline[circle_current] > (small_circle * 0.25))
        {
            hit[circle_current] = 1;
            color_hit_number[circle_current] = 0;
            shot_total += 2;
            
            if (circle_current == final_circle)
                hit_object = 2912;
            else
                hit_object = 2915;
        }
        else if (outline[circle_current] < small_circle && outline[circle_current] > (small_circle * 0.6))
        {
            hit[circle_current] = 1;
            color_hit_number[circle_current] = 0;
            shot_total += 1;
            
            if (circle_current == final_circle)
                hit_object = 2911;
            else
                hit_object = 2914;
        }
        
        if (missed_shot == false)
        {
            instance_create(enemy_target_x + enemy_target_x_offset, enemy_target_y + enemy_target_y_offset, hit_object);
            shrink[circle_current] = false;
            button_pressed = true;
        }
        
        circle_current += 1;
    }
    
    for (i = 0; i <= final_circle; i++)
    {
        if (outline[i] > 0 && shrink[i] == true)
        {
            outline[i] -= shrink_speed;
            
            if (outline[i] < 0)
                outline[i] = 0;
        }
        
        if (shrink[i] == false && imagea[i] > 0)
        {
            if (hit[i] == 2)
            {
                color_alt_total[i] += color_alt_speed;
                
                if (color_alt_total[i] >= color_alt_max)
                {
                    color_alt_total[i] = 0;
                    color_hit_number[i] += 1;
                    
                    if (color_hit_number[i] > 2)
                        color_hit_number[i] = 0;
                }
            }
            
            if (hit[i] != 0)
            {
                cursor_color[i] = color_hit[color_hit_number[i]];
                outline_color[i] = color_hit[color_hit_number[i]];
            }
            
            thickness[i] += thick_increase;
            imagea[i] -= imagea_dec;
            
            if (imagea[i] < 0)
                imagea[i] = 0;
        }
    }
    
    if (no_loop == false)
    {
        if (outline[final_circle] == 0 && hit[final_circle] == false)
        {
            if (!instance_exists(obj_strike_fake))
            {
                if (button_pressed == true)
                    alarm[0] = 3;
                else
                    alarm[0] = 1;
                
                no_loop = true;
            }
        }
    }
}
