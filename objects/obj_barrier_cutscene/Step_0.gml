if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(1.5);
        break;
    
    case 1:
        with (obj_barrier_container)
            image_speed = 1;
        
        audio_play_sound(snd_undertale_appear, 1, 0);
        cutscene_advance();
        break;
    
    case 2:
        if (!instance_exists(obj_barrier_container))
            cutscene_wait(1);
        
        break;
    
    case 3:
        var all_approached = true;
        
        with (obj_barrier_soul)
        {
            direction = point_direction(x, y, soul_target_x, soul_target_y);
            
            if (point_distance(x, y, soul_target_x, soul_target_y) > 20)
            {
                if (speed < 2)
                    speed += 0.1;
            }
            else
            {
                speed = 0;
                x = lerp(x, soul_target_x, 0.1);
                y = lerp(y, soul_target_y, 0.1);
            }
            
            if (abs(x - soul_target_x) <= 0.1 && abs(y - soul_target_y) <= 0.1)
            {
                x = soul_target_x;
                y = soul_target_y;
            }
            
            if (x != soul_target_x || y != soul_target_y)
                all_approached = false;
        }
        
        if (all_approached)
            cutscene_advance();
        
        break;
    
    case 4:
        cutscene_wait(1);
        break;
    
    case 5:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 6:
        obj_player_npc.action_sprite = true;
        obj_player_npc.sprite_index = spr_pl_up;
        obj_player_npc.image_speed = 0.1;
        obj_player_npc.vspeed = -0.5;
        cutscene_advance();
        break;
    
    case 7:
        if (obj_player_npc.y < 170)
        {
            with (obj_barrier_soul)
                vspeed = -0.5;
        }
        
        if (obj_player_npc.y < 140)
        {
            obj_player_npc.vspeed = 0;
            
            with (obj_barrier_soul)
                vspeed = 0;
            
            cutscene_advance();
        }
        
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        draw_alpha += 0.1;
        
        if (draw_alpha >= 1)
            cutscene_advance();
        
        break;
    
    case 10:
        cutscene_wait(1);
        break;
    
    case 11:
        with (obj_barrier_soul)
        {
            if (soul_color != c_white)
            {
                human_alpha += 0.05;
                
                if (human_alpha >= 0.75)
                    other.scene = 12;
            }
        }
        
        break;
    
    case 12:
        cutscene_wait(3);
        break;
    
    case 13:
        cutscene_screen_fade_out(16777215, 0.01);
        var cymbal_sound = audio_play_sound(mus_cymbal, 1, 0);
        audio_sound_set_track_position(cymbal_sound, 1);
        cutscene_advance();
        break;
    
    case 14:
        if (!audio_is_playing(mus_cymbal))
        {
            instance_destroy(obj_radio);
            audio_stop_all();
            room = rm_credits_geno;
        }
        
        break;
}

depth = obj_pl.depth + 1;
