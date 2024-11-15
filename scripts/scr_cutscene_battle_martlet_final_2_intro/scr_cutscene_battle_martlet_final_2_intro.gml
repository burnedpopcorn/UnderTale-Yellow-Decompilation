function scr_cutscene_battle_martlet_final_2_intro()
{
    var flash_sound;
    
    if (live_call())
        return global.live_result;
    
    switch (scene)
    {
        case 0:
            if (cutscene_wait(1.5))
                draw_enabled = true;
            
            break;
        
        case 1:
            if (message_current == 8)
            {
                draw_enabled = false;
                scr_battle_box_resize_midfight(82, 160, 320, 300);
                cutscene_wait(1.5);
            }
            
            break;
        
        case 2:
            obj_martlet_final_2_base.sprite_index = spr_martlet_f2_start;
            obj_martlet_final_2_base.image_index = 0;
            obj_martlet_final_2_base.image_speed = 1;
            cutscene_advance();
            break;
        
        case 3:
            if (obj_martlet_final_2_base.image_index >= (obj_martlet_final_2_base.image_number - 1))
            {
                obj_martlet_final_2_base.image_speed = 0;
                obj_martlet_final_2_base.image_index = obj_martlet_final_2_base.image_number - 1;
                cutscene_advance();
            }
            
            break;
        
        case 4:
            draw_enabled = true;
            skippable = true;
            cutscene_advance();
            break;
        
        case 5:
            if (message_current == 10)
            {
                if (!audio_is_playing(mus_retribution))
                    global.battle_music = audio_play_sound(mus_retribution, 1, 1);
                
                skippable = false;
                cutscene_wait(0.75);
            }
            
            break;
        
        case 6:
            draw_enabled = false;
            shake_strength = 0;
            cutscene_wait(0.75);
            break;
        
        case 7:
            obj_martlet_final_2_base.x = obj_martlet_final_2_base.xstart + random_range(-shake_strength, shake_strength);
            obj_martlet_final_2_base.y = obj_martlet_final_2_base.ystart + random_range(-shake_strength, shake_strength);
            shake_strength += 0.025;
            
            if (audio_sound_get_track_position(global.battle_music) >= 4.85)
                cutscene_advance();
            
            break;
        
        case 8:
            audio_play_sound(snd_ceroba_yell, 1, 0);
            flash_sound = audio_play_sound(snd_undertale_flash, 1, 0);
            audio_sound_gain(flash_sound, 0.7, 0);
            scr_screenshake_battle_custom(6, 3);
            obj_martlet_final_2_base.martlet_sprites_reset = true;
            cutscene_advance();
            break;
        
        case 9:
            cutscene_wait(1);
            break;
        
        case 10:
            cutscene_advance();
            break;
        
        case 11:
            fade_out_gui = false;
            obj_martlet_final_bg.fade_out = false;
            obj_dialogue_box_battle_transformation_any.visible = true;
            obj_dialogue_box_battle_transformation_any.depth = -1;
            obj_heart_battle_fighting_parent.moveable = true;
            global.image_alpha_enemy_attacking = 0;
            cutscene_advance();
            break;
        
        case 12:
            global.image_alpha_enemy_attacking += 0.1;
            
            if (global.image_alpha_enemy_attacking >= 0.5)
            {
                instance_destroy(obj_quote_bubble_battle_yellow_3);
                instance_destroy();
            }
            
            break;
    }
}
