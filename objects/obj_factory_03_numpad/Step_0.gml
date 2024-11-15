switch (scene)
{
    case 0:
        if (keyboard_multicheck_pressed(0) && scr_interact())
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* (You figured out a#  code?)";
            message[1] = "* (Hurry and give it a#  try!)";
            prt[0] = 370;
            prt[1] = 370;
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
            sndfnt = 108;
            message[0] = "* (Try something else!#  Come on!)";
            prt[0] = 370;
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
            if (cutscene_npc_walk(1166, 400, obj_axis_npc.y, 4, "x", "left"))
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
        cutscene_npc_walk(1161, obj_pl.x - 30, obj_pl.y, 3, "x", "right");
        
        if (obj_ceroba_npc.x < obj_player_npc.x)
            obj_player_npc.npc_direction = "left";
        
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            skippable = false;
            talker[0] = 1161;
            message[0] = "* Okay! Let's head#  upstairs before Axis- ";
            prt[0] = 377;
            
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
            talker[0] = 1166;
            talker[1] = 1161;
            talker[4] = 1166;
            talker[7] = 1161;
            talker[9] = 1166;
            talker[13] = 1161;
            talker[14] = 1166;
            talker[15] = 1161;
            talker[16] = 1166;
            talker[17] = 1161;
            talker[19] = 1166;
            talker[20] = 1161;
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
            prt[0] = 473;
            prt[1] = 381;
            prt[2] = 3754;
            prt[3] = 3754;
            prt[4] = 473;
            prt[5] = 473;
            prt[6] = 473;
            prt[7] = 377;
            prt[8] = 370;
            prt[9] = 473;
            prt[10] = 473;
            prt[11] = 473;
            prt[12] = 473;
            prt[13] = 370;
            prt[14] = 473;
            prt[15] = 370;
            prt[16] = 473;
            prt[17] = 377;
            prt[18] = 370;
            prt[19] = 473;
            prt[20] = 370;
            
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
            talker[0] = 1166;
            talker[1] = 1161;
            message[0] = "* . .";
            message[1] = "* . .";
            prt[0] = 473;
            prt[1] = 371;
        }
        
        break;
    
    case 20:
        cutscene_wait(1);
        break;
    
    case 21:
        cutscene_npc_set_sprites(1168, 15, 16, 18, 17, 24, 21, 23, 22);
        break;
    
    case 22:
        cutscene_npc_set_sprites(1161, 81, 80, 78, 79, 61, 65, 60, 63);
        break;
    
    case 23:
        cutscene_npc_walk(1168, 740, 710, 4, "x", "up");
        cutscene_advance();
        break;
    
    case 24:
        cutscene_npc_walk(1161, 740, 710, 4, "x", "up");
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
            talker[0] = 1166;
            message[0] = "* COOL.";
            prt[0] = 473;
        }
        
        break;
    
    case 28:
        global.sworks_flag[37] = 3;
        cutscene_change_room(240, 400, 760, 0.03);
        break;
}
