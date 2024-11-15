var fun_value_check, song_pos, i, fight_end, camw_old, camh_old, camx_old, camy_old, camw_new, camh_new, camx_new, camy_new;

if (live_call())
    return global.live_result;

fun_value_check = false;

if (global.fun_value >= 70)
    fun_value_check = true;

if (intro_noloop == false)
{
    switch (scene)
    {
        case 0:
            song_pos = audio_sound_get_track_position(intro_song);
            
            for (i = 0; i < array_length(timestamp); i++)
            {
                if (i == timestamp_current && song_pos >= timestamp[i])
                {
                    if (timestamp_current < (array_length(timestamp) - 1))
                    {
                        image_index = timestamp_image_index[i];
                        draw_alpha = 1;
                        timestamp_current += 1;
                    }
                    else
                    {
                        scene++;
                    }
                }
            }
            
            draw_alpha = lerp(draw_alpha, 0, 0.15);
            image_alpha = draw_alpha;
            break;
        
        case 1:
            if (white_alpha < 1)
                white_alpha += 0.25;
            else
                scene++;
            
            break;
        
        case 2:
            if (!instance_exists(obj_flowey_gray_eyes))
                instance_create_depth(320, 140, -200, obj_flowey_gray_eyes);
            
            sprite_index = spr_battle_flowey_gray_idle;
            draw_alpha = 1;
            image_alpha = 1;
            scene++;
            break;
        
        case 3:
            cutscene_wait(1);
            break;
        
        case 4:
            if (white_alpha > 0)
                white_alpha -= 0.03;
            else
                scene++;
            
            break;
        
        case 5:
            cutscene_wait(1);
            break;
        
        case 6:
            global.battle_music = audio_play_sound(mus_gotcha, 1, 1);
            scene++;
            break;
        
        case 7:
            if (cutscene_dialogue_final_flowey())
            {
                scr_audio_fade_out(global.battle_music, 500);
                cutscene_advance(7.5);
            }
            
            with (msg)
            {
                position = 0;
                sndfnt = 664;
                message[0] = "* H O W D Y .";
                message[1] = "* Have fun with your friend back#  there?";
                message[2] = "* Hahahahaha!!!";
                message[3] = "* Thought you slipped away for a#  second didn't ya?";
                message[4] = "* You are quite a vigilant one...";
                message[5] = "* Bet you could've outlasted#  ASGORE if you bothered to reach#  him.";
                message[6] = "* Even though your choices in#  this timeline are useless to me#  now...";
                message[7] = "* I didn't outright HATE our time#  together. Not all of it.";
                message[8] = "* Two lost souls deciding who#  lives or dies...";
                message[9] = "* Most of the time you were#  insufferable but when you gave#  in...";
                message[10] = "* ...Gave in to your true violent#  urges. That was the best part.";
                message[11] = "* That's when I knew you had it#  in you to fight the King.";
                message[12] = "* But that was so long ago, haha.#  Just look at you now!";
                message[13] = "* Barely recognizable!";
                message[14] = "* You know, some say yellow is#  the color of justice.";
                message[15] = "* Close, but that's not the word#  I would choose...";
                message[16] = "* Yellow is the color of#  judgment.";
                message[17] = "* Consequence...";
                message[18] = "* You would know, wouldn't you?";
                message[19] = "* ...";
                message[20] = "* Ahhh, you're right.";
                message[21] = "* Who cares about all that?";
                message[22] = "* Life's all about the thrill!#  How fun your experiences are!";
                message[23] = "* Our time here has been way#  better than any interaction out#  there!";
                message[24] = "* And I'm not looking for it to#  end any time soon!";
                message[25] = "* Of course, it can't last#  forever.";
                message[26] = "* After I overtake your SOUL,#  I'll kill ASGORE.";
                message[27] = "* I'll absorb all those poor#  children you couldn't save!";
                message[28] = "* Then and only then, I will#  become GOD.";
                message[29] = "* But for now... this is only the#  beginning. ";
                message[30] = "* So please, resist.";
                message[31] = "* Let's entertain each other a#  while longer.";
                message[32] = "* After all, in this world...";
            }
            
            break;
        
        case 7.5:
            if (cutscene_dialogue_giga(64, 150))
                cutscene_advance(8);
            
            with (msg)
            {
                position = 0;
                message[0] = " IT'S KILL OR BE KILLED";
            }
            
            break;
        
        case 8:
            audio_play_sound(mus_f_laugh, 1, 0);
            instance_destroy(obj_flowey_gray_eyes);
            sprite_index = spr_battle_flowey_gray_laugh;
            image_speed = 1;
            scene++;
            break;
        
        case 9:
            if (!audio_is_playing(mus_f_laugh))
            {
                sprite_index = spr_battle_flowey_gray_idle;
                image_speed = 1;
                
                if (!global.flowey_phase_2_noloop)
                {
                    global.flowey_phase_2_noloop = true;
                    scr_savegame_flowey();
                    scene++;
                }
                else
                {
                    scene = 11;
                }
            }
            
            break;
        
        case 10:
            clover_shake_strength += 0.01;
            
            if (clover_shake_strength >= 2)
            {
                obj_heart_battle_fighting_yellow_final.image_xscale = 2;
                obj_heart_battle_fighting_yellow_final.image_yscale = 2;
                obj_heart_battle_fighting_yellow_final.image_alpha = 1;
                clover_alpha = 0;
                audio_play_sound(snd_undertale_flash, 1, 0);
                cutscene_advance(10.5);
            }
            
            clover_offset_x = irandom_range(-clover_shake_strength, clover_shake_strength);
            clover_offset_y = irandom_range(-clover_shake_strength, clover_shake_strength);
            break;
        
        case 10.5:
            obj_heart_battle_fighting_yellow_final.image_xscale = lerp(obj_heart_battle_fighting_yellow_final.image_xscale, 1, 0.1);
            soul_overlay_alpha = 1 - (2 - obj_heart_battle_fighting_yellow_final.image_xscale);
            
            if (obj_heart_battle_fighting_yellow_final.image_xscale <= 1.05)
            {
                obj_heart_battle_fighting_yellow_final.image_xscale = 1;
                soul_overlay_alpha = 0;
                cutscene_advance(11);
            }
            
            obj_heart_battle_fighting_yellow_final.image_yscale = obj_heart_battle_fighting_yellow_final.image_xscale;
            break;
        
        case 11:
            global.battle_music = audio_play_sound(music_flowey[0], 1, 1);
            instance_create_depth(0, 0, 0, controller_flowey[0]);
            obj_heart_battle_fighting_yellow_final.moveable = true;
            scene++;
            break;
        
        case 12:
            cutscene_wait(1);
            break;
        
        case 13:
            scene = 0;
            intro_noloop = true;
            break;
    }
}
else
{
    if (scene < 19)
    {
        hp_bar_alpha = lerp(hp_bar_alpha, 1, 0.15);
        
        if (hp_bar_alpha > 0.99)
            hp_bar_alpha = 1;
    }
    else
    {
        hp_bar_alpha = lerp(hp_bar_alpha, 0, 0.25);
        
        if (hp_bar_alpha < 0.01)
            hp_bar_alpha = 0;
    }
    
    if (stage_current == 0)
    {
        switch (scene)
        {
            case 0:
                cutscene_wait(switch_timer);
                break;
            
            case 1:
                fight_end = true;
                
                for (i = 0; i < array_length(petal_alive); i++)
                {
                    if (petal_alive[i] == 1)
                    {
                        instance_create_depth(0, 0, -999, obj_flowey_battle_screen_glitch_wheel);
                        scene++;
                        fight_end = false;
                        break;
                    }
                }
                
                if (fight_end == true)
                    scene = 5;
                else
                    instance_destroy(controller_flowey[0]);
                
                break;
            
            case 2:
                image_alpha -= 0.2;
                
                if (image_alpha <= 0)
                    scene++;
                
                break;
            
            case 3:
                if (!instance_exists(obj_flowey_battle_screen_glitch_wheel))
                {
                    instance_create_depth(320, 160, -100, obj_flowey_battle_gray_wheel);
                    scene++;
                }
                
                break;
            
            case 5:
                if (sprite_index != spr_battle_flowey_gray_neutral_3)
                {
                    instance_create_depth(0, 0, -99999999, obj_flowey_battle_screen_glitch_fight);
                    sprite_index = spr_battle_flowey_gray_neutral_3;
                }
                
                obj_flowey_battle_phase_2_controller_gray.attack_delay = 3;
                cutscene_wait(6);
                break;
            
            case 6:
                if (sprite_index != spr_battle_flowey_gray_neutral_2)
                {
                    instance_create_depth(0, 0, -99999999, obj_flowey_battle_screen_glitch_fight);
                    sprite_index = spr_battle_flowey_gray_neutral_2;
                }
                
                obj_flowey_battle_phase_2_controller_gray.attack_delay = 3.5;
                cutscene_wait(7);
                break;
            
            case 7:
                if (sprite_index != spr_battle_flowey_gray_neutral_1)
                {
                    instance_create_depth(0, 0, -99999999, obj_flowey_battle_screen_glitch_fight);
                    sprite_index = spr_battle_flowey_gray_neutral_1;
                }
                
                obj_flowey_battle_phase_2_controller_gray.attack_delay = 4;
                cutscene_wait(8);
                break;
            
            case 8:
                if (sprite_index != spr_battle_flowey_gray_neutral_0)
                {
                    instance_create_depth(0, 0, -99999999, obj_flowey_battle_screen_glitch_fight);
                    sprite_index = spr_battle_flowey_gray_neutral_0;
                }
                
                instance_destroy(controller_flowey[0], false);
                cutscene_wait(1);
                break;
            
            case 9:
                scr_audio_fade_out(global.battle_music, 3000);
                cutscene_dialogue_final_flowey();
                
                with (msg)
                {
                    skippable = false;
                    message_timer = 45;
                    position = 0;
                    message[0] = "* Hey.";
                    
                    if (global.meta_flowey_fight_count >= 3 && !fun_value_check)
                        message[0] = "* ...";
                }
                
                break;
            
            case 10:
                obj_heart_battle_fighting_yellow_final.moveable = true;
                cutscene_instance_create(0, 0, obj_flowey_battle_gray_spawner_pathetic1);
                break;
            
            case 11:
                if (instance_exists(obj_flowey_battle_gray_spawner_pathetic1))
                    exit;
                
                cutscene_dialogue_final_flowey();
                
                with (msg)
                {
                    skippable = false;
                    message_timer = 45;
                    position = 0;
                    message[0] = "* Hey!";
                    
                    if (global.meta_flowey_fight_count >= 3 && !fun_value_check)
                        message[0] = "* And here we go.";
                }
                
                break;
            
            case 12:
                obj_heart_battle_fighting_yellow_final.moveable = true;
                cutscene_instance_create(0, 0, obj_flowey_battle_gray_spawner_pathetic2);
                break;
            
            case 13:
                if (instance_exists(obj_flowey_battle_gray_spawner_pathetic2))
                    exit;
                
                cutscene_dialogue_final_flowey();
                
                with (msg)
                {
                    skippable = false;
                    message_timer = 45;
                    position = 0;
                    message[0] = "* Just give up!";
                    
                    if ((global.meta_flowey_fight_count >= 1 && global.meta_flowey_fight_count < 3) || (global.meta_flowey_fight_count >= 3 && fun_value_check))
                        message[0] = "* Come on!";
                    else if (global.meta_flowey_fight_count >= 3)
                        message[0] = "* Uh-huh...";
                }
                
                break;
            
            case 14:
                obj_heart_battle_fighting_yellow_final.moveable = true;
                cutscene_instance_create(0, 0, obj_flowey_battle_gray_spawner_pathetic3);
                break;
            
            case 15:
                if (instance_exists(obj_flowey_battle_gray_spawner_pathetic3))
                    exit;
                
                cutscene_dialogue_final_flowey();
                
                with (msg)
                {
                    skippable = false;
                    message_timer = 45;
                    position = 0;
                    message[0] = "* WHAT IS WRONG WITH YOU???";
                    
                    if (global.meta_flowey_fight_count == 1)
                        message[0] = "* Idiot!";
                    
                    if (global.meta_flowey_fight_count == 2)
                        message[0] = "* Please!";
                    
                    if (global.meta_flowey_fight_count >= 3 && !fun_value_check)
                        message[0] = "* I really hate you, you know that?";
                    
                    if (global.meta_flowey_fight_count >= 3 && fun_value_check)
                        message[0] = "* ...";
                }
                
                break;
            
            case 16:
                obj_heart_battle_fighting_yellow_final.moveable = true;
                cutscene_instance_create(0, 0, obj_flowey_battle_gray_spawner_pathetic4);
                break;
            
            case 17:
                if (instance_exists(obj_flowey_battle_gray_spawner_pathetic4))
                    exit;
                
                obj_heart_battle_fighting_yellow_final.moveable = false;
                cutscene_dialogue_final_flowey();
                
                with (msg)
                {
                    skippable = false;
                    message_timer = 60;
                    position = 0;
                    message[0] = "* Y o u . .";
                    
                    if (global.meta_flowey_fight_count >= 1)
                        message[0] = "* . . .";
                    
                    if (global.meta_flowey_fight_count >= 3 && fun_value_check)
                        message[0] = "* ...";
                }
                
                break;
            
            case 18:
                obj_heart_battle_fighting_yellow_final.x = lerp(obj_heart_battle_fighting_yellow_final.x, 320, 0.2);
                obj_heart_battle_fighting_yellow_final.y = lerp(obj_heart_battle_fighting_yellow_final.y, 400, 0.2);
                cutscene_wait(3);
                break;
            
            case 19:
                if (!obj_flowey_gray_eyes.alarm[0])
                    obj_flowey_gray_eyes.alarm[0] = 90;
                
                camw_old = camera_get_view_width(view_camera[0]);
                camh_old = camera_get_view_height(view_camera[0]);
                camx_old = camera_get_view_x(view_camera[0]);
                camy_old = camera_get_view_y(view_camera[0]);
                camera_set_view_size(view_camera[0], camw_old - 0.2, camh_old - 0.2);
                camera_set_view_pos(view_camera[0], camx_old + 0.1, camy_old + 0.05);
                cutscene_wait(8);
                break;
            
            case 20:
                obj_flowey_gray_eyes.stare_at_screen = false;
                obj_flowey_gray_eyes.alarm[0] = false;
                camw_old = camera_get_view_width(view_camera[0]);
                camh_old = camera_get_view_height(view_camera[0]);
                camx_old = camera_get_view_x(view_camera[0]);
                camy_old = camera_get_view_y(view_camera[0]);
                camw_new = lerp(camw_old, 640, 0.3);
                camh_new = lerp(camh_old, 480, 0.3);
                camx_new = lerp(camx_old, 0, 0.3);
                camy_new = lerp(camy_old, 0, 0.3);
                camera_set_view_size(view_camera[0], camw_new, camh_new);
                camera_set_view_pos(view_camera[0], camx_new, camy_new);
                
                if (abs(camw_new - 640) < 0.01)
                {
                    camera_set_view_size(view_camera[0], 640, 480);
                    camera_set_view_pos(view_camera[0], 0, 0);
                    scene++;
                }
                
                break;
            
            case 21:
                instance_destroy(obj_flowey_gray_eyes);
                sprite_index = spr_battle_flowey_gray_sidelook;
                cutscene_dialogue_final_flowey();
                
                with (msg)
                {
                    position = 0;
                    sndfnt = 96;
                    
                    if (global.meta_flowey_fight_count == 0)
                    {
                        message[0] = "* ...";
                        message[1] = "* Useless...";
                        message[2] = "* Even now...";
                        message[3] = "* All of it.";
                    }
                    else if (global.meta_flowey_fight_count == 1)
                    {
                        message[0] = "* ...";
                        message[1] = "* Heh.";
                    }
                    else if (global.meta_flowey_fight_count == 2)
                    {
                        message[0] = "* ...";
                        message[1] = "* What is this?";
                    }
                    else if (global.meta_flowey_fight_count == 3)
                    {
                        message[0] = "* Great.";
                    }
                    
                    if (global.meta_flowey_fight_count == 3 && fun_value_check)
                        message[0] = "* . . .";
                }
                
                break;
            
            case 22:
                cutscene_instance_create(x, y, obj_flowey_battle_screen_glitch_ending);
                break;
            
            case 23:
                cutscene_wait(0.1);
                break;
            
            case 24:
                instance_destroy();
                instance_create_depth(320, 220, -100, obj_flowey_battle_final_ending_cutscene);
                obj_flowey_battle_final_ending_cutscene.fun_value_check = fun_value_check;
                break;
        }
    }
    
    if (stage_switch != -1)
    {
        if (!instance_exists(obj_flowey_battle_phase_2_transition))
        {
            instance_create(0, 0, obj_flowey_battle_phase_2_transition);
        }
        else if (obj_flowey_battle_phase_2_transition.fade_out == true)
        {
            if (stage_switch == 0)
            {
                scene = 0;
                
                if (petal_count < 6)
                    switch_timer = 20;
                
                instance_create_depth(320, 140, -100, obj_flowey_battle_phase_2_green_petal_spawner);
                obj_heart_battle_fighting_yellow_final.is_charging = false;
                obj_heart_battle_fighting_yellow_final.sprite_index = spr_heart_yellow_down;
                obj_heart_battle_fighting_yellow_final.image_index = 0;
                obj_heart_battle_fighting_yellow_final.image_speed = 0;
                obj_heart_battle_fighting_yellow_final.alarm[1] = -1;
                petal_count -= 1;
                
                if (petal_count == 4 || petal_count == 2 || petal_count == 0)
                    scr_battle_save();
            }
            
            sprite_index = sprite_flowey[stage_switch];
            image_alpha = 1;
            instance_destroy(obj_flowey_battle_gray_wheel_petals_special);
            instance_destroy(obj_flowey_battle_gray_wheel);
            
            if (instance_exists(obj_flowey_battle_gray_vine_grab))
            {
                obj_flowey_battle_gray_vine_grab.sprite_index = spr_battle_flowey_gray_ungrab;
                obj_flowey_battle_gray_vine_grab.image_index = 0;
                obj_flowey_battle_gray_vine_grab.image_speed = 1;
            }
            
            audio_stop_sound(global.battle_music);
            global.battle_music = audio_play_sound(music_flowey[stage_switch], 1, 1);
            
            for (i = 0; i < array_length(controller_flowey); i++)
            {
                if (i != stage_switch && instance_exists(controller_flowey[i]))
                    instance_destroy(controller_flowey[i]);
                
                if (i == stage_switch && !instance_exists(controller_flowey[i]))
                {
                    instance_create_depth(0, 0, 0, controller_flowey[i]);
                    obj_heart_battle_fighting_yellow_final.moveable = true;
                    obj_heart_battle_fighting_parent.can_shoot = true;
                }
            }
            
            stage_current = stage_switch;
            stage_switch = -1;
        }
    }
}
