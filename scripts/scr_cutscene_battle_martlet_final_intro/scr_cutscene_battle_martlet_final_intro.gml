function scr_cutscene_battle_martlet_final_intro()
{
    if (live_call())
        return global.live_result;
    
    switch (scene)
    {
        case 0:
            if (message_current == 12)
            {
                draw_enabled = false;
                scr_battle_box_resize_midfight(140, 140);
                obj_dialogue_box_battle_transformation_any.depth = 50;
                cutscene_wait(1);
            }
            
            break;
        
        case 1:
            draw_enabled = false;
            cutscene_wait(1.5);
            break;
        
        case 2:
            draw_enabled = true;
            skippable = true;
            cutscene_advance();
            break;
        
        case 3:
            if (message_current == 19)
            {
                draw_enabled = false;
                cutscene_advance();
            }
            
            break;
        
        case 4:
            obj_martlet_final_body_intro.sprite_index = spr_martlet_final_intro_2;
            obj_martlet_final_body_intro.image_index = 0;
            obj_martlet_final_body_intro.image_speed = 1;
            cutscene_advance();
            break;
        
        case 5:
            if (obj_martlet_final_body_intro.sprite_index != spr_martlet_final_intro_2)
                cutscene_advance();
            
            break;
        
        case 6:
            cutscene_wait(0.5);
            break;
        
        case 7:
            draw_enabled = true;
            
            if (message_current == 20)
            {
                draw_enabled = false;
                cutscene_advance();
            }
            
            break;
        
        case 8:
            obj_martlet_final_body_intro.sprite_index = spr_martlet_final_intro_4;
            obj_martlet_final_body_intro.image_index = 0;
            obj_martlet_final_body_intro.image_speed = 1;
            cutscene_advance();
            break;
        
        case 9:
            if (obj_martlet_final_body_intro.image_index >= 62)
            {
                obj_martlet_final_body_intro.image_speed = 0;
                cutscene_advance();
            }
            
            break;
        
        case 10:
            cutscene_wait(2);
            break;
        
        case 11:
            draw_enabled = true;
            
            if (message_current == 21)
            {
                draw_enabled = false;
                cutscene_advance();
            }
            
            break;
        
        case 12:
            obj_martlet_final_body_intro.image_speed = 1;
            
            if (obj_martlet_final_body_intro.image_index >= 74)
            {
                obj_martlet_final_body_intro.image_speed = 0;
                cutscene_advance();
            }
            
            break;
        
        case 13:
            draw_enabled = true;
            
            if (message_current == 23)
            {
                draw_enabled = false;
                cutscene_advance();
            }
            
            break;
        
        case 14:
            obj_martlet_final_body_intro.image_speed = 1;
            
            if (obj_martlet_final_body_intro.image_index >= 80)
            {
                obj_martlet_final_body_intro.image_speed = 0;
                cutscene_advance();
            }
            
            break;
        
        case 15:
            draw_enabled = true;
            skippable = false;
            screenshake_noloop = false;
            scr_screenshake_battle(5, 3);
            audio_play_sound(snd_ceroba_yell, 1, 0);
            cutscene_advance();
            break;
        
        case 16:
            if (cutscene_wait(1.5))
            {
                audio_play_sound(snd_final_martlet_transformation, 1, 0);
                global.battle_music = audio_play_sound(mus_remedy, 1, 1);
            }
            
            break;
        
        case 17:
            obj_martlet_final_body_intro.image_speed = 1;
            draw_enabled = false;
            
            if (!instance_exists(obj_screenshake_battle) && screenshake_noloop == false)
            {
                if (obj_martlet_final_body_intro.image_index < 135)
                {
                    instance_create(0, 0, obj_screenshake_battle);
                    obj_screenshake_battle.battle_screenshake_duration = 9999;
                }
            }
            else if (obj_martlet_final_body_intro.image_index >= 135)
            {
                screenshake_noloop = true;
                instance_destroy(obj_screenshake_battle);
            }
            else
            {
                obj_screenshake_battle.battle_screenshake_intensity = ((obj_martlet_final_body_intro.image_index - 80) / (obj_martlet_final_body_intro.image_number - 1 - 80)) * 6;
            }
            
            if (obj_martlet_final_body_intro.image_index >= (obj_martlet_final_body_intro.image_number - 1))
            {
                obj_martlet_final_body_intro.image_speed = 0;
                cutscene_advance();
            }
            
            break;
        
        case 18:
            instance_destroy(obj_martlet_final_body_intro);
            instance_create_depth(320, -450, 10, obj_martlet_final_base);
            cutscene_advance();
            break;
        
        case 19:
            obj_martlet_final_base.y += 2.5;
            
            if (obj_martlet_final_base.y >= obj_martlet_final_base.martlet_y_target)
                cutscene_advance();
            
            break;
        
        case 20:
            cutscene_wait(1.5);
            break;
        
        case 21:
            obj_martlet_final_base.sprite_index = spr_martlet_final_scream;
            scr_screenshake_battle_custom(90, 4);
            audio_play_sound(snd_final_martlet_scream, 1, 0);
            global.hotland_flag[9] = 1;
            cutscene_advance();
            break;
        
        case 22:
            cutscene_wait(2.5);
            break;
        
        case 23:
            obj_martlet_final_base.martlet_sprites_reset = true;
            cutscene_advance();
            break;
        
        case 24:
            cutscene_wait(1);
            break;
        
        case 25:
            if (!audio_is_playing(mus_remedy))
                global.battle_music = audio_play_sound(mus_remedy, 1, 1);
            
            cutscene_advance();
            break;
        
        case 26:
            fade_out_gui = false;
            obj_dialogue_box_battle_transformation_any.visible = true;
            obj_dialogue_box_battle_transformation_any.depth = -1;
            obj_heart_battle_fighting_parent.moveable = true;
            instance_create_depth(0, 0, 101, obj_martlet_final_bg);
            instance_create_depth(0, 0, -1, obj_martlet_blue_shader);
            global.image_alpha_enemy_attacking = 0;
            cutscene_advance();
            break;
        
        case 27:
            global.image_alpha_enemy_attacking += 0.1;
            
            if (global.image_alpha_enemy_attacking >= 0.5)
            {
                instance_destroy(obj_quote_bubble_battle_yellow_3);
                instance_destroy();
            }
            
            break;
    }
}
