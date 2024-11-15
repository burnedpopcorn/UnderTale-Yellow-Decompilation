var flowey;

if (live_call())
    return global.live_result;

if (global.sworks_flag[0] == 0)
{
    switch (scene)
    {
        case 0:
            if (obj_pl.y < 416)
            {
                scr_cutscene_start();
                scr_audio_fade_out(obj_radio.current_song, 500);
                instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
                
                if (abs(obj_player_npc.x - 224) > 10)
                    cutscene_advance();
                else
                    cutscene_advance(2);
            }
            
            break;
        
        case 1:
            cutscene_npc_walk(1168, 224, obj_player_npc.y, 3, "x", "up");
            break;
        
        case 2:
            cutscene_wait(1);
            break;
        
        case 3:
            cutscene_camera_move(220, 330, 1);
            break;
        
        case 4:
            flowey = instance_create(199, 364, obj_flowey_npc);
            flowey.image_alpha = 0;
            cutscene_advance();
            break;
        
        case 5:
            obj_flowey_npc.image_alpha = 1;
            cutscene_npc_action_sprite(3194, 242, 0.2, false);
            break;
        
        case 6:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 3194;
                message[0] = "* Howdy!";
                message[1] = "* This area seems totally#  abandoned.";
                message[2] = "* Guess there's no more#  need for fighting. Real#  shame.";
                prt[0] = 354;
                prt[1] = 353;
                prt[2] = 352;
            }
            
            break;
        
        case 7:
            cutscene_wait(0.5);
            break;
        
        case 8:
            cutscene_npc_direction(3194, "up");
            break;
        
        case 9:
            cutscene_wait(1);
            break;
        
        case 10:
            cutscene_npc_direction(3194, "down");
            break;
        
        case 11:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 3194;
                message[0] = "* A generator, huh?";
                message[1] = "* There's probably some#  way to turn it back on#  around he";
                prt[0] = 353;
                prt[1] = 348;
                
                if (message_current == 1)
                    message_timer = 15;
            }
            
            break;
        
        case 12:
            cutscene_npc_action_sprite(1168, 3313, 1, false);
            
            if (obj_player_npc.image_index >= 8 && !instance_exists(obj_steamworks_04_generator_screen_geno))
            {
                audio_play_sound(snd_shotstrong, 1, 0);
                audio_play_sound(snd_attackhitcrit, 1, 0);
                scr_screenshake(6, 1);
                instance_create_depth(201, 300, obj_steamworks_04_generator.depth - 1, obj_steamworks_04_generator_screen_geno);
                obj_flowey_npc.npc_direction = "up";
            }
            
            if (obj_player_npc.image_index >= 10)
            {
                obj_player_npc.image_speed = 0;
                scene++;
            }
            
            break;
        
        case 13:
            cutscene_wait(1);
            break;
        
        case 14:
            cutscene_npc_direction(3194, "down");
            break;
        
        case 15:
            obj_player_npc.image_speed = 1;
            cutscene_npc_action_sprite(1168, 3313, 1, false);
            break;
        
        case 16:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 3194;
                message[0] = "* Oh, come on! Again??";
                message[1] = "* Hate to rock your world#  but bullets aren't the#  answer to everything!";
                message[2] = "* Would it kill you to#  think before shooting at#  your problems?";
                prt[0] = 351;
                prt[1] = 351;
                prt[2] = 351;
            }
            
            break;
        
        case 17:
            cutscene_wait(1);
            break;
        
        case 18:
            cutscene_npc_walk(1168, obj_player_npc.x, 400, 1, "y", "up");
            break;
        
        case 19:
            cutscene_wait(0.5);
            break;
        
        case 20:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 3194;
                message[0] = "* Hey, it's just a#  pattern I've noticed#  recently!";
                message[1] = "* You've already solved#  tons of puzzles on our#  journey.";
                message[2] = "* I was only curious why#  your patience has worn#  so thin!";
                message[3] = "* Cool it, will ya?";
                prt[0] = 357;
                prt[1] = 354;
                prt[2] = 357;
                prt[3] = 349;
            }
            
            break;
        
        case 21:
            cutscene_npc_walk(1168, 198, 384, 3, "x", "up");
            break;
        
        case 22:
            cutscene_wait(1.5);
            break;
        
        case 23:
            if (obj_player_npc.y < (obj_flowey_npc.y - 15) && obj_flowey_npc.npc_direction != "up")
            {
                obj_flowey_npc.npc_direction = "up";
                cutscene_camera_move(220, 120, 1, true);
            }
            
            cutscene_npc_walk(1168, 96, 190, 3, "x", "up", false, 220, 128);
            break;
        
        case 24:
            cutscene_wait(1.5);
            break;
        
        case 25:
            obj_flowey_npc.image_alpha = 0;
            obj_flowey_npc.x = 200;
            obj_flowey_npc.y = 150;
            cutscene_advance();
            break;
        
        case 26:
            obj_flowey_npc.image_alpha = 1;
            cutscene_npc_action_sprite(3194, 3745, 1, false);
            break;
        
        case 27:
            cutscene_wait(1);
            break;
        
        case 28:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 3194;
                message[0] = "* Heh, I'm afraid that#  door is far too thick to#  shoot down.";
                message[1] = "* Looks like you'll have#  to stick with my#  original plan of";
                prt[0] = 347;
                prt[1] = 348;
                
                if (message_current == 1)
                    message_timer = 15;
            }
            
            break;
        
        case 29:
            cutscene_npc_action_sprite(1168, 2732, 1, true, 0);
            break;
        
        case 30:
            cutscene_wait(0.5);
            break;
        
        case 31:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 3194;
                message[0] = "* ...What?";
                message[1] = "* Me?";
                message[2] = "* You've found yourself#  some nerve, haven't you?";
                prt[0] = 352;
                prt[1] = 351;
                prt[2] = 351;
            }
            
            break;
        
        case 32:
            cutscene_npc_action_sprite(1168, 2943, 1, true, 0);
            break;
        
        case 33:
            cutscene_wait(0.5);
            break;
        
        case 34:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 3194;
                message[0] = "* ...Fine.";
                prt[0] = 353;
            }
            
            break;
        
        case 35:
            obj_player_npc.action_sprite = false;
            cutscene_action_sprite(1983, 987, 1, true, 0, 537, 0);
            break;
        
        case 36:
            obj_steamworks_04_door.sprite_index = spr_steamworks_04_door;
            obj_steamworks_04_door.image_index = obj_steamworks_04_door.image_number - 1;
            obj_steamworks_04_door.image_speed = 0;
            cutscene_advance();
            break;
        
        case 37:
            cutscene_wait(1);
            break;
        
        case 38:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 3194;
                message[0] = "* There. Your exit, my#  king.";
                prt[0] = 349;
            }
            
            break;
        
        case 39:
            cutscene_wait(0.5);
            break;
        
        case 40:
            cutscene_npc_action_sprite(1168, 3340, 1, true, 0);
            break;
        
        case 41:
            cutscene_wait(0.5);
            break;
        
        case 42:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 3194;
                message[0] = "* Did you forget my#  warning when you started#  down this road?";
                message[1] = "* I'm in control here.";
                message[2] = "* That hasn't and won't#  change, got it?";
                message[3] = "* The next time you pull#  a stunt like this...";
                message[4] = "* ...";
                message[5] = "* Let's just keep moving.";
                prt[0] = 352;
                prt[1] = 349;
                prt[2] = 348;
                prt[3] = 347;
                prt[4] = 352;
                prt[5] = 353;
            }
            
            break;
        
        case 43:
            cutscene_wait(0.5);
            break;
        
        case 44:
            obj_player_npc.action_sprite = false;
            cutscene_wait(0.5);
            break;
        
        case 45:
            if (cutscene_npc_action_sprite(3194, 245, 0.2, false))
                instance_destroy(obj_flowey_npc);
            
            break;
        
        case 46:
            cutscene_wait(0.5);
            break;
        
        case 47:
            cutscene_camera_move(obj_player_npc.x, obj_player_npc.y, 1);
            break;
        
        case 48:
            scr_radio_restart();
            cutscene_camera_reset(true);
            global.sworks_flag[0] = 1;
            global.sworks_flag[1] = 2;
            instance_destroy(103965);
            cutscene_end();
            break;
    }
}

if (global.sworks_flag[1] == 3)
{
    switch (scene)
    {
        case 0:
            __view_set(e__VW.Object, 0, obj_steamworks_04_generator);
            obj_steamworks_04_generator.image_speed = 0;
            obj_steamworks_04_generator.sprite_index = spr_steamworks_04_generator_pink;
            cutscene_advance();
            break;
        
        case 1:
            cutscene_wait(2);
            break;
        
        case 2:
            obj_steamworks_04_generator.sprite_index = spr_steamworks_04_generator_startup_geno;
            obj_steamworks_04_generator.image_speed = 1;
            audio_play_sound(snd_generator_start, 1, 0);
            cutscene_advance();
            break;
        
        case 3:
            cutscene_wait(2.5);
            break;
        
        case 4:
            cutscene_change_room(152, 655, 170, 0.05);
            break;
    }
}
