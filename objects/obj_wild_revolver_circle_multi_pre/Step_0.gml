var fight_number, enemy_sparing, enemy_vulnerable, current_hp_enemy, attacking_damage_stat_critical, enemy_target_x, enemy_target_y, shot_sound;

if (live_call())
    return global.live_result;

function shoot_fail()
{
    var shot_sound;
    
    if (!shoot_miss)
    {
        gun_spin = false;
        hit[circle_current] = 0;
        color_hit_number[circle_current] = 0;
        button_pressed = true;
        
        if (shot_add == 0)
            button_pressed = false;
        
        shot_sound = audio_play_sound(snd_fail, 1, 0);
        shrink[circle_current] = false;
        shrink_speed = 0;
        alarm[0] = 20;
        shoot_miss = true;
        key_select = 0;
        no_loop = true;
    }
}

if (execute_create == true)
{
    if (can_execute == false)
        exit;
    
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
            circle_current += 1;
        }
    }
    
    if (key_select)
    {
        if (outline[circle_current] > small_circle)
        {
            shoot_fail();
            exit;
        }
        else if ((enemy_sparing == true && enemy_vulnerable == true) || (enemy_vulnerable == true && current_hp_enemy <= attacking_damage_stat_critical) || outline[circle_current] <= (small_circle * 0.5))
        {
            gun_spin = true;
            hit[circle_current] = 2;
            color_hit_number[circle_current] = 1;
            shot_add += 3;
            
            if (circle_current == final_circle)
                hit_object = 2916;
            else
                hit_object = 2916;
            
            shot_sound = audio_play_sound(snd_attackhitperfect, 1, 0);
        }
        else if (outline[circle_current] <= small_circle && outline[circle_current] > (small_circle * 0.5))
        {
            gun_spin = true;
            hit[circle_current] = 1;
            color_hit_number[circle_current] = 0;
            shot_add += 2;
            
            if (circle_current == final_circle)
                hit_object = 2915;
            else
                hit_object = 2915;
            
            shot_sound = audio_play_sound(snd_attackhit, 1, 0);
        }
        
        audio_sound_pitch(shot_sound, 1 + (obj_wild_revolver_battle_outline.target_current * 0.08));
        instance_create(enemy_target_x + irandom_range(-50, 50), enemy_target_y + irandom_range(-50, obj_hotel_shop_props), hit_object);
        shrink[circle_current] = false;
        button_pressed = true;
        button_pressed_main = true;
        circle_current += 1;
        
        if (circle_current > final_circle)
            alarm[0] = 5;
        
        key_select = 0;
    }
    
    for (i = 0; i <= final_circle; i++)
    {
        if (outline[i] > 0 && shrink[i] == true)
        {
            outline[i] -= shrink_speed;
            
            if (outline[i] <= 0)
            {
                outline[i] = 0;
                shoot_fail();
            }
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
                alarm[0] = 5;
                no_loop = true;
            }
        }
    }
}
