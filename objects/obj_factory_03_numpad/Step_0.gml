switch (scene)
{
    case 0:
        if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* (You figured out a#  code?)";
            message[1] = "* (Hurry and give it a#  try!)";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 2:
        if (!instance_exists(obj_factory_numpad_overlay))
            instance_create(0, 0, obj_factory_numpad_overlay);
        
        scene++;
        break;
    
    case 3:
        if (obj_factory_numpad_overlay.entry_correct == 1)
            scene = 7;
        else if (obj_factory_numpad_overlay.entry_correct == 0)
            scene = 5;
        
        break;
    
    case 5:
        if (instance_exists(obj_factory_numpad_overlay))
            exit;
        
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* (Try something else!#  Come on!)";
            prt[0] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 6:
        scene = 0;
        scr_cutscene_end();
        break;
    
    case 7:
        if (instance_exists(obj_factory_numpad_overlay))
            exit;
        
        cutscene_wait(1);
        break;
    
    case 7.5:
        instance_destroy(obj_factory_03_minigame);
        
        if (obj_axis_npc.x > 400)
        {
            if (cutscene_npc_walk(obj_axis_npc, 400, obj_axis_npc.y, 4, "x", "left"))
                cutscene_advance(8);
        }
        else
        {
            cutscene_advance(8);
        }
        
        break;
    
    case 8:
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        cutscene_follower_into_actor();
        audio_play_sound(snd_electric_flash, 1, 0);
        obj_factory_03_axis_flashlight.active = -1;
        break;
    
    case 9:
        cutscene_wait(0.25);
        break;
    
    case 10:
        audio_play_sound(snd_electric_flash, 1, 0);
        
        if (obj_factory_03_axis_flashlight.active == -1)
            obj_factory_03_axis_flashlight.active = 0;
        else
            obj_factory_03_axis_flashlight.active = -1;
        
        flash_count--;
        
        if (flash_count <= 0 && obj_factory_03_axis_flashlight.active == -1)
        {
            scene = 11;
            instance_destroy(obj_factory_03_axis_flashlight);
        }
        else
        {
            scene = 9;
        }
        
        break;
    
    case 11:
        if (cutscene_wait(1))
        {
            layer_set_visible("door_visible", true);
            audio_play_sound(snd_sliding_door_open, 1, 0);
            scr_audio_fade_out(obj_radio.current_song, 500);
        }
        
        break;
    
    case 12:
        cutscene_wait(0.5);
        break;
    
    case 13:
        cutscene_npc_walk(obj_ceroba_npc, obj_pl.x - 30, obj_pl.y, 3, "x", "right");
        
        if (obj_ceroba_npc.x < obj_player_npc.x)
            obj_player_npc.npc_direction = "left";
        
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            skippable = false;
            talker[0] = obj_ceroba_npc;
            message[0] = "* Okay! Let's head#  upstairs before Axis- ";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            
            if (cutoff >= string_length(message[message_current]))
            {
                other.scene++;
                global.dialogue_open = false;
                instance_destroy();
            }
        }
        
        break;
    
    case 15:
        with (obj_factory_03_minigame)
            instance_destroy();
        
        with (obj_axis_npc)
        {
            can_walk = false;
            y = 760;
            x = 480;
            npc_direction = "right";
        }
        
        cutscene_camera_move(620, obj_pl.y, 5);
        break;
    
    case 16:
        cutscene_wait(0.7);
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            talker[1] = obj_ceroba_npc;
            talker[4] = obj_axis_npc;
            talker[7] = obj_ceroba_npc;
            talker[9] = obj_axis_npc;
            talker[13] = obj_ceroba_npc;
            talker[14] = obj_axis_npc;
            talker[15] = obj_ceroba_npc;
            talker[16] = obj_axis_npc;
            talker[17] = obj_ceroba_npc;
            talker[19] = obj_axis_npc;
            talker[20] = obj_ceroba_npc;
            message[0] = "* HELLO.";
            message[1] = "* Axis!";
            message[2] = "* ...Juuust the bot I was#  looking for!";
            message[3] = "* How are you doing these#  days?";
            message[4] = "* NOT SO GOOD.";
            message[5] = "* I COULD ONLY SPEAK IN 15#  CHARACTERS (max) BACK#  THERE.";
            message[6] = "* IT KIND OF BUMMED ME#  OUT.";
            message[7] = "* I'm sorry to hear that.";
            message[8] = "* Glad you got your full#  speech ability back.";
            message[9] = "* THANK YOU. I DO LIKE#  TALKING.";
            message[10] = "* WAIT.";
            message[11] = "* WAIT????";
            message[12] = "* ARE YOU TRYING TO#  DISTRACT ME FROM MY#  MISSION.";
            message[13] = "* No.";
            message[14] = "* OH OKAY.";
            message[15] = "* Can I ask you a question#  involving the security#  of the Steamworks?";
            message[16] = "* YES I AM A SECURITY#  EXPERT.";
            message[17] = "* Why is it that some#  doors require a passcode#  to unlock...";
            message[18] = "* And others require a#  Steamworks ID?";
            message[19] = "* TWO-FACTOR#  AUTHENTICATION.";
            message[20] = "* Huh...";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_ceroba_nervous;
            prt[2] = spr_portrait_ceroba_nervous_smile;
            prt[3] = spr_portrait_ceroba_nervous_smile;
            prt[4] = spr_portrait_axis_normal;
            prt[5] = spr_portrait_axis_normal;
            prt[6] = spr_portrait_axis_normal;
            prt[7] = spr_portrait_ceroba_closed_eyes;
            prt[8] = spr_portrait_ceroba_neutral;
            prt[9] = spr_portrait_axis_normal;
            prt[10] = spr_portrait_axis_normal;
            prt[11] = spr_portrait_axis_normal;
            prt[12] = spr_portrait_axis_normal;
            prt[13] = spr_portrait_ceroba_neutral;
            prt[14] = spr_portrait_axis_normal;
            prt[15] = spr_portrait_ceroba_neutral;
            prt[16] = spr_portrait_axis_normal;
            prt[17] = spr_portrait_ceroba_closed_eyes;
            prt[18] = spr_portrait_ceroba_neutral;
            prt[19] = spr_portrait_axis_normal;
            prt[20] = spr_portrait_ceroba_neutral;
            
            if (message_current == 1)
            {
                obj_ceroba_npc.npc_direction = "left";
                
                if (!audio_is_playing(mus_enter_axis))
                    other.cutscene_music = audio_play_sound(mus_enter_axis, 1, 1);
            }
            
            if (message_current == 19)
                audio_stop_sound(other.cutscene_music);
        }
        
        break;
    
    case 18:
        cutscene_wait(1.5);
        break;
    
    case 19:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            talker[1] = obj_ceroba_npc;
            message[0] = "* . . .";
            message[1] = "* . . .";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_ceroba_alt;
        }
        
        break;
    
    case 20:
        cutscene_wait(1);
        break;
    
    case 21:
        cutscene_npc_set_sprites(obj_player_npc, spr_pl_run_up, spr_pl_run_right, spr_pl_run_down, spr_pl_run_left, spr_pl_up, spr_pl_right, spr_pl_down, spr_pl_left);
        break;
    
    case 22:
        cutscene_npc_set_sprites(obj_ceroba_npc, spr_ceroba_up_run, spr_ceroba_right_run, spr_ceroba_down_run, spr_ceroba_left_run, spr_ceroba_up_talk, spr_ceroba_right_talk, spr_ceroba_down_talk, spr_ceroba_left_talk);
        break;
    
    case 23:
        cutscene_npc_walk(obj_player_npc, 740, 710, 4, "x", "up");
        cutscene_advance();
        break;
    
    case 24:
        cutscene_npc_walk(obj_ceroba_npc, 740, 710, 4, "x", "up");
        cutscene_advance();
        break;
    
    case 25:
        with (obj_player_npc)
        {
            if (y <= 755 && image_alpha > 0)
                image_alpha -= 0.2;
        }
        
        with (obj_ceroba_npc)
        {
            if (y <= 755 && image_alpha > 0)
                image_alpha -= 0.2;
        }
        
        if (obj_ceroba_npc.image_alpha <= 0 && obj_player_npc.image_alpha <= 0)
        {
            layer_set_visible("door_visible", false);
            audio_play_sound(snd_undertale_thud, 1, 0);
            scr_screenshake(8, 2.5);
            cutscene_advance();
        }
        
        break;
    
    case 26:
        cutscene_wait(2.5);
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* COOL.";
            prt[0] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 28:
        global.sworks_flag[37] = 3;
        cutscene_change_room(rm_steamworks_factory_04, 400, 760, 0.03);
        break;
}
