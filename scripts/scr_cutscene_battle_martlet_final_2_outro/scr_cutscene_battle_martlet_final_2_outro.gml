function scr_cutscene_battle_martlet_final_2_outro()
{
    if (live_call())
        return global.live_result;
    
    switch (scene)
    {
        case -3:
            cymbal_sound = audio_play_sound(mus_cymbal, 1, 0);
            cutscene_advance();
            break;
        
        case -2:
            if (!audio_is_playing(cymbal_sound))
            {
                draw_alpha_white = 1;
                cutscene_wait(1.5);
            }
            else
            {
                draw_alpha_white = audio_sound_get_track_position(cymbal_sound) / audio_sound_length(cymbal_sound);
            }
            
            break;
        
        case -1:
            draw_alpha_white -= 0.05;
            
            if (draw_alpha_white <= 0)
            {
                draw_alpha_white = 0;
                cutscene_advance();
            }
            
            break;
        
        case 0:
            if (cutscene_wait(3))
                draw_enabled = true;
            
            break;
        
        case 1:
            if (message_current == 8)
            {
                skippable = false;
                cutscene_wait(2);
            }
            
            break;
        
        case 2:
            message_adv = true;
            skippable = true;
            draw_enabled = false;
            obj_martlet_final_2_base.martlet_target_melt_sprite = 2933;
            scr_screenshake_battle_custom(6, 4);
            audio_play_sound(snd_undertale_thud, 1, 0);
            cutscene_advance();
            break;
        
        case 3:
            draw_enabled = false;
            cutscene_wait(1);
            break;
        
        case 4:
            draw_enabled = true;
            cutscene_advance();
            break;
        
        case 5:
            if (message_current == 11)
            {
                draw_enabled = false;
                scene++;
            }
            
            break;
        
        case 6:
            obj_martlet_final_2_base.martlet_target_melt_sprite = 1922;
            scr_screenshake_battle_custom(6, 4);
            audio_play_sound(snd_undertale_thud, 1, 0);
            cutscene_advance();
            break;
        
        case 7:
            cutscene_wait(1);
            break;
        
        case 8:
            draw_enabled = true;
            
            if (message_current == 12)
            {
                draw_enabled = false;
                scene++;
            }
            
            break;
        
        case 9:
            obj_martlet_final_2_base.martlet_target_melt_sprite = 1278;
            scr_screenshake_battle_custom(6, 4);
            audio_play_sound(snd_undertale_thud, 1, 0);
            cutscene_advance();
            break;
        
        case 10:
            cutscene_wait(1);
            break;
        
        case 11:
            draw_enabled = true;
            
            if (message_current == 13)
            {
                draw_enabled = false;
                scene++;
            }
            
            break;
        
        case 12:
            obj_martlet_final_2_base.martlet_target_melt_sprite = 2791;
            scr_screenshake_battle_custom(6, 4);
            audio_play_sound(snd_undertale_thud, 1, 0);
            cutscene_advance();
            break;
        
        case 13:
            cutscene_wait(1);
            break;
        
        case 14:
            draw_enabled = true;
            
            if (message_current == 14)
            {
                draw_enabled = false;
                scene++;
            }
            
            break;
        
        case 15:
            obj_martlet_final_2_base.martlet_target_melt_sprite = 810;
            scr_screenshake_battle_custom(6, 4);
            audio_play_sound(snd_undertale_thud, 1, 0);
            cutscene_advance();
            break;
        
        case 16:
            draw_enabled = true;
            skippable = false;
            cutscene_wait(3);
            break;
        
        case 17:
            draw_enabled = false;
            cutscene_wait(1.5);
            break;
        
        case 18:
            obj_martlet_final_2_base.sprite_index = spr_martlet_f2_goopz10;
            cutscene_wait(2.5);
            break;
        
        case 19:
            global.enemy_dead = true;
            audio_play_sound(snd_monster_damage_death, 20, false);
            instance_create_depth(obj_martlet_final_2_base.x, obj_martlet_final_2_base.y, -100, obj_martlet_final_dead);
            instance_destroy(obj_martlet_final_2_base);
            cutscene_advance();
            break;
        
        case 20:
            cutscene_wait(2);
            break;
        
        case 21:
            fade_out_gui = false;
            
            if (obj_dialogue_box_battle.image_alpha < 1)
                obj_dialogue_box_battle.image_alpha += 0.1;
            else
                cutscene_wait(3.5);
            
            break;
        
        case 22:
            global.player_level = 20;
            global.max_hp_self = global.player_hp_next[20];
            global.player_attack = global.player_attack_next[20];
            global.player_defense = global.player_defense_next[20];
            audio_play_sound(snd_love_increased, 20, 0);
            cutscene_advance();
            break;
        
        case 23:
            instance_create_depth(0, 0, -100, obj_dialogue_battle_win_martlet_final);
            cutscene_advance();
            break;
        
        case 24:
            if (!instance_exists(obj_dialogue_battle_win_martlet_final))
                cutscene_wait(2);
            
            break;
        
        case 25:
            instance_create_depth(323, 178, -100, obj_battle_fmartlet_flowey);
            cutscene_advance();
            break;
        
        case 26:
            if (cutscene_wait(2.5))
            {
                message_adv = true;
                obj_quote_bubble_battle.y += 40;
            }
            
            break;
        
        case 27:
            draw_enabled = true;
            skippable = true;
            
            if (message_current == 26)
            {
                skippable = false;
                
                if (!instance_exists(obj_heart_battle_menu_fake_martlet))
                {
                    instance_destroy(obj_heart_battle_menu);
                    instance_create_depth(320, 320, -900, obj_heart_battle_menu_fake_martlet);
                }
                else if (obj_heart_battle_menu_fake_martlet.image_alpha >= 1 && cutscene_wait(1.5))
                {
                    skippable = true;
                    message_adv = true;
                }
            }
            
            break;
        
        case 28:
            if (message_current == 28)
            {
                draw_enabled = false;
                skippable = false;
                cutscene_advance();
            }
            
            break;
        
        case 29:
            cutscene_advance();
            break;
        
        case 30:
            if (obj_heart_battle_menu_fake_martlet.image_alpha >= 1)
                cutscene_wait(1);
            
            break;
        
        case 31:
            with (obj_heart_battle_menu_fake_martlet)
            {
                var xtarget = obj_fight.x + 17;
                var ytarget = obj_fight.y + 23;
                obj_heart_battle_menu_fake_martlet.x = lerp(x, xtarget, 0.15);
                obj_heart_battle_menu_fake_martlet.y = lerp(y, ytarget, 0.15);
                
                if (abs(xtarget - x) < 1 && abs(ytarget - y) < 1)
                {
                    x = xtarget;
                    y = ytarget;
                    other.scene++;
                }
            }
            
            break;
        
        case 32:
            cutscene_wait(0.5);
            break;
        
        case 33:
            draw_enabled = true;
            skippable = true;
            cutscene_advance();
            break;
        
        case 34:
            if (message_current == 30)
            {
                draw_enabled = false;
                skippable = false;
                cutscene_advance();
            }
            
            break;
        
        case 35:
            cutscene_wait(1);
            break;
        
        case 36:
            obj_heart_battle_menu_fake_martlet.key_select_simulate = true;
            cutscene_advance();
            break;
        
        case 37:
            cutscene_wait(0.5);
            break;
        
        case 38:
            draw_enabled = true;
            skippable = true;
            save_message_alpha = 4;
            cutscene_advance();
            break;
        
        case 39:
            if (message_current == 32)
            {
                draw_enabled = false;
                skippable = false;
                cutscene_advance();
            }
            
            break;
        
        case 40:
            cutscene_wait(1);
            break;
        
        case 41:
            instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch);
            save_message = "LOAD FAILED";
            save_message_alpha = 4;
            obj_battle_fmartlet_flowey.sprite_index = flowey_plain;
            cutscene_advance();
            break;
        
        case 42:
            cutscene_wait(2.5);
            break;
        
        case 43:
            save_message = "LOAD FAILED";
            save_message_alpha = 4;
            obj_battle_fmartlet_flowey.sprite_index = flowey_plains;
            cutscene_advance();
            break;
        
        case 44:
            cutscene_wait(3.5);
            break;
        
        case 45:
        case 47:
        case 49:
        case 51:
            instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch);
            save_message = "LOAD FAILED";
            save_message_alpha = 4;
            obj_battle_fmartlet_flowey.sprite_index = flowey_pissed;
            cutscene_advance();
            break;
        
        case 46:
            cutscene_wait(1);
            break;
        
        case 48:
            cutscene_wait(0.5);
            break;
        
        case 50:
            cutscene_wait(0.25);
            break;
        
        case 52:
            cutscene_wait(1);
            break;
        
        case 53:
            skippable = true;
            draw_enabled = true;
            
            if (message_current == 39)
            {
                draw_enabled = false;
                skippable = false;
                cutscene_advance();
            }
            
            break;
        
        case 54:
            instance_destroy(obj_dialogue_box_battle);
            instance_create_depth(319, 320, -300, obj_dialogue_box_battle_transformation_any_out_cutscene);
            
            with (obj_dialogue_box_battle_transformation_any_out_cutscene)
            {
                sprite_width_destination = 140;
                sprite_height_destination = 140;
                disjoint_x = 0;
                disjoint_y = 0;
            }
            
            if (!instance_exists(obj_heart_battle_fake_martlet))
            {
                instance_create_depth(obj_heart_battle_menu_fight_fake_martlet.x, obj_heart_battle_menu_fight_fake_martlet.y, -900, obj_heart_battle_fake_martlet);
                instance_destroy(obj_heart_battle_menu_fight_fake_martlet);
            }
            
            cutscene_advance();
            break;
        
        case 55:
            with (obj_heart_battle_fake_martlet)
            {
                x = lerp(obj_heart_battle_fake_martlet.x, 320, 0.15);
                y = lerp(obj_heart_battle_fake_martlet.y, 320, 0.15);
            }
            
            if (instance_exists(obj_dialogue_box_battle_transformation_any) && abs(obj_heart_battle_fake_martlet.x - 320) < 1 && abs(obj_heart_battle_fake_martlet.y - 320) < 1)
            {
                obj_heart_battle_fake_martlet.x = 320;
                obj_heart_battle_fake_martlet.y = 320;
                cutscene_advance();
            }
            
            break;
        
        case 56:
            save_message = "FILE 1 SAVED";
            save_message_alpha = 4;
            cutscene_advance();
            break;
        
        case 57:
            cutscene_wait(0.25);
            break;
        
        case 58:
            while (instance_number(obj_battle_enemy_attack_friendliness_pellets_yellow) < 5)
                instance_create(obj_battle_fmartlet_flowey.x, obj_battle_fmartlet_flowey.y, obj_battle_enemy_attack_friendliness_pellets_yellow);
            
            cutscene_advance();
            break;
        
        case 59:
            cutscene_wait(1.5);
            break;
        
        case 60:
            instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch);
            
            with (obj_battle_enemy_attack_friendliness_pellets_yellow)
                instance_destroy();
            
            save_message = "FILE 1 LOADED";
            save_message_alpha = 4;
            cutscene_advance();
            break;
        
        case 61:
            obj_battle_fmartlet_flowey.sprite_index = flowey_plain;
            cutscene_wait(2);
            break;
        
        case 62:
            obj_battle_fmartlet_flowey.sprite_index = flowey_pissed;
            draw_enabled = true;
            skippable = true;
            cutscene_advance();
            break;
        
        case 63:
            if (message_current == 40)
            {
                draw_enabled = false;
                skippable = false;
                cutscene_advance();
            }
            
            break;
        
        case 64:
            var inc = 12;
            
            for (var i = 0; i < 30; i++)
            {
                var _len = 100;
                var _dir = inc + (i * inc);
                var pellet = instance_create_depth(320, 320, -1000, obj_fpellets_fake_martlet);
                pellet.alarm[0] = i + 1;
                pellet.dir = _dir;
                pellet.len = _len;
            }
            
            cutscene_advance();
            break;
        
        case 65:
            cutscene_wait(2);
            break;
        
        case 66:
            with (obj_fpellets_fake_martlet)
            {
                len -= 3;
                
                if (len <= 20)
                    other.scene = 67;
            }
            
            break;
        
        case 67:
            instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch);
            
            with (obj_fpellets_fake_martlet)
                instance_destroy();
            
            save_message = "FILE 1 LOADED";
            save_message_alpha = 4;
            cutscene_advance();
            break;
        
        case 68:
            cutscene_wait(1);
            break;
        
        case 69:
            var soul = obj_heart_battle_fighting_parent;
            var vine1 = instance_create_depth(-20, soul.y, -1000, obj_vines_fake_martlet);
            vine1.hspeed = 30;
            var vine2 = instance_create_depth(660, soul.y, -1000, obj_vines_fake_martlet);
            vine2.image_xscale = -1;
            vine2.hspeed = -30;
            scr_screenshake_battle_custom(7, 2);
            audio_play_sound(snd_undertale_impact, 1, 0);
            cutscene_advance();
            break;
        
        case 70:
            with (obj_vines_fake_martlet)
            {
                if (image_xscale == 1)
                {
                    if (x > 240)
                        other.scene++;
                }
            }
            
            break;
        
        case 71:
            instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch);
            
            with (obj_vines_fake_martlet)
                instance_destroy();
            
            save_message = "FILE 1 LOADED";
            save_message_alpha = 4;
            cutscene_advance();
            break;
        
        case 72:
            cutscene_wait(1);
            break;
        
        case 73:
            var soul = obj_heart_battle_fighting_parent;
            var vine1 = instance_create_depth(-20, -20, -1000, obj_vines_fake_martlet);
            vine1.direction = 315;
            vine1.image_angle = 315;
            vine1.speed = 30;
            var vine2 = instance_create_depth(660, 660, -1000, obj_vines_fake_martlet);
            vine2.direction = 135;
            vine2.image_angle = 135;
            vine2.speed = 30;
            var vine3 = instance_create_depth(-20, 660, -1000, obj_vines_fake_martlet);
            vine3.direction = 45;
            vine3.image_angle = 45;
            vine3.speed = 30;
            var vine4 = instance_create_depth(660, -20, -1000, obj_vines_fake_martlet);
            vine4.direction = 225;
            vine4.image_angle = 225;
            vine4.speed = 30;
            scr_screenshake_battle_custom(7, 2);
            audio_play_sound(snd_undertale_impact, 1, 0);
            cutscene_advance();
            break;
        
        case 74:
            cutscene_wait(0.45);
            break;
        
        case 75:
            instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch);
            
            with (obj_vines_fake_martlet)
                instance_destroy();
            
            save_message = "FILE 1 LOADED";
            save_message_alpha = 4;
            cutscene_advance();
            break;
        
        case 76:
            var battle_box = obj_dialogue_box_battle_transformation_any;
            
            for (var i = 0; i < 6; i++)
            {
                var bullet = instance_create_depth(battle_box.bbox_left - 30, battle_box.bbox_top + 15 + ((70/3) * i), -1000, obj_battle_enemy_attack_fpellets_simple);
                bullet.direction = 0;
            }
            
            for (var i = 0; i < 7; i++)
            {
                var bullet = instance_create_depth(battle_box.bbox_right + 30, battle_box.bbox_top + ((70/3) * i), -1000, obj_battle_enemy_attack_fpellets_simple);
                bullet.direction = 180;
            }
            
            cutscene_advance();
            break;
        
        case 77:
            cutscene_wait(1);
            break;
        
        case 78:
            audio_play_sound(snd_undertale_swoosh, 1, 0);
            
            with (obj_battle_enemy_attack_fpellets_simple)
                speed = 6;
            
            cutscene_advance();
            break;
        
        case 79:
            cutscene_wait(0.35);
            break;
        
        case 80:
            instance_create_depth(0, 0, -1000, obj_flowey_battle_screen_glitch);
            
            with (obj_battle_enemy_attack_fpellets_simple)
                instance_destroy();
            
            save_message = "FILE 1 LOADED";
            save_message_alpha = 4;
            cutscene_advance();
            break;
        
        case 81:
            cutscene_wait(2.5);
            break;
        
        case 82:
            obj_battle_fmartlet_flowey.y -= 44;
            obj_battle_fmartlet_flowey.sprite_index = spr_flowey_enter_plain;
            obj_battle_fmartlet_flowey.image_index = obj_battle_fmartlet_flowey.image_number - 1;
            obj_battle_fmartlet_flowey.image_speed = -1;
            cutscene_advance();
            break;
        
        case 83:
            cutscene_wait(0.35);
            break;
        
        case 84:
            instance_create_depth(0, 0, -1000, obj_flowey_battle_screen_glitch);
            obj_battle_fmartlet_flowey.y += 44;
            obj_battle_fmartlet_flowey.sprite_index = flowey_plain;
            obj_battle_fmartlet_flowey.image_index = 0;
            obj_battle_fmartlet_flowey.image_speed = 0;
            save_message = "FILE 1 LOADED";
            save_message_alpha = 4;
            cutscene_advance();
            break;
        
        case 85:
            if (cutscene_wait(2))
            {
            }
            
            break;
        
        case 86:
            cutscene_wait(2);
            break;
        
        case 87:
            draw_enabled = true;
            skippable = true;
            cutscene_advance();
            break;
        
        case 88:
            if (message_current >= 52)
            {
            }
            
            if (message_current == 57)
            {
                global.circle_text_radius = 2;
                increase = 0.5;
            }
            
            if (message_current == 59)
            {
                skippable = false;
                
                if (characters >= message_length)
                    cutscene_wait(1.5);
            }
            
            break;
        
        case 89:
            draw_enabled = false;
            global.circle_text_radius = 1;
            cutscene_wait(0.25);
            break;
        
        case 90:
            obj_battle_fmartlet_flowey.y -= 44;
            obj_battle_fmartlet_flowey.starting_point_y = obj_battle_fmartlet_flowey.y;
            obj_battle_fmartlet_flowey.sprite_index = spr_evil_flowey_dies_1;
            flowey_laugh = audio_play_sound(snd_flowey_laugh, 1, 0);
            cutscene_advance();
            break;
        
        case 91:
            cutscene_wait(1);
            break;
        
        case 92:
            shot_number_max = 8;
            shot_number_current = 0;
            shot[0] = -4;
            shot_offset[0][0] = 8;
            shot_offset[0][1] = -14;
            shot_offset[1][0] = -9;
            shot_offset[1][1] = -25;
            shot_offset[2][0] = -12;
            shot_offset[2][1] = -7;
            shot_offset[3][0] = 7;
            shot_offset[3][1] = -4;
            shot_offset[4][0] = 24;
            shot_offset[4][1] = -25;
            shot_offset[5][0] = -35;
            shot_offset[5][1] = -26;
            shot_offset[6][0] = 0;
            shot_offset[6][1] = 0;
            shot_offset[7][0] = 0;
            shot_offset[7][1] = 0;
            cutscene_advance();
            break;
        
        case 93:
            if (shot_number_current < shot_number_max)
            {
                shot[shot_number_current] = instance_create_depth(obj_battle_fmartlet_flowey.x + shot_offset[shot_number_current][0], obj_battle_fmartlet_flowey.y + shot_offset[shot_number_current][1], -1000, obj_shot_strong_fake);
                shot_number_current++;
                cutscene_advance();
            }
            else
            {
                scene = 96;
            }
            
            break;
        
        case 94:
            cutscene_wait(0.5);
            break;
        
        case 95:
            for (var i = 0; i < array_length(shot); i++)
            {
                if (shot[i] != -4 && !instance_exists(shot[i]))
                {
                    shot[i] = -4;
                    obj_battle_fmartlet_flowey.flowey_shake_intensity = (i + 1) * 2;
                    obj_battle_fmartlet_flowey.sprite_index = asset_get_index("spr_evil_flowey_dies_" + string(i + 2));
                    var hit_sound = audio_play_sound(snd_monster_damage_hit_critical, 1, 0);
                    audio_sound_pitch(hit_sound, random_range(0.7, 1.3));
                    scene = 93;
                }
            }
            
            break;
        
        case 96:
            cutscene_wait(3);
            break;
        
        case 97:
            obj_battle_fmartlet_flowey.sprite_index = spr_evil_flowey_dies_10;
            obj_battle_fmartlet_flowey.image_speed = 1;
            cutscene_advance();
            break;
        
        case 98:
            cutscene_wait(7);
            break;
        
        case 99:
            global.current_room_overworld = "rm_hotland_roof";
            obj_pl.x = 210;
            obj_pl.y = 350;
            global.hotland_flag[9] = 3;
            instance_create(0, 0, obj_battle_fade_out_screen);
            cutscene_advance();
            break;
        
        case 100:
            cutscene_end();
            break;
    }
}
