var attack_duration, xx, yy, speed_perc, bell, shake_amount;

if (live_call())
    return global.live_result;

switch (scene)
{
    case -1:
        with (obj_heart_battle_fighting_parent)
        {
            moveable = false;
            x = lerp(x, 320, 0.15);
            y = lerp(y, 350, 0.15);
        }
        
        if (scr_battle_box_resize_midfight(60, 40, 320, 350))
        {
            obj_heart_battle_fighting_parent.moveable = true;
            scene++;
        }
        
        break;
    
    case 0:
        with (obj_ceroba_body_pacifist_phase_1)
        {
            if (sprite_index != spr_ceroba_transformation_p1_1 && sprite_index != spr_ceroba_transformation_p1_2)
            {
                sprite_index = spr_ceroba_transformation_p1_1;
                image_speed = 1;
                image_index = 0;
            }
            else if (image_index >= (image_number - 1))
            {
                sprite_index = spr_ceroba_transformation_p1_2;
                image_speed = 0;
                image_index = image_number - 1;
                
                with (other)
                {
                    if (cutscene_wait(0.5))
                        image_speed = 1;
                }
            }
        }
        
        break;
    
    case 1:
        attack_duration = 3;
        
        if (global.current_hp_self < 1)
            cutscene_wait(attack_duration);
        
        if (!instance_exists(obj_ceroba_transform_particles))
            instance_create_depth(0, 0, -100, obj_ceroba_transform_particles);
        
        if (global.hit_self == true)
        {
            if ((soul_hurt_count % 2) == 0)
            {
                instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_heart_battle_fighting_parent.depth + 1, obj_ceroba_transform_soul_particles);
                soul_flash_overlay = 1;
                audio_play_sound(229, 1, 0, 1, 0, random_range(0.8, 1.2));
            }
            
            global.hit_self = false;
            soul_hurt_count += 1;
        }
        
        obj_ceroba_body_pacifist_phase_1.image_speed = 1;
        break;
    
    case 2:
        if (global.current_hp_self >= 1)
            exit;
        
        with (obj_ceroba_body_pacifist_phase_1)
        {
            if (sprite_index != spr_ceroba_transformation_p1_3)
            {
                sprite_index = spr_ceroba_transformation_p1_3;
                image_speed = 1;
                image_index = 0;
            }
            else if (image_index >= (image_number - 1))
            {
                image_speed = 0;
                image_index = image_number - 1;
                sprite_index = -4;
                instance_create_depth(x, y, depth - 1, obj_ceroba_transformation_p1_4_legs);
                instance_create_depth(x, y, depth - 3, obj_ceroba_transformation_p1_4_arm);
                instance_create_depth(x, y, depth - 2, obj_ceroba_transformation_p1_4_blouse);
                instance_create_depth(x, y, depth - 1, obj_ceroba_transformation_p1_4_face);
                instance_create_depth(x, y, depth + 1, obj_ceroba_transformation_p1_4_staff);
                other.scene++;
            }
        }
        
        break;
    
    case 3:
        ring_timer--;
        
        if (ring_timer <= 0 && cutscene_timer > 60)
        {
            instance_create_depth(obj_ceroba_body_pacifist_phase_1.x - 117, obj_ceroba_body_pacifist_phase_1.y - 165, -999, obj_attack_ceroba_transform_ring);
            ring_timer = ring_timer_max;
            ring_timer_max -= 0.08;
        }
        
        ceroba_shake_intensity += 0.015;
        xx = random_range(-ceroba_shake_intensity, ceroba_shake_intensity);
        yy = random_range(-ceroba_shake_intensity, ceroba_shake_intensity);
        
        with (obj_ceroba_transformation_p1_4_arm)
        {
            x = xstart;
            y = ystart;
            x += xx;
            y += yy;
        }
        
        with (obj_ceroba_transformation_p1_4_staff)
        {
            x = xstart;
            y = ystart;
            x += xx;
            y += yy;
        }
        
        with (obj_ceroba_transformation_p1_4_face)
        {
            x = xstart;
            y = ystart;
            x += xx;
            y += yy;
        }
        
        with (obj_ceroba_transformation_p1_4_blouse)
        {
            x = xstart;
            y = ystart;
            x += (xx * 0.5);
            y += (yy * 0.5);
        }
        
        with (obj_ceroba_transformation_p1_4_legs)
        {
            x = xstart;
            y = ystart;
            x += (xx * 0.3);
            y += (yy * 0.3);
        }
        
        cutscene_wait(6);
        break;
    
    case 4:
        with (obj_heart_battle_fighting_parent)
        {
            moveable = false;
            x = lerp(x, 320, 0.25);
            y = lerp(y, obj_dialogue_box_battle_transformation_any.y, 0.25);
        }
        
        with (obj_ceroba_body_pacifist_phase_1)
        {
            if (sprite_index != spr_ceroba_transformation_p1_4)
            {
                instance_destroy(obj_ceroba_transformation_p1_4_legs);
                instance_destroy(obj_ceroba_transformation_p1_4_arm);
                instance_destroy(obj_ceroba_transformation_p1_4_blouse);
                instance_destroy(obj_ceroba_transformation_p1_4_face);
                instance_destroy(obj_ceroba_transformation_p1_4_staff);
                sprite_index = spr_ceroba_transformation_p1_4;
                image_index = 0;
                image_speed = 1;
            }
            else if (image_index >= (image_number - 1))
            {
                sprite_index = spr_ceroba_transformation_p1_4_loop;
                image_index = 0;
                instance_create_depth(320, y, -999, obj_ceroba_transformation_p1_blast);
                audio_play_sound(snd_ceroba_big_shot, 1, 0);
                other.scene++;
            }
        }
        
        break;
    
    case 5:
        if (!instance_exists(obj_ceroba_transform_slowdown))
            instance_create_depth(0, 0, -10000, obj_ceroba_transform_slowdown);
        
        with (obj_ceroba_transformation_p1_blast)
        {
            y += other.bullet_speed;
            
            if (y > (obj_dialogue_box_battle_transformation_any.bbox_top - 40))
                other.bullet_speed = lerp(other.bullet_speed, 0, 0.1);
        }
        
        speed_perc = bullet_speed / bullet_speed_max;
        
        with (obj_ceroba_body_pacifist_phase_1)
            image_speed = speed_perc;
        
        if (instance_exists(obj_petal_generator_phase_1))
            instance_destroy(obj_petal_generator_phase_1);
        
        with (obj_petal)
        {
            if (!variable_instance_exists(id, "weight_original"))
            {
                weight_original = weight;
                trajectory_original = trajectory;
                modifier_original = modifier;
            }
            else
            {
                weight = weight_original * speed_perc;
                trajectory = trajectory_original * speed_perc;
                modifier = modifier_original * (1000 * (1 - speed_perc));
                image_speed = 1 * speed_perc;
            }
        }
        
        with (obj_ceroba_transform_slowdown)
            starlo_take_aim_overlay_alpha = 1 - speed_perc;
        
        if (speed_perc <= 0)
            cutscene_wait(0.5);
        
        break;
    
    case 6:
        if (!instance_exists(obj_ceroba_transformation_soul))
        {
            instance_create(0, 0, obj_battle_justice_effect);
            obj_heart_battle_fighting_parent.image_alpha = 0;
            instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_heart_battle_fighting_parent.depth, obj_ceroba_transformation_soul);
            instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_heart_battle_fighting_parent.depth - 1, obj_ceroba_transformation_soul_effect);
        }
        
        cutscene_wait(1);
        break;
    
    case 7:
        with (obj_ceroba_transformation_soul)
        {
            if (image_angle > -24)
                image_angle -= 6;
            else
                other.scene = 7.5;
        }
        
        break;
    
    case 7.5:
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
                other.scene = 8;
            }
        }
        
        break;
    
    case 8:
        if (cutscene_wait(1))
            scene = 9;
        
        break;
    
    case 9:
        with (obj_ceroba_transformation_soul)
        {
            is_charging = true;
            
            if (is_charged)
                other.scene++;
        }
        
        break;
    
    case 10:
        bullet_speed_max = 1;
        
        if (bullet_speed < bullet_speed_max)
            bullet_speed += 0.1;
        
        speed_perc = bullet_speed / bullet_speed_max;
        
        with (obj_ceroba_body_pacifist_phase_1)
        {
            if (sprite_index <= spr_ceroba_transformation_p1_5)
                sprite_index = spr_ceroba_transformation_p1_5;
            
            image_speed = speed_perc;
        }
        
        with (obj_ceroba_transform_slowdown)
            starlo_take_aim_overlay_alpha = 1 - speed_perc;
        
        with (obj_petal)
        {
            weight = weight_original * speed_perc;
            trajectory = trajectory_original * speed_perc;
            modifier = modifier_original * (1000 * (1 - speed_perc));
            image_speed = 1 * speed_perc;
        }
        
        if (speed_perc >= 1)
            cutscene_wait(0.5);
        
        break;
    
    case 11:
        instance_destroy(obj_ceroba_transform_slowdown);
        
        with (obj_ceroba_transformation_soul)
        {
            can_shoot = true;
            draw_hint = true;
        }
        
        scene++;
        break;
    
    case 12:
        if (!instance_exists(obj_heart_yellow_shot_big))
            exit;
        
        with (obj_heart_yellow_shot_big)
        {
            if (instance_exists(obj_ceroba_transformation_p1_blast) && y <= obj_ceroba_transformation_p1_blast.y)
            {
                instance_destroy(obj_ceroba_transformation_p1_blast);
                
                with (obj_petal)
                {
                    weight = 0;
                    trajectory = 0;
                    direction = point_direction(obj_heart_yellow_shot_big.x, obj_heart_yellow_shot_big.y, x, y);
                    speed = 20;
                }
            }
            
            if (y <= obj_ceroba_body_pacifist_phase_1.y)
            {
                with (obj_ceroba_body_pacifist_phase_1)
                {
                    image_index = 0;
                    image_speed = 1;
                    sprite_index = spr_ceroba_transformation_p1_6;
                }
                
                other.scene++;
            }
        }
        
        break;
    
    case 13:
        with (obj_ceroba_body_pacifist_phase_1)
        {
            if (image_index >= 87)
            {
                image_speed = 0;
                instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
                instance_create_depth(0, 0, obj_quote_bubble_battle_yellow_2.depth - 1, obj_quote_battle_ceroba_transform);
                other.scene++;
            }
        }
        
        break;
    
    case 14:
        if (!instance_exists(obj_quote_battle_ceroba_transform))
            obj_ceroba_body_pacifist_phase_1.image_speed = 1;
        
        with (obj_ceroba_body_pacifist_phase_1)
        {
            if (image_index >= 103)
            {
                image_speed = 0;
                instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
                instance_create_depth(0, 0, obj_quote_bubble_battle_yellow_2.depth - 1, obj_quote_battle_ceroba_transform_2);
                other.scene++;
            }
        }
        
        break;
    
    case 15:
        if (!instance_exists(obj_quote_battle_ceroba_transform_2))
            obj_ceroba_body_pacifist_phase_1.image_speed = 1;
        
        with (obj_ceroba_body_pacifist_phase_1)
        {
            if (image_index >= 109)
            {
                image_speed = 0;
                instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
                instance_create_depth(0, 0, obj_quote_bubble_battle_yellow_2.depth - 1, obj_quote_battle_ceroba_transform_3);
                other.scene++;
            }
        }
        
        break;
    
    case 16:
        if (!instance_exists(obj_quote_battle_ceroba_transform_3))
            obj_ceroba_body_pacifist_phase_1.image_speed = 1;
        
        with (obj_ceroba_body_pacifist_phase_1)
        {
            if (image_index >= 143)
            {
                image_speed = 0;
                instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
                instance_create_depth(0, 0, obj_quote_bubble_battle_yellow_2.depth - 1, obj_quote_battle_ceroba_transform_4);
                other.scene++;
            }
        }
        
        break;
    
    case 17:
        if (!instance_exists(obj_quote_battle_ceroba_transform_4))
        {
            global.battle_music = audio_play_sound(mus_mothers_love_intro, 20, false);
            xx = -1000;
            yy = -1000;
            instance_create_depth(xx, yy, -1000, obj_ceroba_transformation_mask);
            obj_ceroba_transformation_mask.sprite_index = spr_ceroba_mask_resting;
            scene++;
        }
        
        break;
    
    case 18:
        with (obj_ceroba_body_pacifist_phase_1)
        {
            if (sprite_index != spr_ceroba_transformation_p1_7)
            {
                instance_create_depth(-500, -500, depth + 1, obj_ceroba_transformation_p1_hair);
                sprite_index = spr_ceroba_transformation_p1_7;
                image_speed = 1;
                image_index = 0;
            }
            else if (image_index > 4 && image_index < 16 && !instance_exists(obj_ceroba_transformation_beam_spawner))
            {
                instance_create_depth(obj_ceroba_transformation_mask.x, obj_ceroba_transformation_mask.y - 10, obj_ceroba_transformation_mask.depth + 1, obj_ceroba_transformation_beam_spawner);
                audio_play_sound(snd_ceroba_powerup, 1, 0);
            }
            else if (image_index > 16 && instance_exists(obj_ceroba_transformation_beam_spawner))
            {
                instance_destroy(obj_ceroba_transformation_beam_spawner);
            }
            else if (image_index >= 24)
            {
                instance_create_depth(obj_ceroba_transformation_mask.x, obj_ceroba_transformation_mask.y - 5, obj_ceroba_transformation_mask.depth + 1, obj_ceroba_transform_white_transition);
                other.scene = 19;
            }
        }
        
        break;
    
    case 19:
        with (obj_ceroba_body_pacifist_phase_1)
        {
            if (image_index >= (image_number - 1))
            {
                image_index = image_number - 1;
                image_speed = 0;
            }
        }
        
        if (obj_ceroba_transform_white_transition.multiplier >= 1)
            scene = 20;
        
        break;
    
    case 20:
        cutscene_wait(1);
        break;
    
    case 21:
        obj_ceroba_transformation_mask.image_alpha -= 0.022;
        
        if (obj_ceroba_transformation_mask.image_alpha <= 0)
        {
            obj_ceroba_transformation_mask.image_alpha = 0;
            cutscene_wait(1);
        }
        
        break;
    
    case 22:
        bell = instance_create_depth(320, 10, -1100, obj_ceroba_transformation_p1_bell);
        bell.alarm[0] = 1;
        bell = instance_create_depth(400, 90, -1100, obj_ceroba_transformation_p1_bell);
        bell.alarm[0] = 30;
        bell = instance_create_depth(320, 180, -1100, obj_ceroba_transformation_p1_bell);
        bell.alarm[0] = 60;
        bell = instance_create_depth(240, 90, -1100, obj_ceroba_transformation_p1_bell);
        bell.alarm[0] = 90;
        scene++;
        break;
    
    case 23:
        with (obj_ceroba_transformation_p1_bell)
        {
            if (image_alpha < 1)
                exit;
        }
        
        instance_create_depth(320, 110, -1050, obj_ceroba_transformation_p1_shield);
        scene++;
        break;
    
    case 24:
        if (obj_ceroba_transformation_p1_shield.image_index >= (obj_ceroba_transformation_p1_shield.image_number - 1))
            cutscene_wait(1.5);
        
        break;
    
    case 25:
        obj_ceroba_transformation_p1_shield.image_alpha -= 0.0222;
        
        with (obj_ceroba_transformation_p1_bell)
        {
            fade = false;
            image_alpha = obj_ceroba_transformation_p1_shield.image_alpha;
        }
        
        if (obj_ceroba_transformation_p1_shield.image_alpha <= 0)
            scene++;
        
        break;
    
    case 26:
        if (global.current_hp_self < global.max_hp_self)
            global.current_hp_self = global.max_hp_self;
        
        obj_ceroba_phase_2_red_shader.decimal_count = 0;
        cutscene_wait(1);
        break;
    
    case 27:
        draw_alpha += 0.05;
        
        if (draw_alpha >= 1)
        {
            scene++;
            draw_alpha = 1;
        }
        
        break;
    
    case 28:
        instance_destroy(obj_ceroba_body_pacifist_phase_1);
        obj_ceroba_transformation_mask.y = 78;
        obj_ceroba_transformation_mask.x = 318;
        obj_ceroba_transformation_mask.ystart = 80;
        obj_ceroba_transformation_mask.image_alpha = 0;
        cutscene_wait(1);
        break;
    
    case 29:
        obj_ceroba_transformation_mask.image_alpha += 0.035;
        
        if (obj_ceroba_transformation_mask.image_alpha >= 1)
        {
            obj_ceroba_transformation_mask.image_alpha = 1;
            scene++;
        }
        
        break;
    
    case 30:
        with (obj_ceroba_transformation_mask)
        {
            if (sprite_index != spr_ceroba_transformation_p1_mask_start)
            {
                audio_play_sound(snd_ceroba_phase_1_transform, 1, 0);
                sprite_index = spr_ceroba_transformation_p1_mask_start;
                image_index = 0;
                image_speed = 1;
            }
            else if (image_index >= (image_number - 1))
            {
                image_index = image_number - 1;
                image_speed = 0;
                other.scene += 1;
            }
        }
        
        break;
    
    case 31:
        cutscene_wait(0.5);
        break;
    
    case 32:
        instance_destroy(obj_ceroba_transform_white_transition);
        instance_destroy(obj_ceroba_transformation_p1_bell);
        instance_destroy(obj_petal_generator_phase_1);
        instance_create_depth(0, 0, 0, obj_petal_generator_phase_2);
        instance_create_depth(318, 250, 100, obj_ceroba_body_pacifist_phase_2);
        
        with (obj_ceroba_body_pacifist_phase_2)
        {
            sprite_index = spr_ceroba_p2_1;
            image_index = 0;
            image_speed = 1;
        }
        
        scene++;
        break;
    
    case 33:
        if (draw_alpha > 0)
            draw_alpha -= 0.03;
        else
            scene++;
        
        break;
    
    case 34:
        if (scr_battle_box_resize_midfight(140, 140, 319, 320))
            cutscene_wait(1);
        
        break;
    
    case 35:
        global.battle_music = audio_play_sound(mus_mothers_love_phase_1, 20, true);
        global.hotland_flag[2] = 1;
        global.attack_cycle_max = 17;
        global.enemy_attack = "Ceroba Phase 2 Opener";
        global.attack_end_text = false;
        global.enemy_attack_stat = 14;
        
        if (global.option_autoshoot)
            instance_create_depth(536, 399, 5, obj_autofire_toggle);
        
        obj_ceroba_transformation_mask.image_alpha = 0;
        
        if (!instance_exists(obj_heart_battle_fighting_yellow_final))
        {
            instance_destroy(obj_heart_battle_fighting_parent);
            instance_create_depth(obj_ceroba_transformation_soul.x, obj_ceroba_transformation_soul.y, obj_ceroba_transformation_soul.depth, obj_heart_battle_fighting_yellow_final);
        }
        
        obj_heart_battle_fighting_yellow_final.moveable = true;
        obj_heart_battle_fighting_yellow_final.image_alpha = 1;
        instance_destroy(obj_ceroba_transformation_soul);
        instance_destroy(self, false);
        break;
}

if (instance_exists(obj_ceroba_transformation_soul))
{
    with (obj_ceroba_transformation_soul)
    {
        if (sprite_index == spr_heart_yellow_shoot && image_index >= (image_number - 1))
        {
            sprite_index = spr_heart_yellow_up;
            image_index = 0;
            image_speed = 0;
        }
    }
}

if (scene < 7)
{
    shake_amount = soul_hurt_count * soul_shake_modif;
    soul_x_offset = random_range(-shake_amount, shake_amount);
    soul_y_offset = random_range(-shake_amount, shake_amount);
    
    if (soul_flash_overlay > 0.05)
        soul_flash_overlay = lerp(soul_flash_overlay, 0, 0.15);
    else
        soul_flash_overlay = 0;
}
