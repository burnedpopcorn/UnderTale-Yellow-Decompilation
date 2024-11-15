if (live_call())
    return global.live_result;

switch (scene)
{
    case -1:
        if (obj_pl.y < 220)
            scene++;
        
        break;
    
    case 0:
        scr_cutscene_start();
        cutscene_follower_into_actor();
        obj_martlet_npc.npc_direction = "up";
        obj_martlet_npc.can_walk = false;
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        
        with (obj_shadow_master)
            event_perform(ev_alarm, 0);
        
        obj_player_npc.npc_direction = "up";
        break;
    
    case 1:
        cutscene_wait(0.75);
        break;
    
    case 2:
        cutscene_npc_walk(1168, 135, 180, 2, "y", "up");
        scene++;
        break;
    
    case 3:
        cutscene_wait(0.4);
        break;
    
    case 4:
        cutscene_npc_walk(1164, 135, 200, 2, "y", "up");
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        cutscene_npc_walk(1164, obj_player_npc.x + 20, obj_martlet_npc.y, 3, "y", "up", -4, obj_player_npc.x, obj_player_npc.y - 20);
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Oh my...";
            message[1] = "* What... What is all of#  this?";
            prt[0] = 333;
            prt[1] = 321;
        }
        
        break;
    
    case 8:
        cutscene_npc_direction(1164, "right");
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        cutscene_npc_direction(1164, "left");
        break;
    
    case 11:
        cutscene_wait(0.5);
        break;
    
    case 12:
        cutscene_npc_walk(1164, 65, 125, 3, "x", "left");
        break;
    
    case 13:
        cutscene_wait(1);
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Formulas... SOUL#  research...";
            message[1] = "* Hold on, look over#  here. ";
            prt[0] = 324;
            prt[1] = 333;
            
            if (message_current == 1)
                obj_martlet_npc.npc_direction = "up";
        }
        
        break;
    
    case 15:
        cutscene_npc_walk(1164, 83, 120, 2, "x", "up");
        break;
        break;
    
    case 16:
        cutscene_wait(1);
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Tapes...";
            message[1] = "* Each one has a date on#  it.";
            prt[0] = 338;
            prt[1] = 321;
        }
        
        break;
    
    case 18:
        cutscene_wait(0.25);
        break;
    
    case 19:
        cutscene_npc_direction(1164, "right");
        break;
    
    case 20:
        cutscene_wait(1.5);
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Y-You know...";
            message[1] = "* Maybe this is all a big#  misunderstanding!";
            message[2] = "* Yeah, that's probably#  it!";
            message[3] = "* We'll just watch these#  and clear the air.";
            prt[0] = 317;
            prt[1] = 320;
            prt[2] = 328;
            prt[3] = 312;
            
            if (message_current == 2)
                obj_martlet_npc.npc_direction = "down";
        }
        
        break;
    
    case 22:
        cutscene_npc_direction(1164, "up");
        break;
    
    case 23:
        cutscene_npc_action_sprite(1164, 273, 0.2, false, 0.1);
        break;
    
    case 24:
        cutscene_sfx_play(281, 1);
        break;
    
    case 25:
        cutscene_wait(0.25);
        break;
    
    case 26:
        cutscene_npc_walk(1164, 135, 150, 2, "y", "up");
        break;
    
    case 27:
        cutscene_wait(0.5);
        break;
    
    case 28:
        cutscene_npc_action_sprite(1164, 273, 0.2, false, 0.1);
        break;
    
    case 29:
        cutscene_sfx_play(382, 1);
        break;
    
    case 30:
        obj_mansion_study_overlay.can_flicker = false;
        scene++;
        break;
    
    case 31:
        cutscene_npc_walk(1164, obj_player_npc.x + 20, obj_player_npc.y - 15, 2, "x", "up");
        break;
    
    case 32:
        cutscene_wait(1.5);
        break;
    
    case 33:
        instance_create_depth(126, 91, -1600, obj_mansion_study_tv);
        scene++;
        break;
    
    case 34:
        depth = -1400;
        draw_alpha += 0.1;
        
        if (draw_alpha >= 1)
            scene++;
        
        break;
    
    case 35:
        cutscene_wait(1.5);
        break;
    
    case 36:
        obj_mansion_study_tv.sprite_index = spr_mansion_study_tv_blue_screen;
        scene++;
        break;
    
    case 37:
        if (!instance_exists(obj_mansion_study_tv))
            cutscene_advance();
        
        break;
    
    case 38:
        cutscene_wait(2);
        break;
    
    case 39:
        instance_create_depth(0, 0, -3000, obj_mansion_chujin_tapes);
        scr_audio_fade_out(obj_radio.current_song, 500);
        scene++;
        break;
    
    case 40:
        if (!instance_exists(obj_mansion_chujin_tapes))
            cutscene_wait(2);
        
        break;
    
    case 41:
        draw_alpha -= 0.03;
        
        if (draw_alpha <= 0)
        {
            scr_radio_restart();
            scene++;
        }
        
        break;
    
    case 42:
        cutscene_wait(1);
        break;
    
    case 43:
        cutscene_npc_set_sprites(1164, 273, 270, 273, 272, 262, 263, 262, 268);
        break;
    
    case 44:
        cutscene_npc_walk(1164, obj_martlet_npc.x, obj_player_npc.y - 5, 0.25, "y", "up");
        break;
    
    case 45:
        cutscene_npc_set_sprites(1164, 273, 270, 274, 272, 262, 263, 265, 268);
        break;
    
    case 46:
        cutscene_wait(0.75);
        break;
    
    case 47:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* ...";
            message[1] = "* Oh... Oh my gosh... ";
            message[2] = "* I never knew... He#  never mentioned... ";
            prt[0] = 332;
            prt[1] = 332;
            prt[2] = 322;
        }
        
        break;
    
    case 48:
        scr_audio_fade_out(obj_radio.current_song, 500);
        cutscene_music = audio_play_sound(mus_the_trek, 1, 1);
        cutscene_npc_direction(1164, "left");
        break;
    
    case 49:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Clover, we have to go.#  Right now.";
            message[1] = "* Come on.";
            prt[0] = 309;
            prt[1] = 309;
        }
        
        break;
    
    case 50:
        cutscene_camera_freeze(obj_pl.x, obj_pl.y);
        break;
    
    case 51:
        cutscene_npc_set_sprites(1164, 277, 278, 280, 279, 262, 263, 265, 268);
        break;
    
    case 52:
        cutscene_npc_walk(1164, obj_player_npc.x, obj_player_npc.y + 30, 4, "y", "down", -4, obj_player_npc.x, obj_player_npc.y + 220);
        scene++;
        break;
    
    case 53:
        if (obj_martlet_npc.y > (obj_player_npc.y + 40))
        {
            cutscene_npc_set_sprites(1168, 15, 16, 18, 17, 24, 21, 23, 22);
            break;
        }
        
        break;
    
    case 54:
        cutscene_npc_walk(1168, obj_player_npc.x, 360, 4, "y", "down");
        break;
    
    case 55:
        global.dunes_flag[41] = 4;
        cutscene_change_room(251, 485, 420, 0.03);
        break;
}
