var weaken_sound, heart, new_soul, i, new_capsule, yellow_col;

if (live_call())
    return global.live_result;

if (stage == 1)
{
    if (soul_shake == true)
    {
        obj_heart_battle_fighting_red.x = obj_heart_battle_fighting_red.xstart;
        obj_heart_battle_fighting_red.y = obj_heart_battle_fighting_red.ystart;
        obj_heart_battle_fighting_red.x += random_range(-2, 2);
        obj_heart_battle_fighting_red.y += random_range(-2, 2);
    }
    
    if (soul_can_hurt == true)
    {
        if (global.hit_self == true)
        {
            weaken_sound = audio_play_sound(snd_soul_gameover_hit, 1, 0);
            audio_sound_pitch(weaken_sound, 0.75);
            soul_shake = true;
            obj_heart_battle_fighting_parent.moveable = false;
            obj_heart_battle_fighting_parent.xstart = obj_heart_battle_fighting_parent.x;
            obj_heart_battle_fighting_parent.ystart = obj_heart_battle_fighting_parent.y;
            instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_heart_battle_fighting_parent.depth + 1, obj_ceroba_transform_soul_particles);
            audio_play_sound(snd_attackhitcrit, 1, 0);
            obj_heart_battle_fighting_parent.walk_speed -= 1;
            audio_sound_gain(global.battle_music, audio_sound_get_gain(global.battle_music) * 0.8, 300);
            
            if (obj_heart_battle_fighting_parent.walk_speed <= 0)
            {
                scr_audio_fade_out(global.battle_music, 1000);
                
                if (!alarm[3])
                    alarm[3] = 30;
                
                fade_out = true;
                alarm[0] = -1;
                
                with (obj_battle_enemy_attack_parent)
                    instance_destroy();
                
                instance_destroy(obj_battle_enemy_attack_spawner_asgore_circle);
                instance_destroy(obj_battle_enemy_attack_spawner_asgore_circle_full);
                instance_destroy(obj_battle_enemy_attack_spawner_asgore_hands);
                instance_destroy(obj_battle_enemy_attack_spawner_asgore_sinusoid);
                instance_destroy(obj_battle_enemy_attack_spawner_asgore_warning);
                instance_destroy(obj_battle_enemy_attack_asgore_warning);
                instance_destroy(obj_battle_enemy_attack_spawner_asgore_fire_circle);
                
                with (obj_battle_enemy_attack_asgore_hand_horizontal)
                    instance_destroy();
                
                with (obj_battle_enemy_attack_asgore_hand_vertical)
                    instance_destroy();
            }
            else
            {
                alarm[2] = 10;
            }
            
            global.hit_self = false;
        }
    }
    else
    {
        global.hit_self = false;
    }
    
    if (fade_out == true)
    {
        alarm[0] = -1;
        
        if (draw_alpha < 1)
            draw_alpha += 0.05;
        else if (!alarm[4])
            alarm[4] = 45;
        
        obj_heart_battle_fighting_parent.x = lerp(obj_heart_battle_fighting_parent.x, 320, 0.15);
        obj_heart_battle_fighting_parent.y = lerp(obj_heart_battle_fighting_parent.y, 240, 0.15);
    }
}
else
{
    heart = obj_heart_battle_fighting_parent;
    
    switch (scene)
    {
        case -3:
            obj_heart_battle_fighting_parent.x = obj_heart_battle_fighting_parent.xstart;
            obj_heart_battle_fighting_parent.y = obj_heart_battle_fighting_parent.ystart;
            obj_heart_battle_fighting_parent.x += random_range(0.3, -0.3);
            obj_heart_battle_fighting_parent.y += random_range(0.3, -0.3);
            cutscene_wait(3);
            break;
        
        case -2:
            instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_heart_battle_fighting_parent.depth + 1, obj_ceroba_transform_soul_particles);
            audio_play_sound(snd_attackhitcrit, 1, 0);
            obj_heart_battle_fighting_parent.x = obj_heart_battle_fighting_parent.xstart;
            obj_heart_battle_fighting_parent.y = obj_heart_battle_fighting_parent.ystart;
            cutscene_advance();
            break;
        
        case -1:
            cutscene_wait(2);
            break;
        
        case 0:
            instance_create_depth(heart.x - 1, heart.y + 90, heart.depth + 1, obj_battle_enemy_attack_asgore_soul_capsule);
            obj_battle_enemy_attack_asgore_soul_capsule.image_index = obj_battle_enemy_attack_asgore_soul_capsule.image_number - 1;
            audio_play_sound(snd_undertale_appear, 1, 0);
            cutscene_advance();
            break;
        
        case 1:
            obj_battle_enemy_attack_asgore_soul_capsule.image_alpha += 0.05;
            
            if (obj_battle_enemy_attack_asgore_soul_capsule.image_alpha >= 1)
            {
                obj_battle_enemy_attack_asgore_soul_capsule.image_alpha = 1;
                cutscene_wait(2);
            }
            
            break;
        
        case 2:
            audio_play_sound(snd_undertale_swoosh, 1, 0);
            obj_battle_enemy_attack_asgore_soul_capsule.vspeed = -4;
            cutscene_advance();
            break;
        
        case 3:
            if (obj_battle_enemy_attack_asgore_soul_capsule.y <= (heart.y + 30))
            {
                obj_battle_enemy_attack_asgore_soul_capsule.y = heart.y + 30;
                obj_battle_enemy_attack_asgore_soul_capsule.vspeed = 0;
                audio_play_sound(snd_undertale_impact, 1, 0);
                scr_screenshake_battle_custom(6, 2);
                cutscene_advance();
            }
            
            break;
        
        case 4:
            cutscene_wait(1.5);
            break;
        
        case 5:
            obj_battle_enemy_attack_asgore_soul_capsule.image_speed = -1.5;
            
            if (obj_battle_enemy_attack_asgore_soul_capsule.image_index <= 4)
            {
                audio_play_sound(snd_undertale_flash, 1, 0);
                obj_battle_enemy_attack_asgore_soul_capsule.flash_alpha = 1;
                obj_battle_enemy_attack_asgore_soul_capsule.sprite_index = spr_container_open;
                obj_battle_enemy_attack_asgore_soul_capsule.image_speed = 0;
                obj_battle_enemy_attack_asgore_soul_capsule.image_index = 0;
                obj_battle_enemy_attack_asgore_soul_capsule.soul_color = make_color_rgb(255, 255, 0);
                new_soul = instance_create_depth(obj_battle_enemy_attack_asgore_soul_capsule.x, obj_battle_enemy_attack_asgore_soul_capsule.y, -1000, obj_barrier_soul_battle);
                new_soul.spawner = 2884;
                new_soul.image_alpha = 1;
                new_soul.image_xscale = 2;
                new_soul.image_yscale = 2;
                obj_heart_battle_fighting_parent.image_alpha = 0;
                cutscene_advance();
            }
            
            break;
        
        case 6:
            cutscene_wait(2.5);
            break;
        
        case 7:
            soul_color[0] = make_color_rgb(0, 128, 0);
            soul_color[1] = make_color_rgb(255, 160, 64);
            soul_color[2] = make_color_rgb(128, 0, 128);
            soul_color[3] = make_color_rgb(0, 0, 255);
            soul_color[4] = make_color_rgb(0, 255, 255);
            
            for (i = 0; i < 5; i++)
            {
                new_capsule = instance_create_depth(192 + (64 * i), 384, -1010, obj_battle_enemy_attack_asgore_soul_capsule);
                new_capsule.sprite_index = spr_container_open;
                new_capsule.image_speed = 0;
                new_capsule.image_index = 0;
                new_capsule.image_alpha = 0;
                new_capsule.soul_color = other.soul_color[i];
                new_soul = instance_create_depth(new_capsule.x, new_capsule.y, -1020, obj_barrier_soul_battle);
                new_soul.spawner = new_capsule;
                new_soul.image_alpha = 0;
                new_soul.image_xscale = 2;
                new_soul.image_yscale = 2;
                new_soul.image_index = obj_barrier_soul_battle.image_index;
            }
            
            audio_play_sound(snd_undertale_appear, 1, 0);
            cutscene_advance();
            break;
        
        case 8:
            yellow_col = make_color_rgb(255, 255, 0);
            
            with (obj_battle_enemy_attack_asgore_soul_capsule)
            {
                if (image_alpha < 1)
                {
                    image_alpha += 0.05;
                }
                else if (soul_color != yellow_col)
                {
                    with (obj_barrier_soul_battle)
                        image_alpha = 1;
                    
                    with (obj_battle_enemy_attack_asgore_soul_capsule)
                        image_alpha = 1;
                    
                    other.scene = 9;
                }
            }
            
            with (obj_barrier_soul_battle)
            {
                if (image_alpha < 1)
                    image_alpha += 0.05;
            }
            
            break;
        
        case 9:
            cutscene_wait(3);
            break;
        
        case 10:
            if (!instance_exists(obj_dialogue_battle_asgore))
                msg = instance_create(x, y, obj_dialogue_battle_asgore);
            else if (!global.dialogue_open)
                cutscene_advance();
            
            with (msg)
            {
                sndfnt = 267;
                message[0] = "       Rest well, young one.";
                message[1] = "           I am sorry.";
                skippable = false;
                message_timer = 50;
            }
            
            break;
        
        case 11:
            cutscene_wait(3);
            break;
        
        case 12:
            cymbal_sound = audio_play_sound(mus_cymbal, 1, 0);
            cutscene_advance();
            break;
        
        case 13:
            fade_out_alpha = audio_sound_get_track_position(cymbal_sound) / audio_sound_length(cymbal_sound);
            
            if (fade_out_alpha >= 0.99)
            {
                with (obj_battle_enemy_attack_asgore_soul_capsule)
                    instance_destroy();
                
                with (obj_barrier_soul_battle)
                    instance_destroy();
                
                fade_out_alpha = 1;
                scene++;
            }
            
            break;
        
        case 14:
            cutscene_wait(2);
            break;
        
        case 15:
            fade_out_alpha -= 0.03;
            
            if (fade_out_alpha <= 0)
                cutscene_wait(1.5);
            
            break;
        
        case 16:
            room = rm_credits;
            break;
    }
}
