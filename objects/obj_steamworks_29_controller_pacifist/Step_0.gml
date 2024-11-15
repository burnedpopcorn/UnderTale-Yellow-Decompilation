var gardener_talknoise;

gardener_talknoise = 111;
audio_sound_pitch(gardener_talknoise, guardener_pitch);

switch (scene)
{
    case 0:
        if (obj_pl.y <= 370)
            cutscene_initialize();
        
        break;
    
    case 1:
        cutscene_sfx_play(gardener_talknoise, 1);
        break;
    
    case 2:
        cutscene_follower_into_actor();
        break;
    
    case 3:
        cutscene_npc_direction(actor_follower, "up");
        break;
    
    case 4:
        obj_pl.direction = 90;
        cutscene_advance();
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        cutscene_audio_fade(obj_radio.current_song, 0, 1000, 0.2, false, true);
        break;
    
    case 7:
        if (obj_pl.x > 170)
            cutscene_npc_walk(actor_follower, obj_pl.x - 25, obj_pl.y, 3, "x", "up");
        else
            cutscene_npc_walk(actor_follower, obj_pl.x + 25, obj_pl.y, 3, "x", "up");
        
        break;
    
    case 8:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* What was that?";
            prt[0] = 381;
        }
        
        break;
    
    case 9:
        cutscene_camera_move(obj_pl.x, obj_steamworks_29_gardener_bot.y + 20, 1);
        break;
    
    case 10:
        cutscene_wait(0.5);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = gardener_talknoise;
            message[0] = "* I...";
            position = 0;
        }
        
        break;
    
    case 12:
        cutscene_wait(0.5);
        break;
    
    case 13:
        obj_steamworks_29_gardener_bot.image_speed = 1;
        cutscene_advance();
        break;
    
    case 14:
        if (obj_steamworks_29_gardener_bot.image_index >= 28)
        {
            obj_steamworks_29_gardener_bot.image_speed = 0;
            cutscene_wait(0.25);
        }
        
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = gardener_talknoise;
            message[0] = "* AM...";
            message[1] = "* AWAKE.";
            position = 0;
        }
        
        break;
    
    case 16:
        obj_steamworks_29_gardener_bot.image_speed = 1;
        cutscene_advance();
        break;
    
    case 17:
        if (obj_steamworks_29_gardener_bot.image_index >= (obj_steamworks_29_gardener_bot.image_number - 1) || obj_steamworks_29_gardener_bot.sprite_index == spr_steamworks_29_gardener_bot_idle)
        {
            obj_steamworks_29_gardener_bot.image_speed = 1;
            obj_steamworks_29_gardener_bot.sprite_index = spr_steamworks_29_gardener_bot_idle;
            cutscene_wait(0.25);
        }
        
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = gardener_talknoise;
            message[0] = "* GUARDENER - MODEL 02 -_#  ST_ATUS, D_MAGED. .   .";
            position = 0;
        }
        
        break;
    
    case 19:
        cutscene_wait(0.5);
        break;
    
    case 20:
        cutscene_dialogue();
        
        with (msg)
        {
            col_modif[0] = 255;
            color = true;
            sndfnt_array[0] = gardener_talknoise;
            sndfnt_array[3] = 108;
            sndfnt_array[4] = gardener_talknoise;
            sndfnt_array[9] = 108;
            sndfnt_array[10] = gardener_talknoise;
            message[0] = "* OH, HE-HELLO THERE.";
            message[1] = "* WAS IT YOU WHO#  DISTURBED THE FLOR#  A? ?";
            message[2] = "* I ASK YOU TO PLEASE#  HAVE MORE _RESPECT.";
            message[3] = "* Um, we apologize. Won't#  happen again.";
            message[4] = "* DO NOT WORRY. _";
            message[5] = "* SEEING T;HAT THE CHILD#  IS SO Y-Y-OUNG, IT IS#  FORGI>ABLE.";
            message[6] = "* I WILL REPORT#  THE_INCIDENT AS A LEVEL#  3-03--__4LLEE";
            message[7] = "* EV-EL 10 OFFENSE.";
            message_col[7][0] = "* EV-EL 10 OFFENSE.";
            message[8] = "* LEVEL 10 MEANS - THE#  TERMINATION OF THE TRAMPLER.";
            message[9] = "* Hold on!";
            message[10] = "* FAREWELL.";
            prt[3] = 381;
            prt[9] = 381;
            position = 0;
            
            switch (message_current)
            {
                case 0:
                    noloop_message = 0;
                    break;
                
                case 7:
                    if (noloop_message < message_current)
                    {
                        noloop_message = message_current;
                        scr_screenshake(6, 2);
                        audio_play_sound(snd_guardener_level10, 1, 0);
                        guardener_pitch = 0.25;
                    }
                    
                    message_timer = 60;
                    skippable = false;
                    break;
                
                case 8:
                    skippable = true;
                    message_timer = -1;
                    break;
            }
        }
        
        break;
    
    case 21:
        instance_create_depth(170, obj_pl.y + 10, obj_pl.depth - 1, obj_steamworks_29_gardener_bot_fence);
        instance_create_depth(170, obj_pl.y - 20, obj_pl.depth + 1, obj_steamworks_29_gardener_bot_fence);
        cutscene_advance();
        break;
    
    case 22:
        cutscene_wait(1.5);
        break;
    
    case 23:
        cutscene_battle_initiate("guardener", true, true);
        instance_destroy();
        break;
    
    case 24:
        cutscene_wait(1.5);
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = 16711935;
            sndfnt_array[0] = gardener_talknoise;
            sndfnt_array[4] = 391;
            sndfnt_array[5] = gardener_talknoise;
            sndfnt_array[12] = 391;
            sndfnt_array[13] = gardener_talknoise;
            message[0] = "* I WAS ABOUT TO DO SOMETHING..#  .";
            message[1] = "* OH YES, I REMEMBER.";
            message[2] = "* SENDING LEVEL 3 REPORT_";
            message[3] = "* ...";
            message[4] = "* [RESPONSE - NEGATIVE]";
            message_col[4][0] = "* [RESPONSE - NEGATIVE]";
            message[5] = "* I APOLOGIZE. ALLOW ME TO CALL#  AGAIN.";
            message[6] = "* SENDING LEVEL 3 REPORT_";
            message[7] = "* HELLO? CREATOR?";
            message[8] = "* ARE YOU THERE?";
            message[9] = "* ...";
            message[10] = "* I BELIEVE MY CREATOR MAY BE#  PLAYING A \"PRACTICAL JOKE\" ON#  ME.";
            message[11] = "* SIGNALING STEAMWORKS HEAD#  OFFICE_";
            message[12] = "* [BEEEEP - THE LINE YOU ARE#  CONTACTING HAS BEEN#  DISCONNECTED]";
            message_col[12][0] = "* [BEEEEP - THE LINE YOU ARE#  CONTACTING HAS BEEN#  DISCONNECTED]";
            message[13] = "* WHERE... WHERE IS EVERYBODY?";
            position = 0;
        }
        
        break;
    
    case 26:
        cutscene_action_sprite(780, 3630, 1, false, 0);
        break;
    
    case 27:
        obj_steamworks_29_gardener_bot.sprite_index = spr_steamworks_29_gardener_bot_idle;
        cutscene_advance();
        break;
    
    case 28:
        cutscene_wait(0.5);
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = 16711935;
            sndfnt_array[0] = gardener_talknoise;
            sndfnt_array[5] = 391;
            sndfnt_array[6] = gardener_talknoise;
            message[0] = "* OH... I HAVE ALLOWED IMMENSE#  OVERGROWTH.";
            message[1] = "* I UNDERSTAND.";
            message[2] = "* IT SEEMS... MY DAY HAS PASSED.";
            message[3] = "* ...";
            message[4] = "* ...CANCEL REPORT AND#  REINITIATE HIBERNATION_";
            message[5] = "* [HIBERNATION SEQUENCE ENGAGED]";
            message_col[5][0] = "* [HIBERNATION SEQUENCE ENGAGED]";
            message[6] = "* I AM SORRY FOR INCONVENIENCING#  YOU.";
            message[7] = "* I DO NOT KNOW WHAT THE WORLD#  IS LIKE NOW, NOR D-DO I WISH#  TO. //";
            position = 0;
        }
        
        break;
    
    case 30:
        audio_play_sound(snd_guardener_leave_1, 1, 0);
        obj_steamworks_29_gardener_bot.sprite_index = spr_steamworks_29_gardener_bot_leave;
        obj_steamworks_29_gardener_bot.image_speed = 1;
        obj_steamworks_29_gardener_bot.image_index = 0;
        cutscene_advance();
        break;
    
    case 31:
        if (obj_steamworks_29_gardener_bot.image_index >= 24)
        {
            obj_steamworks_29_gardener_bot.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 32:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = gardener_talknoise;
            message[0] = "* LIFE WAS. .. M-MUCH BETT>ER...";
            message[1] = "* _NOT ;KNOWING...  .";
            position = 0;
        }
        
        break;
    
    case 33:
        audio_play_sound(snd_guardener_leave_2, 1, 0);
        obj_steamworks_29_gardener_bot.image_speed = 1;
        cutscene_advance();
        break;
    
    case 34:
        if (obj_steamworks_29_gardener_bot.image_index >= (obj_steamworks_29_gardener_bot.image_number - 1))
        {
            obj_steamworks_29_gardener_bot.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 35:
        cutscene_wait(0.5);
        break;
    
    case 36:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* ...";
            message[1] = "* ...";
            message[2] = "* Let's... keep moving.";
            prt[0] = 371;
            prt[1] = 394;
            prt[2] = 370;
            position = 0;
        }
        
        break;
    
    case 37:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 38:
        if (cutscene_npc_walk(1161, obj_pl.x, obj_pl.y + 20, 2, "x", "up"))
        {
            cutscene_actor_into_follower();
            cutscene_advance(39);
        }
        
        break;
    
    case 39:
        scr_radio_restart();
        global.sworks_flag[20] = 2;
        camera_set_view_target(view_camera[0], 1031);
        instance_destroy(obj_steamworks_29_gardener_bot);
        cutscene_end();
        audio_sound_pitch(snd_talk_axis, 1);
        break;
    
    case 40:
        cutscene_wait(1);
        break;
    
    case 41:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* ...";
            message[1] = "* Surely...";
            message[2] = "* There had to be some#  other way...";
            message[3] = "* ...";
            message[4] = "* Let's just... keep#  moving.";
            prt[0] = 371;
            prt[1] = 370;
            prt[2] = 370;
            prt[3] = 394;
            prt[4] = 371;
            
            if (message_current == 1)
            {
                obj_ceroba_npc.npc_direction = "left";
                obj_pl.direction = 0;
            }
        }
        
        break;
    
    case 42:
        obj_pl.direction = 90;
        global.party_member = 1171;
        cutscene_actor_into_follower();
        break;
    
    case 43:
        scr_radio_restart();
        global.sworks_flag[20] = 4;
        global.sworks_flag[41] = 1;
        camera_set_view_target(view_camera[0], 1031);
        cutscene_end();
        audio_sound_pitch(snd_talk_axis, 1);
        break;
}
