var is_punched, i;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        is_punched = false;
        
        with (obj_battle_enemy_attack_mecha_frog_hand)
        {
            if (place_meeting(x, y, other) && state == "punch")
                is_punched = true;
        }
        
        if (is_punched)
        {
            audio_play_sound(snd_mirrorbreak2, 1, 0);
            audio_play_sound(snd_mart_impact_2, 1, 0);
            scr_screenshake_battle(6, 2);
            
            for (i = 0; i < 4; i++)
                instance_create_depth(x + 35, y + 10, depth + 1, obj_battle_enemy_attack_mecha_frog_glass);
            
            sprite_index = spr_bigfrog_cockpit_surprised;
            alarm[0] = 30;
            hit_noloop = true;
            scene++;
        }
        
        break;
    
    case 1:
        if (hit_noloop == true)
            exit;
        
        is_punched = false;
        
        with (obj_battle_enemy_attack_mecha_frog_hand)
        {
            if (place_meeting(x, y, other) && state == "punch")
                is_punched = true;
        }
        
        if (is_punched == true)
        {
            audio_play_sound(snd_mirrorbreak3, 1, 0);
            audio_play_sound(snd_mart_impact_2, 1, 0);
            scr_screenshake_battle(6, 2);
            
            for (i = 0; i < 6; i++)
                instance_create_depth(x + 35, y + 5, depth + 1, obj_battle_enemy_attack_mecha_frog_glass);
            
            sprite_index = spr_bigfrog_cockpit_punched;
            image_index = 0;
            image_speed = 1;
            scene++;
        }
        
        break;
    
    case 2:
        with (obj_battle_enemy_attack_mecha_frog_hand)
            active = false;
        
        if (image_index >= (image_number - 1))
        {
            sprite_index = spr_bigfrog_cockpit_colletable;
            scene++;
        }
        
        break;
    
    case 3:
        if (place_meeting(x, y, obj_heart_battle_fighting_parent))
        {
            obj_macro_frog_counter.frog_scale = 1.5;
            obj_macro_frog_counter.frog_count--;
            audio_play_sound(snd_heal, 1, 0);
            sprite_index = spr_bigfrog_cockpit_nofrog;
            scr_audio_fade_out(global.battle_music, 1000);
            scene++;
        }
        
        break;
    
    case 4:
        if (cutscene_wait(1))
            audio_play_sound(mus_cymbal, 1, 0);
        
        break;
    
    case 5:
        draw_alpha += 0.0064516129032258064;
        
        if (draw_alpha >= 1)
            scene++;
        
        break;
    
    case 6:
        with (obj_battle_enemy_attack_mecha_frog_creator)
            instance_destroy();
        
        break;
}
