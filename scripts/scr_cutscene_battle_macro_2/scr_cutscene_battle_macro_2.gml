function scr_cutscene_battle_macro_2()
{
    if (live_call())
        return global.live_result;
    
    var soul = obj_heart_battle_fighting_red;
    
    switch (scene)
    {
        case -1:
            if (!scr_battle_box_resize_midfight(575, 140))
                exit;
            
            if (draw_alpha > 0)
            {
                draw_alpha -= 0.05;
            }
            else
            {
                draw_alpha = 0;
                scene++;
            }
            
            break;
        
        case 0:
            cutscene_wait(1);
            break;
        
        case 1:
            obj_macro_frog_counter.screenshake_enabled = 1;
            cutscene_wait(1);
            break;
        
        case 2:
            obj_macro_frog_counter.screenshake_enabled = 2;
            obj_macro_frog_counter.frog_count = 1;
            obj_macro_frog_counter.frog_scale = 2;
            obj_macro_frog_counter.frog_overlay_alpha = 1;
            audio_play_sound(snd_danza_green_note, 1, 0);
            obj_macro_froggit_body.sprite_index = spr_macro_froggit_scared_2;
            obj_macro_froggit_body.image_speed = 0;
            obj_macro_froggit_body.image_index = 0;
            var buffrog = instance_create_depth(320, 180, obj_macro_froggit_body.depth + 1, obj_buff_froggit_body);
            obj_background_macro_froggit.fade_out = true;
            cutscene_advance();
            break;
        
        case 3:
            draw_enabled = true;
            skippable = false;
            cutscene_wait(3);
            break;
        
        case 4:
            message_adv = true;
            cutscene_advance();
            break;
        
        case 5:
            if (obj_macro_froggit_body.x > (obj_macro_froggit_body.xstart - 230))
            {
                obj_macro_froggit_body.hspeed -= 0.1;
                obj_macro_froggit_body.vspeed += 0.01;
            }
            else
            {
                obj_macro_froggit_body.hspeed = 0;
                obj_macro_froggit_body.vspeed = 0;
            }
            
            obj_quote_bubble_battle.hspeed = obj_macro_froggit_body.hspeed;
            obj_macro_froggit_body.vspeed = obj_macro_froggit_body.vspeed;
            cutscene_wait(3);
            break;
        
        case 6:
            instance_create_depth(0, 0, obj_macro_froggit_body.depth + 10, obj_macro_froggit_particle);
            burst_count = 3;
            draw_enabled = false;
            cutscene_advance();
            break;
        
        case 7:
        case 9:
        case 11:
            obj_macro_froggit_particle.particle_burst = true;
            
            if (scene == 11)
                burst_count--;
            
            cutscene_advance();
            break;
        
        case 8:
        case 10:
            cutscene_wait(0.25);
            break;
        
        case 12:
            if (burst_count > 0)
            {
                if (cutscene_wait(2.5))
                    cutscene_advance(7);
            }
            else
            {
                cutscene_advance();
            }
            
            break;
        
        case 13:
            cutscene_wait(2.2);
            break;
        
        case 14:
            cutscene_dialogue_giga(90, 10);
            
            with (msg)
            {
                position = 0;
                message[0] = "M E G A  C R O A K";
                skippable = false;
            }
            
            if (cutscene_wait(6))
            {
                msg.message_adv = true;
                global.dialogue_open = false;
                cutscene_advance(15);
            }
            
            break;
        
        case 15:
            obj_buff_froggit_body.draw_silhouette_alpha -= 0.005;
            
            if (obj_buff_froggit_body.draw_silhouette_alpha <= 0.8)
            {
                obj_macro_froggit_body.sprite_index = spr_macro_froggit_scared;
                obj_macro_froggit_body.image_alpha = 1;
                cutscene_advance();
            }
            
            break;
        
        case 16:
            obj_buff_froggit_body.draw_silhouette_alpha -= 0.05;
            obj_buff_froggit_body.image_xscale += 0.1;
            obj_buff_froggit_body.image_yscale = obj_buff_froggit_body.image_xscale;
            
            if (obj_buff_froggit_body.draw_silhouette_alpha <= 0)
            {
                audio_play_sound(snd_undertale_explosion, 1, 0);
                audio_play_sound(snd_undertale_explosion, 1, 0);
                scr_screenshake_battle(6, 2);
                instance_create_depth(obj_dialogue_box_battle_transformation_any.x, obj_dialogue_box_battle_transformation_any.y, obj_dialogue_box_battle_transformation_any.depth, obj_buff_froggit_battle_box_destroy);
                obj_dialogue_box_battle_transformation_any.battle_box_draw_enabled = 0;
                global.image_alpha_enemy_attacking_immunity = false;
                cutscene_advance();
                obj_buff_froggit_body.draw_silhouette_alpha = 0;
            }
            
            break;
        
        case 17:
            obj_buff_froggit_body.image_xscale = lerp(obj_buff_froggit_body.image_xscale, 2, 0.2);
            
            if (obj_buff_froggit_body.image_xscale <= 2.05)
            {
                obj_buff_froggit_body.image_xscale = 2;
                cutscene_advance();
            }
            
            obj_buff_froggit_body.image_yscale = obj_buff_froggit_body.image_xscale;
            break;
        
        case 18:
            if (cutscene_wait(3))
            {
                with (obj_quote_bubble_battle)
                {
                    x = xstart;
                    y = ystart;
                }
                
                message_adv = true;
            }
            
            break;
        
        case 19:
            draw_enabled = true;
            cutscene_advance();
            break;
        
        case 20:
        case 21:
        case 22:
            if (cutscene_wait(3))
                message_adv = true;
            
            break;
        
        case 23:
            draw_enabled = false;
            cutscene_wait(0.5);
            break;
        
        case 24:
            obj_buff_froggit_body.image_speed = 1;
            obj_macro_froggit_body.sprite_index = spr_macro_froggit_scared_2;
            obj_macro_froggit_body.image_speed = 0;
            obj_macro_froggit_body.image_index = 1;
            
            if (obj_buff_froggit_body.image_index >= 21 && !instance_exists(obj_final_green_frog))
            {
                audio_play_sound(snd_undertale_flash, 1, 0);
                instance_create_depth(obj_buff_froggit_body.x - 42, obj_buff_froggit_body.y + 70, -200, obj_final_green_frog);
            }
            
            if (obj_buff_froggit_body.image_index >= (obj_buff_froggit_body.image_number - 1))
            {
                obj_buff_froggit_body.image_speed = 0;
                obj_buff_froggit_body.image_index = obj_buff_froggit_body.image_number - 1;
                cutscene_advance();
            }
            
            break;
        
        case 25:
            cutscene_wait(1);
            break;
        
        case 26:
            draw_enabled = true;
            cutscene_wait(2.5);
            break;
        
        case 27:
            with (soul)
            {
                xstart = x;
                ystart = y;
            }
            
            shake_strength = 0;
            draw_enabled = false;
            cutscene_advance();
            break;
        
        case 28:
            shake_strength += 0.007;
            
            if (shake_strength >= 1)
            {
                if (instance_exists(obj_final_green_frog))
                {
                    soul.direction = point_direction(soul.x, soul.y, obj_final_green_frog.x, obj_final_green_frog.y);
                    
                    if (soul.speed < 1)
                        soul.speed += 0.05;
                }
            }
            else
            {
                with (soul)
                {
                    x = xstart + random_range(-other.shake_strength, other.shake_strength);
                    y = ystart + random_range(-other.shake_strength, other.shake_strength);
                }
            }
            
            if (!instance_exists(obj_final_green_frog))
            {
                soul.speed = 0;
                cutscene_advance();
                scr_screenshake_battle_custom(9999, 2);
                audio_play_sound(mus_cymbal, 1, 0);
            }
            
            break;
        
        case 29:
            draw_alpha += 0.0075;
            
            if (draw_alpha >= 1)
                cutscene_wait(1);
            
            break;
        
        case 30:
            room = rm_steamworks_18;
            global.cutscene = true;
            obj_pl.x = 448;
            obj_pl.y = 180;
            obj_pl.image_alpha = 1;
            global.sworks_flag[46] = 2;
            break;
    }
    
    if (scene >= 16 && scene < 23)
    {
        with (obj_macro_froggit_body)
        {
            x = lerp(x, 100, 0.2) + irandom_range(-2, 2);
            y = lerp(y, 220, 0.2) + irandom_range(-2, 2);
        }
    }
    
    if (scene >= 17 && scene < 27)
    {
        obj_heart_battle_fighting_parent.moveable = false;
        obj_heart_battle_fighting_parent.x = lerp(obj_heart_battle_fighting_parent.x, 320, 0.15);
        obj_heart_battle_fighting_parent.y = lerp(obj_heart_battle_fighting_parent.y, obj_dialogue_box_battle_transformation_any.bbox_bottom - 8, 0.15);
    }
    
    if (scene >= 17)
    {
        if (global.image_alpha_enemy_attacking > -10)
            global.image_alpha_enemy_attacking -= 0.5;
        
        obj_buff_froggit_body.y = lerp(obj_buff_froggit_body.y, 170, 0.25);
    }
}
