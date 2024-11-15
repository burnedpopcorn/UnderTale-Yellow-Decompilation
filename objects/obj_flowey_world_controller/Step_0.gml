var sound_percentage, ef_distort, ef_scr, msg, flowey_face, x_original, y_original, mus_pos, mus_length, glitch_out;

if (live_call())
    return global.live_result;

depth = -999999;

switch (scene)
{
    case 0:
        entrance_sound = audio_play_sound(snd_flowey_world_entrance, 1, 0);
        cutscene_advance();
        break;
    
    case 1:
        sound_percentage = audio_sound_get_track_position(entrance_sound) / audio_sound_length(entrance_sound);
        ef_distort = layer_get_fx("distort");
        ef_scr = layer_get_fx("pixelate");
        fx_set_parameter(ef_distort, "g_DistortAmount", 40 - (sound_percentage * 40));
        fx_set_parameter(ef_scr, "g_CellSize", 15 - (sound_percentage * 15));
        
        if (!audio_is_playing(entrance_sound))
        {
            layer_set_visible("pixelate", false);
            layer_set_visible("distort", false);
            cutscene_advance();
        }
        
        break;
    
    case 2:
        cutscene_wait(1.5);
        break;
    
    case 3:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* You see, I've been#  watching you for a#  while.";
                message[1] = "* Gosh, what run is it?#  Gotta be in the hundreds.";
                message[2] = "* I've almost lost count!#  Haha...";
                soundfont = 96;
            }
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 4:
        actor_toriel = instance_create(obj_pl.x, obj_pl.y + 100, obj_toriel_npc);
        cutscene_music = audio_play_sound(mus_flowey_world, 1, 1);
        cutscene_advance();
        break;
    
    case 5:
        cutscene_npc_walk(actor_toriel, obj_pl.x, obj_pl.y + 30, 1, "x", "up");
        break;
    
    case 6:
        if (cutscene_wait(1))
        {
            obj_clovsleep_flashback.is_active = true;
            cutscene_advance(6.5);
        }
        
        break;
    
    case 6.5:
        if (cutscene_wait(1))
            cutscene_advance(7);
        
        break;
    
    case 7:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                talker[0] = 1159;
                message[0] = "* Ah! Hello!";
                message[1] = "* Are you all right?";
                message[2] = "* You must be wondering#  what is going on...";
                message[3] = "* I am TORIEL, caretaker#  of the RUINS.";
                soundfont = 97;
            }
        }
        
        if (obj_flowey_world_text.message_current >= 3)
            cutscene_wait(1.5);
        
        break;
    
    case 8:
        cutscene_sfx_play(650, 1);
        instance_create_depth(0, 0, 0, obj_flashback_transition_glitch);
        break;
    
    case 9:
        instance_destroy(obj_flowey_world_text);
        obj_pl.x = 40;
        obj_pl.y = 192;
        obj_pl.direction = 0;
        actor_toriel.x = 248;
        actor_toriel.y = 193;
        actor_toriel.npc_direction = "left";
        actor_toriel.up_sprite_idle = toriel_standingu;
        cutscene_advance();
        break;
    
    case 10:
        cutscene_wait(2);
        break;
    
    case 11:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* I let you carry on#  your merry way so#  many times.";
                soundfont = 96;
            }
        }
        
        if (!global.dialogue_open)
        {
            scr_cutscene_end();
            cutscene_advance();
        }
        
        break;
    
    case 12:
        if (actor_toriel.interact)
        {
            if (!instance_exists(obj_flowey_world_text))
            {
                global.cutscene = true;
                msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
                
                with (msg)
                {
                    if (other.tori_dialogue == 0)
                    {
                        other.tori_dialogue = 1;
                        message[0] = "* Go on, press the#  switch on the left.";
                        talker[0] = 1159;
                        skippable = true;
                    }
                    else
                    {
                        message[0] = "* You do know which#  way left is, do#  you not?";
                        message[1] = "* Press the switch that#  I labelled for you.";
                        talker[0] = 1159;
                        skippable = true;
                    }
                    
                    soundfont = 97;
                }
            }
        }
        
        if (!global.dialogue_open)
            global.cutscene = false;
        
        x_offset_prev = 0;
        break;
    
    case 13:
        obj_flowey_world_camera.x_offset = 0;
        obj_flowey_world_camera.x_offset = choose(-5, 5);
        
        if (obj_flowey_world_camera.x_offset == x_offset_prev)
            obj_flowey_world_camera.x_offset *= -1;
        
        if (cutscene_wait(0.5))
            obj_flowey_world_camera.x_offset = 0;
        
        break;
    
    case 14:
        if (actor_toriel.interact)
        {
            if (!instance_exists(obj_flowey_world_text))
            {
                msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
                
                with (msg)
                {
                    talker[0] = 1159;
                    message[0] = "* Splendid!";
                    message[1] = "* I am proud of you,#  little one.";
                    soundfont = 97;
                }
            }
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 15:
        cutscene_sfx_play(650, 1);
        instance_create_depth(0, 0, 0, obj_flashback_transition_glitch);
        break;
    
    case 16:
        obj_pl.x = 500;
        obj_pl.y = 220;
        obj_pl.direction = 0;
        actor_toriel.x = 560;
        actor_toriel.y = 180;
        actor_toriel.npc_direction = "down";
        scr_cutscene_end();
        cutscene_advance();
        break;
    
    case 17:
        if (actor_toriel.interact)
        {
            if (!instance_exists(obj_flowey_world_text))
            {
                global.cutscene = true;
                msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
                
                with (msg)
                {
                    message[0] = "* Go ahead and#  push the rock!";
                    talker[0] = 1159;
                    skippable = true;
                    soundfont = 97;
                }
            }
            
            if (!global.dialogue_open)
                global.cutscene = false;
        }
        
        break;
    
    case 18:
        scr_cutscene_start();
        obj_flowey_world_camera.x_offset = 0;
        obj_flowey_world_camera.x_offset = choose(-5, 5);
        
        if (obj_flowey_world_camera.x_offset == x_offset_prev)
            obj_flowey_world_camera.x_offset *= -1;
        
        if (cutscene_wait(0.5))
            obj_flowey_world_camera.x_offset = 0;
        
        break;
    
    case 19:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                talker[0] = 1159;
                message[0] = "* You are learning#  so much, my child!";
                soundfont = 97;
            }
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 20:
        instance_create_depth(0, 0, 0, obj_flashback_transition_glitch);
        cutscene_advance();
        exit;
        break;
    
    case 21:
        cutscene_npc_set_sprites(1159, 3135, 59, 2613, 3261, 3135, 59, 2613, 3261);
        obj_pl.x = 896;
        obj_pl.y = 288;
        obj_pl.image_alpha = 0;
        actor_toriel.x = 896;
        actor_toriel.y = 288;
        actor_toriel.npc_direction = "right";
        actor_toriel.sprite_index = spr_toriel_down_hold;
        break;
    
    case 22:
        cutscene_npc_walk(actor_toriel, 946, 288, 1, "x", "up", -4, 946, 192, 1028, 192, 1028, 288);
        cutscene_wait(1.25);
        break;
    
    case 23:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* I watched the same#  childish behavior play#  out over...";
                soundfont = 96;
            }
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 24:
        cutscene_wait(1.8);
        break;
    
    case 25:
        instance_create_depth(0, 0, 0, obj_flashback_transition_glitch);
        cutscene_advance();
        break;
    
    case 26:
        cutscene_npc_set_sprites(1159, 3135, 2788, 2613, 3261, 3135, 2788, 2613, 3261);
        actor_toriel.x = 1215;
        actor_toriel.y = 200;
        actor_toriel.npc_direction = "right";
        obj_toriel_npc.current_destination = 0;
        cutscene_advance();
        break;
    
    case 27:
        cutscene_npc_walk(actor_toriel, 1460, 200, 1, "x", "right");
        cutscene_wait(1);
        break;
    
    case 28:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* And over...";
                soundfont = 96;
            }
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 29:
        cutscene_wait(1);
        break;
    
    case 30:
        instance_create_depth(0, 0, 0, obj_flashback_transition_glitch);
        cutscene_advance();
        break;
    
    case 31:
        actor_toriel.x = 1560;
        actor_toriel.y = 200;
        actor_toriel.npc_direction = "right";
        cutscene_advance();
        obj_toriel_npc.current_destination = 0;
        break;
    
    case 32:
        cutscene_npc_walk(actor_toriel, 1640, 200, 1, "x", "right");
        break;
    
    case 33:
        cutscene_wait(0.5);
        break;
    
    case 34:
        if (obj_flowey_world_blook.image_alpha > 0)
            obj_flowey_world_blook.image_alpha -= 0.1;
        else
            cutscene_advance();
        
        break;
    
    case 35:
        cutscene_wait(0.25);
        break;
    
    case 36:
        cutscene_npc_walk(actor_toriel, 1740, 164, 1, "x", "up");
        cutscene_advance();
        break;
    
    case 37:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* And over.";
                soundfont = 96;
            }
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 38:
        cutscene_wait(0.5);
        break;
    
    case 39:
        if (overlay_alpha < 0.99)
            overlay_alpha = lerp(overlay_alpha, 1, 0.05);
        else
            cutscene_advance();
        
        break;
    
    case 40:
        cutscene_wait(1);
        break;
    
    case 41:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* Sure, small decisions#  here and there would#  vary but...";
                soundfont = 96;
            }
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 42:
        cutscene_wait(0.5);
        break;
    
    case 43:
        room = rm_flashback_02;
        obj_pl.x = 160;
        obj_pl.y = 100;
        cutscene_advance();
        break;
    
    case 44:
        if (overlay_alpha > 0.01)
        {
            overlay_alpha = lerp(overlay_alpha, 0, 0.05);
        }
        else
        {
            overlay_alpha = 0;
            cutscene_advance();
        }
        
        break;
    
    case 45:
        cutscene_wait(1);
        break;
    
    case 46:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* The journey would always#  end with you ignorantly#  living with Toriel.";
                message[1] = "* I had to interfere.";
                soundfont = 96;
            }
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 47:
        cutscene_wait(1);
        break;
    
    case 48:
        obj_chairiel.can_talk = false;
        
        if (overlay_alpha < 0.99)
            overlay_alpha = lerp(overlay_alpha, 1, 0.05);
        else
            cutscene_advance();
        
        break;
    
    case 49:
        cutscene_wait(1);
        break;
    
    case 50:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* At first, my efforts#  seemed to work.";
                soundfont = 96;
            }
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 51:
        actor_toriel = instance_create(480, 70, obj_toriel_npc);
        actor_toriel.npc_direction = "up";
        obj_pl.x = 480;
        obj_pl.y = 130;
        obj_pl.direction = 90;
        obj_pl.image_alpha = 1;
        cutscene_advance();
        break;
    
    case 52:
        if (overlay_alpha > 0.01)
        {
            overlay_alpha = lerp(overlay_alpha, 0, 0.05);
        }
        else
        {
            overlay_alpha = 0;
            music_stop_noloop = false;
            instance_create(0, 0, obj_flashback_02_toriel_mini_cutscene);
            cutscene_advance();
        }
        
        break;
    
    case 53:
        cutscene_wait(1);
        break;
    
    case 54:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* Tensions rose and you#  left the Ruins.";
                message[1] = "* But then, other#  issues crept up...";
            }
        }
        else if (obj_flowey_world_text.message_current >= 1 && !music_stop_noloop)
        {
            scr_audio_fade_out(cutscene_music, 500);
            music_stop_noloop = true;
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 55:
        cutscene_wait(1);
        break;
    
    case 56:
        if (overlay_alpha < 0.99)
        {
            overlay_alpha = lerp(overlay_alpha, 1, 0.05);
        }
        else
        {
            instance_destroy(obj_flashback_02_toriel_mini_cutscene);
            cutscene_advance();
        }
        
        break;
    
    case 57:
        cutscene_wait(0.5);
        break;
    
    case 58:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* No matter how many#  times you journeyed on...";
                keep_on_screen = true;
            }
        }
        
        if (cutscene_wait(2.5))
            cutscene_music = audio_play_sound(mus_flowey_soundscape, 1, 0);
        
        break;
    
    case 59:
        cutscene_advance();
        break;
    
    case 60:
        obj_pl.x = 740;
        obj_pl.y = 80;
        obj_pl.direction = 0;
        cutscene_advance();
        break;
    
    case 61:
        if (overlay_alpha > 0.01)
        {
            overlay_alpha = lerp(overlay_alpha, 0, 0.1);
        }
        else
        {
            overlay_alpha = 0;
            
            with (obj_flowey_world_stalagmites)
                active = true;
            
            global.dialogue_open = false;
            cutscene_advance();
            scr_cutscene_end();
        }
        
        break;
    
    case 62:
        if (instance_exists(obj_heart_flowey_world_split))
            cutscene_advance();
        
        break;
    
    case 63:
        cutscene_wait(4);
        break;
    
    case 64:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* You always died.";
                keep_on_screen = true;
            }
        }
        
        cutscene_wait(2.5);
        break;
    
    case 65:
        cutscene_advance();
        break;
    
    case 66:
        obj_pl.x = 1140;
        obj_pl.y = 100;
        obj_pl.direction = 0;
        cutscene_advance();
        break;
    
    case 67:
        if (overlay_alpha > 0.01)
        {
            overlay_alpha = lerp(overlay_alpha, 0, 0.2);
        }
        else
        {
            overlay_alpha = 0;
            instance_create(0, 0, obj_flowey_world_spear_spawner);
            scr_cutscene_end();
            cutscene_advance();
        }
        
        break;
    
    case 68:
        if (instance_exists(obj_heart_flowey_world_split))
            cutscene_advance();
        
        break;
    
    case 69:
        cutscene_wait(3);
        break;
    
    case 70:
        obj_pl.x = 2320;
        obj_pl.y = 100;
        obj_pl.direction = 0;
        cutscene_advance();
        break;
    
    case 71:
        if (overlay_alpha > 0.01)
        {
            overlay_alpha = lerp(overlay_alpha, 0, 0.2);
        }
        else
        {
            overlay_alpha = 0;
            cutscene_advance();
            scr_cutscene_end();
        }
        
        break;
    
    case 72:
        show_debug_message(obj_flowey_world_camera.x_min[4]);
        
        if (obj_pl.x < 2084)
        {
            with (obj_flowey_world_lasers)
                lasers_activate = true;
            
            cutscene_advance();
        }
        
        break;
    
    case 73:
        if (obj_flowey_world_lasers.lasers_active == true)
        {
            instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, obj_flowey_world_clover_dead);
            cutscene_advance();
        }
        
        break;
    
    case 74:
        cutscene_wait(1);
        break;
    
    case 75:
        instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 80, obj_flowey_world_controller.depth - 1, obj_heart_flowey_world_split_fast);
        instance_destroy(obj_flowey_world_clover_dead);
        cutscene_advance();
        break;
    
    case 76:
        cutscene_wait(3);
        break;
    
    case 77:
        global.dialogue_open = false;
        scr_audio_fade_out(cutscene_music, 500);
        cutscene_advance();
        break;
    
    case 78:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
                message[0] = "* I had to steer you#  off the path of failure#  as early as possible.";
        }
        
        if (cutscene_wait(3.5))
            global.dialogue_open = false;
        
        break;
    
    case 79:
        room = rm_flashback_01;
        obj_pl.x = 196;
        obj_pl.y = 120;
        obj_pl.image_alpha = 0;
        cutscene_advance();
        break;
    
    case 80:
        layer_set_visible("pixelate", false);
        layer_set_visible("distort", false);
        cutscene_instance_create(196, 122, obj_tampering_flowey);
        break;
    
    case 81:
        if (overlay_alpha > 0.01)
        {
            overlay_alpha = lerp(overlay_alpha, 0, 0.05);
        }
        else
        {
            overlay_alpha = 0;
            cutscene_advance();
        }
        
        break;
    
    case 82:
        obj_tampering_flowey.is_active = true;
        cutscene_advance();
        break;
    
    case 83:
        if (!instance_exists(obj_flowey_world_text))
        {
            msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
            
            with (msg)
            {
                message[0] = "* So I tampered with#  a little switch and...";
                message[1] = "* Well, the rest#  is history!";
            }
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 84:
        if (overlay_alpha < 0.99)
            overlay_alpha = lerp(overlay_alpha, 1, 0.05);
        else
            cutscene_advance();
        
        break;
    
    case 85:
        room = rm_flashback_03;
        cutscene_wait(1.5);
        break;
    
    case 86:
        obj_pl.direction = 90;
        instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 40, -99999, obj_flowey_rooftop_big);
        instance_create(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 180, obj_player_npc);
        cutscene_advance();
        break;
    
    case 87:
        if (overlay_alpha > 0.01)
        {
            overlay_alpha = lerp(overlay_alpha, 0, 0.05);
        }
        else
        {
            noise_pop = 0;
            cutscene_advance();
        }
        
        break;
    
    case 88:
        if (!instance_exists(obj_dialogue_flowey_alone))
            msg_flowey = instance_create(x, y, obj_dialogue_flowey_alone);
        
        if (!global.dialogue_open)
        {
            cutscene_advance();
            return true;
        }
        
        with (msg_flowey)
        {
            sndfnt = 96;
            message[0] = "* ...";
            message[1] = "* Oh come on! You're still here?";
            message[2] = "* I thought at least my story#  might bore you so much that#  you'd give in!";
            message[3] = "* You really wanna do this the#  hard way? ";
            message[4] = "* Haha, alright then!";
            message[5] = "* Let's have a little fun before#  I absorb your SOUL for good!";
            
            switch (message_current)
            {
                case 0:
                    flowey_face = 2930;
                    break;
                
                case 1:
                    flowey_face = 3495;
                    break;
                
                case 2:
                    flowey_face = 699;
                    break;
                
                case 3:
                    flowey_face = 3573;
                    break;
                
                case 4:
                    flowey_face = 1953;
                    break;
                
                case 5:
                    flowey_face = 2921;
                    break;
                
                default:
                    flowey_face = 1358;
                    break;
            }
            
            switch (message_current)
            {
                case 3:
                case 4:
                    if (other.noise_pop < message_current)
                    {
                        other.noise_pop = message_current;
                        instance_create_depth(obj_flowey_rooftop_big.x, obj_flowey_rooftop_big.y, -999990, obj_flowey_rooftop_noise);
                    }
                    
                    break;
            }
            
            if (message_current == 3)
            {
                sndfnt = 664;
                shake = true;
            }
            else
            {
                sndfnt = 96;
                shake = false;
            }
        }
        
        obj_flowey_rooftop_big.sprite_index = flowey_face;
        break;
    
    case 89:
        x_original = obj_player_npc.xstart;
        y_original = obj_player_npc.ystart;
        
        if (shake_intensity < 1)
        {
            shake_intensity = lerp(shake_intensity, 1.1, 0.02);
        }
        else
        {
            obj_player_npc.x = x_original;
            obj_player_npc.y = y_original;
            cutscene_advance();
            exit;
        }
        
        obj_player_npc.x = x_original;
        obj_player_npc.y = y_original;
        obj_player_npc.x = x_original + random_range(shake_intensity, -shake_intensity);
        obj_player_npc.y = y_original + random_range(shake_intensity, -shake_intensity);
        break;
    
    case 90:
        clover_hurt_count -= 1;
        audio_play_sound(snd_hurt, 1, 0);
        cutscene_instance_create(obj_player_npc.x, obj_player_npc.y, obj_particle_flowey_world_clover_bits);
        cutscene_screenshake(0.5, 2);
        cutscene_advance(90.5);
        break;
    
    case 90.5:
        if (clover_hurt_count > 0)
        {
            if (cutscene_wait(1))
                cutscene_advance(90);
        }
        else if (cutscene_wait(1.5))
        {
            cutscene_advance(91);
        }
        
        break;
    
    case 91:
        instance_create_depth((obj_player_npc.x + 1) * 2, obj_player_npc.y * 2, obj_player_npc.depth + 1, obj_heart_flowey_battle_dummy);
        
        with (obj_player_npc)
        {
            scr_clover_defragment();
            instance_destroy(obj_player_npc, false);
        }
        
        cutscene_advance();
        break;
    
    case 92:
        cutscene_wait(3);
        break;
    
    case 93:
        with (obj_heart_flowey_battle_dummy)
        {
            x = lerp(x, 320, 0.05);
            y = lerp(y, 320, 0.05);
            
            if (point_distance(x, y, 320, 320) < 1)
                other.scene++;
        }
        
        break;
    
    case 94:
        global.battle_enemy_name = "flowey";
        global.battling_boss = true;
        global.battle_start = true;
        global.sound_carry_overworld = false;
        
        if (room != rm_death_screen)
            global.current_room_overworld = room_get_name(room);
        
        instance_destroy(obj_heart_flowey_battle_dummy);
        room_goto(rm_battle_flowey);
        obj_flowey_rooftop_big.persistent = true;
        obj_flowey_rooftop_big.image_xscale_base *= 2;
        obj_flowey_rooftop_big.image_yscale_base *= 2;
        obj_flowey_rooftop_big.x *= 2;
        obj_flowey_rooftop_big.y *= 2;
        cutscene_advance();
        break;
    
    case 95:
        cutscene_wait(1);
        break;
    
    case 96:
        with (instance_create_depth(obj_flowey_rooftop_big.x, obj_flowey_rooftop_big.y, -999990, obj_flowey_rooftop_noise))
        {
            image_xscale *= 2;
            image_yscale *= 2;
        }
        
        obj_flowey_rooftop_big.image_alpha = 0;
        cutscene_advance();
        break;
    
    case 97:
        cutscene_wait(0.5);
        break;
    
    case 98:
        instance_create_depth(obj_flowey_rooftop_big.x, 140, -999990, obj_battle_flowey_body_1);
        instance_create_depth(obj_flowey_rooftop_big.x, 140, -999991, obj_flowey_battle_noise);
        global.image_alpha_enemy_attacking_immunity = true;
        instance_destroy(obj_flowey_rooftop_big);
        cutscene_advance();
        break;
    
    case 99:
        cutscene_wait(1);
        break;
    
    case 100:
        while (instance_number(obj_battle_enemy_attack_fpellets) < 5)
            instance_create_depth(obj_battle_flowey_body_1.x, obj_battle_flowey_body_1.y, -1000, obj_battle_enemy_attack_fpellets);
        
        fight_music = audio_play_sound(mus_flowey_final_boss_1_intro, 1, 0);
        cutscene_advance();
        break;
    
    case 101:
        cutscene_wait(1);
        break;
    
    case 102:
        instance_create_depth(367, 110, -999, obj_quote_bubble_battle);
        instance_create_depth(0, 0, -9999, obj_quote_battle_flowey_final_1);
        cutscene_advance();
        break;
    
    case 103:
        if (instance_exists(obj_quote_battle_flowey_final_1))
            exit;
        
        with (obj_battle_enemy_attack_fpellets)
        {
            move = true;
            depth = obj_battle_flowey_body_1.depth - 1;
        }
        
        glitch_number = 0;
        cutscene_advance();
        break;
    
    case 104:
        mus_pos = audio_sound_get_track_position(fight_music);
        mus_length = audio_sound_length(fight_music);
        glitch_out = false;
        
        switch (glitch_number)
        {
            case 0:
                if (mus_pos >= 8.7)
                    glitch_out = true;
                
                break;
            
            case 1:
                if (mus_pos >= 11.1)
                    glitch_out = true;
                
                break;
            
            case 2:
                if (mus_pos >= 14.4)
                    glitch_out = true;
                
                break;
            
            case 3:
                if (mus_pos >= 16.5)
                    glitch_out = true;
                
                break;
            
            case 4:
                if (mus_pos >= 17.5)
                    glitch_out = true;
                
                obj_battle_flowey_body_1.image_alpha = 0;
                break;
            
            case 5:
                if (mus_pos >= 17.6)
                    glitch_out = true;
                
                break;
            
            case 6:
                if (mus_pos >= mus_length)
                {
                    glitch_out = true;
                    white_overlay_alpha = 1;
                    global.battle_music = audio_play_sound(mus_flowey_final_boss_1_main, 1, 1);
                    cutscene_advance();
                }
                
                break;
        }
        
        if (glitch_out == true)
        {
            instance_create_depth(0, 0, -99999999, obj_flowey_battle_screen_glitch);
            glitch_number += 1;
        }
        
        break;
    
    case 105:
        obj_battle_flowey_body_1.image_alpha = 1;
        global.image_alpha_enemy_attacking = 1;
        cutscene_advance();
        instance_create_depth(0, 0, 0, obj_battle_flowey_background_ui);
        instance_destroy(obj_dialogue_box_battle_transformation_any_out);
        
        with (obj_dialogue_box_battle_transformation_any)
            event_user(0);
        
        scr_savegame_flowey();
        break;
    
    case 106:
        white_overlay_alpha = lerp(white_overlay_alpha, 0, 0.2);
        
        if (white_overlay_alpha < 0.01)
        {
            obj_battle_flowey_body_1.depth = 0;
            obj_battle_flowey_body_1.can_draw_ghost = true;
            global.image_alpha_enemy_attacking_immunity = false;
            instance_destroy();
            exit;
        }
        
        break;
}

if (scene >= 21 && scene < 42)
{
    obj_pl.x = actor_toriel.x;
    obj_pl.y = actor_toriel.y;
}
