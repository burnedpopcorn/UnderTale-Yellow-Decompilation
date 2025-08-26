if (live_call())
    return global.live_result;

var particles_spawn = false;

if (sprite_index == spr_martlet_p_full_fly_begin || sprite_index == spr_martlet_g_full_fly_begin)
{
    if (floor(image_index) == 6 && no_loop_sound == false)
    {
        audio_play_sound(snd_mart_wings_out, 20, 0);
        no_loop_sound = true;
    }
    else if (floor(image_index) > 6)
    {
        no_loop_sound = false;
    }
}
else if (sprite_index == spr_martlet_p_full_fly_during || sprite_index == spr_martlet_g_full_fly_during)
{
    if (fly_state == 0)
    {
        if (y > (default_y - max_y))
        {
            if (floor(image_index) >= 2 && floor(image_index) <= 4)
                y -= speed_y;
            
            if (y <= (default_y - max_y))
            {
                y = default_y - max_y;
                fly_state = 1;
                
                if (!audio_is_playing(snd_mart_wind))
                    audio_play_sound(snd_mart_wind, 20, 1);
            }
        }
    }
    
    if (fly_state == 1)
    {
        if (floor(image_index) >= 1 && floor(image_index) <= 3)
        {
            with (obj_heart_battle_fighting_parent)
                vsp_factor = round(4.8);
        }
        else
        {
            with (obj_heart_battle_fighting_parent)
                vsp_factor = 0;
        }
        
        if (atk_counter_current == 0)
            event_user(0);
        
        if (atk_alarm_no_loop == false)
        {
            alarm[0] = atk_alarm;
            atk_alarm_no_loop = true;
        }
    }
    
    if (fly_state == 2)
    {
        if (!instance_exists(obj_battle_enemy_attack_martlet_wing_gust_junk))
            event_user(1);
    }
    
    if (fly_state == 3)
    {
        if (floor(image_index) == image_index_during_e)
        {
            image_index = 0;
            image_speed = 0;
            fly_state = 4;
        }
    }
    
    if (fly_state == 4)
    {
        game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
        time_elapsed += time_increase;
        
        if (time_elapsed >= (time_max + 1))
        {
            if (sprite_index == spr_martlet_p_full_fly_during)
            {
                audio_play_sound(snd_mart_pacifistland, 20, 0);
                sprite_index = spr_martlet_p_full_fly_end;
            }
            else
            {
                audio_play_sound(snd_mart_genoland, 20, 0);
                sprite_index = spr_martlet_g_full_fly_end;
            }
            
            image_speed = image_speed_end;
            image_index = image_index_end;
        }
        
        y = default_y + animation_disjoint_y;
    }
    
    if (fly_state < 4)
    {
        if (floor(image_index) == 2 && no_loop_sound == false)
        {
            particles_spawn = true;
            audio_play_sound(snd_mart_flap, 20, 0);
            no_loop_sound = true;
        }
        else if (floor(image_index) != 2)
        {
            no_loop_sound = false;
        }
    }
}

if (particles_spawn)
{
    var inc = 22.857142857142858;
    
    for (var i = 0; i < 7; i++)
    {
        var xx = 250 + (i * inc);
        var yy = 270 + (sign(i % 2) * 20) + random_range(-10, 10);
        part_particles_create(global.ps, xx, yy, global.pt_Effect1, 1);
        part_particles_create(global.ps, xx, (yy - 60) + random_range(-10, 10), global.pt_Effect1, 1);
    }
}
