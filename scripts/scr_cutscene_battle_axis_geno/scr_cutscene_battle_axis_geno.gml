function scr_cutscene_battle_axis_geno()
{
    if (live_call())
        return global.live_result;
    
    var enemy_target_x = global.enemy_target_x;
    var enemy_target_y = global.enemy_target_y;
    var battle_box = obj_dialogue_box_battle_transformation_any;
    
    switch (scene)
    {
        case -2:
            cutscene_wait(1.5);
            break;
        
        case -1:
            draw_enabled = true;
            skippable = true;
            cutscene_advance();
            break;
        
        case 0:
            if (!variable_instance_exists(id, "message_last"))
                message_last = 0;
            
            if ((message_current == 1 || message_current == 3 || message_current == 6 || message_current == 7) && message_last < message_current)
            {
                draw_enabled = false;
                skippable = false;
                message_last = message_current;
                cutscene_advance();
            }
            else if (message_current == 9)
            {
                draw_enabled = false;
                skippable = false;
                cutscene_advance(5);
            }
            
            break;
        
        case 1:
            instance_create_depth(enemy_target_x, enemy_target_y, -100, obj_shot_strong_fake);
            cutscene_advance();
            break;
        
        case 2:
            if (!instance_exists(obj_shot_strong_fake))
            {
                global.attacking_damage_stat = 0;
                var dummy_bar = instance_create(0, 0, obj_target_bar_battle);
                dummy_bar.image_alpha = 0;
                dummy_bar.no_loop = true;
                dummy_bar.button_pressed = true;
                dummy_bar.damage_type = "normal";
                instance_create(319, 120, obj_text_damage_count);
                audio_play_sound(10, 20, false, 1, 0, random_range(0.8, 1.2));
                damage_type = "normal";
                var attack_code = instance_create(0, 0, obj_battle_boss_attacking_code);
                attack_code.alarm[1] = 20;
                cutscene_advance();
            }
            
            break;
        
        case 3:
            cutscene_wait(1);
            break;
        
        case 4:
            skippable = true;
            draw_enabled = true;
            scene = 0;
            break;
        
        case 5:
            scr_audio_fade_out(mus_guns_blazing_geno, 100);
            cutscene_advance();
            break;
        
        case 6:
            cutscene_wait(1);
            break;
        
        case 7:
            increase = 0.5;
            draw_enabled = true;
            obj_background_boss_battle_axis_yellow.fade_out = true;
            cutscene_advance();
            break;
        
        case 8:
            cutscene_wait(3.5);
            break;
        
        case 9:
            draw_enabled = false;
            cutscene_advance();
            break;
        
        case 10:
            with (obj_heart_battle_fighting_parent)
            {
                moveable = false;
                x = lerp(x, battle_box.x, 0.15);
                y = lerp(y, battle_box.y, 0.15);
                
                if (abs(x - battle_box.x) < 0.05)
                    x = battle_box.x;
                
                if (abs(y - battle_box.y) < 0.05)
                    y = battle_box.y;
            }
            
            if (cutscene_wait(1))
            {
                obj_heart_battle_menu_effect_axis_geno.in_battle_twitch = true;
                instance_create(0, 0, obj_axis_geno_rapid_lvl);
            }
            
            break;
        
        case 11:
            if (obj_heart_battle_menu_effect_axis_geno.in_battle_twitch_finished)
                cutscene_advance();
            
            break;
        
        case 12:
            if (!instance_exists(obj_ceroba_transformation_soul))
            {
                audio_play_sound(snd_undertale_flash, 1, 0);
                instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_heart_battle_fighting_parent.depth, obj_ceroba_transformation_soul);
                instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_heart_battle_fighting_parent.depth - 1, obj_ceroba_transformation_soul_effect);
                obj_heart_battle_fighting_parent.image_alpha = 0;
            }
            
            if (cutscene_wait(1))
            {
                message_adv = true;
                draw_enabled = true;
                skippable = true;
            }
            
            break;
        
        case 13:
            if (message_current == 12)
            {
                draw_enabled = false;
                skippable = false;
                cutscene_advance();
            }
            
            break;
        
        case 14:
            with (obj_ceroba_transformation_soul)
            {
                if (image_angle > -24)
                    image_angle -= 6;
                else
                    other.scene++;
            }
            
            break;
        
        case 15:
            with (obj_ceroba_transformation_soul)
            {
                if (image_angle < 180)
                {
                    image_angle += 10;
                }
                else
                {
                    charge_time = 90;
                    charge_time_max = 90;
                    image_angle = 0;
                    sprite_index = spr_heart_yellow_up;
                    image_speed = 0;
                    image_index = 0;
                    other.scene++;
                }
            }
            
            break;
        
        case 16:
            if (cutscene_wait(1))
                break;
        
        case 17:
            with (obj_ceroba_transformation_soul)
            {
                is_charging = true;
                
                if (is_charged)
                {
                    can_shoot = true;
                    other.scene++;
                }
            }
            
            break;
        
        case 18:
            if (instance_exists(obj_heart_yellow_shot_big))
            {
                obj_axis_body_geno.sprite_index = spr_axis_body_geno_lid_block;
                
                if (obj_heart_yellow_shot_big.bbox_top < obj_axis_body_geno.y)
                {
                    obj_axis_body_geno.sprite_index = spr_axis_body_geno;
                    obj_axis_body_geno.image_speed = 1;
                    audio_play_sound(snd_undertale_explosion, 1, 0);
                    var piece_count = sprite_get_number(spr_axis_geno_trashlid_pieces);
                    var dir_inc = 360 / piece_count;
                    
                    for (var i = 0; i < piece_count; i++)
                    {
                        var piece = instance_create_depth(obj_axis_body_geno.x, obj_axis_body_geno.y, -150, obj_battle_axis_geno_shield_piece);
                        piece.direction = dir_inc * i;
                        piece.image_index = i;
                        piece.speed = 8;
                    }
                    
                    scr_screenshake_battle(12, 3);
                    cutscene_advance();
                }
            }
            
            break;
        
        case 19:
            cutscene_wait(3);
            break;
        
        case 20:
            draw_enabled = true;
            skippable = true;
            
            if (!instance_exists(obj_axis_geno_rapid_lvl) && global.player_level < 19)
            {
                var lvl_up = instance_create(0, 0, obj_axis_geno_rapid_lvl);
                lvl_up.target_lvl = 19;
            }
            
            if (message_current == (message_end - 1))
            {
                obj_ceroba_transformation_soul.is_charging = true;
                skippable = false;
                
                if (characters >= message_length && obj_ceroba_transformation_soul.is_charged)
                    message_adv = true;
            }
            
            if (message_current == message_end)
            {
                skippable = false;
                
                if (characters >= message_length)
                    cutscene_advance();
            }
            
            break;
        
        case 21:
            with (obj_ceroba_transformation_soul)
            {
                if (is_charged)
                {
                    audio_stop_sound(snd_chargeshot_charge);
                    instance_create_depth(x, y, -100, obj_heart_yellow_shot_blast_axis_cutscene);
                    obj_heart_yellow_shot_blast_axis_cutscene.laser_length_max = 120;
                    sprite_index = spr_heart_yellow_shoot;
                    image_index = 0;
                    image_speed = 0;
                    other.draw_enabled = false;
                    other.scene++;
                }
            }
            
            break;
        
        case 22:
            if (instance_exists(obj_heart_yellow_shot_blast_axis_cutscene))
            {
                if (obj_heart_yellow_shot_blast_axis_cutscene.laser_length >= obj_heart_yellow_shot_blast_axis_cutscene.laser_length_max)
                {
                    obj_axis_body_geno.sprite_index = spr_axis_body_geno_hit;
                    obj_axis_body_geno.image_speed = 1;
                    obj_axis_body_geno.image_blend = c_yellow;
                    audio_play_sound(snd_arc_hit, 1, 0);
                    audio_play_sound(snd_monster_damage_hit_critical, 1, 0);
                    audio_play_sound(snd_axis_geno_laser_drill, 1, 0);
                    scr_screenshake_battle(8, 2);
                    cutscene_advance();
                }
            }
            
            break;
        
        case 23:
            if (cutscene_wait(1))
            {
                obj_axis_body_geno.image_blend = c_white;
                audio_stop_sound(snd_axis_geno_laser_drill);
                audio_play_sound(snd_undertale_explosion, 1, 0);
                scr_screenshake_battle(4, 3);
            }
            
            break;
        
        case 24:
            obj_heart_yellow_shot_blast_axis_cutscene.laser_length += 30;
            draw_white_circle = true;
            draw_alpha_white += 0.1;
            
            if (draw_alpha_white >= 1)
            {
                draw_white_circle = false;
                obj_ceroba_transformation_soul.sprite_index = spr_heart_yellow_up;
                obj_heart_yellow_shot_blast_axis_cutscene.alarm[0] = 15;
                cutscene_advance();
            }
            
            break;
        
        case 25:
            obj_axis_body_geno.image_speed = 0;
            obj_axis_body_geno.image_index = 0;
            obj_axis_body_geno.sprite_index = spr_axis_body_geno_death;
            cutscene_wait(3);
            break;
        
        case 26:
            draw_alpha_white -= 0.05;
            
            if (draw_alpha_white <= 0)
                cutscene_advance();
            
            break;
        
        case 27:
            cutscene_wait(1);
            break;
        
        case 28:
            obj_axis_body_geno.image_speed = 1;
            
            if (obj_axis_body_geno.image_index >= (obj_axis_body_geno.image_number - 1))
            {
                obj_axis_body_geno.image_speed = 0;
                obj_axis_body_geno.image_index = obj_axis_body_geno.image_number - 1;
                cutscene_advance();
            }
            
            break;
        
        case 29:
            cutscene_wait(2);
            break;
        
        case 30:
            instance_destroy(obj_heart_battle_fighting_parent);
            instance_destroy(obj_ceroba_transformation_soul);
            global.important_cutscene = true;
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_in);
            instance_destroy(obj_dialogue_box_battle_transformation_any);
            cutscene_advance();
            break;
        
        case 31:
            if (instance_exists(obj_dialogue_box_battle))
            {
                global.enemy_dead = true;
                instance_create(0, 0, obj_dialogue_battle_win_genocide);
                audio_play_sound(snd_monster_damage_death, 20, false);
                instance_destroy();
                
                with (obj_quote_bubble_battle)
                    instance_destroy();
            }
            
            break;
    }
}
