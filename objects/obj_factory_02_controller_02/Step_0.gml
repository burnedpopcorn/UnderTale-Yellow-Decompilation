if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.y < 340 && obj_pl.x < 520)
            cutscene_advance();
        
        break;
    
    case 1:
        scr_cutscene_start();
        cutscene_advance();
        
        with (obj_factory_02_conveyor_indicator)
            sprite_index = spr_conveyor_indicator_idle;
        
        break;
    
    case 2:
        cutscene_follower_into_actor();
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 3:
        var arrive = 0;
        
        if (cutscene_npc_walk(obj_player_npc, 350, 300, 3, "x", "up") || (obj_player_npc.x == 350 && obj_player_npc.y == 300))
        {
            arrive += 1;
            scene = 3;
        }
        
        if (cutscene_npc_walk(actor_follower, 370, 300, 3, "x", "up") || (actor_follower.x == 350 && actor_follower.y == 300))
        {
            arrive += 1;
            scene = 3;
        }
        
        if (arrive >= 2)
            scene = 4;
        
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_camera_move(360, 210, 2);
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* What the";
            prt[0] = spr_portrait_ceroba_surprised;
            
            if (message_current == 0)
            {
                with (obj_steamworks_factory_02_face)
                {
                    sprite_index = spr_steamworks_38_face_hello;
                    image_speed = 1;
                }
                
                skippable = false;
                
                if (cutoff >= string_length(message[message_current]))
                {
                    global.dialogue_open = false;
                    instance_destroy();
                    other.scene++;
                }
            }
        }
        
        break;
    
    case 8:
        cutscene_music_start(65, 100);
        break;
    
    case 9:
        cutscene_dialogue_special("shake", 65280);
        
        if (obj_steamworks_factory_02_face.sprite_index != spr_steamworks_38_face_talking)
        {
            obj_steamworks_factory_02_face.sprite_index = spr_steamworks_38_face_talking;
            obj_steamworks_factory_02_face.image_index = 0;
        }
        
        with (msg)
        {
            message[0] = "* Fun!!!";
            message[1] = "* Hello again!!";
            message[2] = "* The shipment is almost#  complete!!";
            message[3] = "* One final step and you may have#  the passcode to exit!";
            message[4] = "* All you have to do is   ";
            
            if (message_current == 1)
                mode = "swirl";
            
            if (message_current == 4)
            {
                skippable = false;
                
                if (can_skip)
                {
                    global.dialogue_open = false;
                    instance_destroy();
                    other.scene++;
                }
            }
            
            position = 0;
        }
        
        break;
    
    case 10:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Sort each colored#  package by tilting that#  platform left or right.";
            message[1] = "* Pretty obvious.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_disapproving;
            position = 1;
        }
        
        break;
    
    case 11:
        cutscene_wait(1);
        break;
    
    case 12:
        cutscene_dialogue_special("swirl", 65280);
        
        with (msg)
        {
            message[0] = "* Look who paid attention#  learning colors in preschool!";
            position = 0;
        }
        
        break;
    
    case 13:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Not by choice.";
            prt[0] = spr_portrait_ceroba_muttering;
            position = 1;
        }
        
        break;
    
    case 14:
        cutscene_npc_direction(obj_ceroba_npc, "left");
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* I'll take the#  drop-chute up top, you#  man the platform.";
            message[1] = "* Good? Good.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            position = 1;
        }
        
        break;
    
    case 16:
        cutscene_npc_walk(obj_ceroba_npc, 150, 320, 4, "y", "right", -4);
        cutscene_npc_walk(obj_player_npc, 420, 275, 3, "x", "up", -4, 358, 263);
        scene++;
        break;
    
    case 17:
        if (!obj_player_npc.npc_arrived || !obj_ceroba_npc.npc_arrived)
            exit;
        
        cutscene_wait(1.5);
        break;
    
    case 18:
        obj_ceroba_npc.x = 190;
        obj_ceroba_npc.y = 137;
        obj_ceroba_npc.npc_dynamic_depth = false;
        obj_ceroba_npc.depth = 150;
        cutscene_advance();
        break;
    
    case 19:
        cutscene_npc_walk(obj_ceroba_npc, 255, 137, 3, "x", "down");
        break;
    
    case 20:
        cutscene_camera_move(360, 170, 2);
        scr_audio_fade_out(cutscene_music, 1000);
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Ready?";
            message[1] = "* Here goes nothing!";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_closed_eyes;
            position = 0;
        }
        
        break;
    
    case 22:
        cutscene_music_start(218, 100);
        instance_create(0, 0, obj_factory_02_seesaw_puzzle);
        obj_factory_02_seesaw_puzzle.seesaw_puzzle_activate = true;
        break;
    
    case 23:
        break;
    
    case 24:
        cutscene_wait(0.5);
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Phew!";
            message[1] = "* Coming back down!";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_neutral;
            position = 0;
        }
        
        break;
    
    case 26:
        cutscene_npc_walk(obj_ceroba_npc, 180, 137, 3, "x", "down");
        break;
    
    case 27:
        if (!audio_is_playing(mus_mixin_it_up))
        {
            with (obj_steamworks_factory_02_face)
            {
                sprite_index = spr_steamworks_38_face_talking;
                obj_steamworks_factory_02_face.image_index = 0;
            }
            
            cutscene_music = audio_play_sound(mus_mixin_it_up, 1, 1);
            audio_sound_gain(cutscene_music, 1, 0);
        }
        
        cutscene_dialogue_special("swirl", 65280);
        
        with (msg)
        {
            message[0] = "* Grrreeeat job everyone!!!";
            message[1] = "* You can't spell \"Steamworks\"#  without \"teamwork\"!!";
            message[2] = "* Can't spell it without \"steak\"#  either but that has absolutely#  no bearing on this situation!";
            message[3] = "* Let's see how you did!!";
            message[4] = "* Calculating...";
            message[5] = "* Aw! You BARELY scraped by but#  that's what performance reports#  are for!";
            position = 0;
        }
        
        break;
    
    case 28:
        obj_ceroba_npc.x = 180;
        obj_ceroba_npc.y = 280;
        obj_ceroba_npc.npc_dynamic_depth = true;
        cutscene_advance();
        break;
    
    case 29:
        cutscene_npc_walk(actor_follower, 310, 280, 3, "y", "up");
        break;
    
    case 30:
        cutscene_npc_walk(obj_player_npc, 368, 263, 2, "x", "up");
        break;
    
    case 31:
        obj_ceroba_npc.action_sprite = true;
        obj_ceroba_npc.sprite_index = spr_ceroba_right_run;
        obj_ceroba_npc.image_index = 0;
        obj_ceroba_npc.image_speed = 0;
        
        with (obj_ceroba_npc)
            path_start(pt_steamworks_factory_02_cerobajump, 4, path_action_stop, false);
        
        cutscene_sfx_play(snd_playerjump, 1);
        break;
    
    case 32:
        with (obj_ceroba_npc)
        {
            if (path_position >= 1)
            {
                action_sprite = false;
                npc_direction = "right";
                other.scene++;
                scr_screenshake(1, 1);
                audio_play_sound(snd_undertale_thud, 1, 0);
            }
        }
        
        break;
    
    case 33:
        cutscene_wait(0.25);
        break;
    
    case 34:
        cutscene_npc_direction(obj_ceroba_npc, "up");
        break;
    
    case 35:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Hey! It isn't our fault#  this system is so#  impractical!";
            message[1] = "* Why does it take two#  giant steps to ship a#  few packages?";
            message[2] = "* Why can't we sort the#  colors when boxing them#  in the first room??";
            prt[0] = spr_portrait_ceroba_irked;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_alt;
            position = 1;
        }
        
        break;
    
    case 36:
        cutscene_wait(1);
        break;
    
    case 37:
        cutscene_dialogue_special("default", 65280);
        
        with (msg)
        {
            message[0] = "* ...";
            message[1] = "* Beats me!";
            position = 0;
        }
        
        break;
    
    case 38:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* You know, for being#  built by such great#  minds...";
            message[1] = "* The Steamworks are#  awfully convoluted.";
            prt[0] = spr_portrait_ceroba_irked;
            prt[1] = spr_portrait_ceroba_irked;
            position = 1;
        }
        
        break;
    
    case 39:
        cutscene_dialogue_special("swirl", 65280);
        
        with (msg)
        {
            message[0] = "* It takes a MASSIVE IQ to#  understand the complexities of#  the Steamworks.";
            message[1] = "* Your brain probably isn't#  advanced enough!";
            position = 0;
        }
        
        break;
    
    case 40:
        scr_audio_fade_out(mus_mixin_it_up, 300);
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Says the wall-mounted#  GIF comprised of three#  pixels.";
            message[1] = "* You know what?";
            message[2] = "* You can take your little#  \"passcode\" and    ";
            prt[0] = spr_portrait_ceroba_angry;
            prt[1] = spr_portrait_ceroba_angry;
            prt[2] = spr_portrait_ceroba_furious;
            
            if (message_current == 2)
            {
                skippable = false;
                
                if (cutoff >= string_length(message[message_current]))
                {
                    global.dialogue_open = false;
                    instance_destroy();
                    other.scene++;
                }
            }
        }
        
        break;
    
    case 41:
        obj_ceroba_npc.image_alpha = 0;
        cutscene_npc_action_sprite(obj_player_npc, spr_clover_holds_ceroba, 1, true, 0);
        
        if (obj_player_npc.image_index >= 21)
        {
            obj_player_npc.image_speed = 0;
            cutscene_advance(41.2);
        }
        
        break;
    
    case 41.2:
        if (cutscene_wait(0.5))
        {
            obj_player_npc.image_speed = 1;
            cutscene_advance(41.4);
        }
        
        break;
    
    case 41.4:
        if (obj_player_npc.image_index >= 32)
        {
            obj_player_npc.image_speed = 0;
            cutscene_advance(41.6);
        }
        
        break;
    
    case 41.6:
        if (cutscene_wait(0.75))
        {
            obj_player_npc.image_speed = 1;
            cutscene_advance(41.8);
        }
        
        break;
    
    case 41.8:
        if (cutscene_npc_action_sprite(obj_player_npc, spr_clover_holds_ceroba, 1, true, 0))
            cutscene_advance(42);
        
        break;
    
    case 42:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* ...Just give us the code.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
        }
        
        break;
    
    case 43:
        cutscene_dialogue_special("swirl", 65280);
        
        with (msg)
        {
            message[0] = "* Of course!";
            message[1] = "* The passcode is " + global.factory_code + ".";
            message[2] = "* Got it?";
            message[3] = "* " + global.factory_code + ".";
            position = 0;
        }
        
        break;
    
    case 44:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Yeah, thanks.";
            prt[0] = spr_portrait_ceroba_disapproving;
        }
        
        break;
    
    case 45:
        cutscene_dialogue_special("swirl", 65280);
        
        with (msg)
        {
            message[0] = "* No, thank you, employees!";
            message[1] = "* Thank you for making the#  Underground a little brighter!";
            position = 0;
        }
        
        break;
    
    case 46:
        obj_player_npc.action_sprite = false;
        obj_ceroba_npc.image_alpha = 1;
        obj_ceroba_npc.npc_direction = "up";
        cutscene_advance();
        break;
    
    case 47:
        cutscene_wait(0.5);
        break;
    
    case 48:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 3);
        break;
    
    case 49:
        instance_destroy(obj_camera);
        camera_set_view_target(view_camera[0], 1031);
        cutscene_advance();
        break;
    
    case 50:
        if (instance_exists(obj_player_npc))
            instance_destroy(obj_player_npc);
        
        obj_pl.direction = 0;
        cutscene_actor_into_follower();
        scr_radio_restart();
        audio_sound_gain(obj_radio.current_song, 1, 0);
        scr_cutscene_end();
        global.sworks_flag[36] = 2;
        break;
}

with (obj_doorway)
{
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_pl, false, true) != -4)
        event_perform(ev_collision, obj_pl);
}
