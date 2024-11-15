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
        obj_pl.direction = 90;
        cutscene_advance();
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        cutscene_audio_fade(obj_radio.current_song, 0, 1000, 0.2, false, true);
        break;
    
    case 5:
        cutscene_camera_move(obj_pl.x, obj_steamworks_29_gardener_bot.y + 20, 1);
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = gardener_talknoise;
            message[0] = "* I...";
            position = 0;
        }
        
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        obj_steamworks_29_gardener_bot.image_speed = 1;
        audio_play_sound(snd_guardener_rise, 1, 0);
        cutscene_advance();
        break;
    
    case 10:
        if (obj_steamworks_29_gardener_bot.image_index >= 28)
        {
            obj_steamworks_29_gardener_bot.image_speed = 0;
            cutscene_wait(0.25);
        }
        
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = gardener_talknoise;
            message[0] = "* AM...";
            message[1] = "* AWAKE.";
            position = 0;
        }
        
        break;
    
    case 12:
        obj_steamworks_29_gardener_bot.image_speed = 1;
        cutscene_advance();
        break;
    
    case 13:
        if (obj_steamworks_29_gardener_bot.image_index >= (obj_steamworks_29_gardener_bot.image_number - 1) || obj_steamworks_29_gardener_bot.sprite_index == spr_steamworks_29_gardener_bot_idle)
        {
            obj_steamworks_29_gardener_bot.image_speed = 1;
            obj_steamworks_29_gardener_bot.sprite_index = spr_steamworks_29_gardener_bot_idle;
            cutscene_wait(0.25);
        }
        
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = gardener_talknoise;
            message[0] = "* GUARDENER - MODEL 02 -_#  ST_ATUS, D_MAGED. .   .";
            position = 0;
        }
        
        break;
    
    case 15:
        cutscene_wait(0.5);
        break;
    
    case 16:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt_array[0] = gardener_talknoise;
            color = true;
            col_modif[0] = 255;
            message[0] = "* OH, HE-HELLO THERE.";
            message[1] = "* WAS IT YOU WHO DISTURBED THE#  FLOR-A? ?";
            message[2] = "* I ASK YOU TO PLEASE HAVE MORE#  _RESPECT.";
            message[3] = "* BU-T DO NOT WORRY. _";
            message[4] = "* SEEING T;HAT YOU ARE SO#  Y-Y-OUNG, IT IS FORGI>ABLE.";
            message[5] = "* I WILL REPORT THE_INCIDENT AS#  A LEVEL 3-03--__4LLEE";
            message[6] = "* EV-EL 10 OFFENSE.";
            message_col[6][0] = "* EV-EL 10 OFFENSE.";
            message[7] = "* LEVEL 10 MEANS - THE#  TERMINATION OF THE TRAMPLER.";
            message[8] = "* FAREWELL.";
            position = 0;
            
            switch (message_current)
            {
                case 0:
                    noloop_message = 0;
                    break;
                
                case 6:
                    if (noloop_message < message_current)
                    {
                        noloop_message = message_current;
                        scr_screenshake(6, 2);
                        audio_play_sound(snd_guardener_level10, 1, 0);
                        other.guardener_pitch = 0.25;
                    }
                    
                    message_timer = 60;
                    skippable = false;
                    break;
                
                case 7:
                    skippable = true;
                    message_timer = -1;
                    break;
            }
        }
        
        break;
    
    case 17:
        instance_create_depth(170, obj_pl.y + 10, obj_pl.depth - 1, obj_steamworks_29_gardener_bot_fence);
        instance_create_depth(170, obj_pl.y - 20, obj_pl.depth + 1, obj_steamworks_29_gardener_bot_fence);
        cutscene_advance();
        break;
    
    case 18:
        cutscene_wait(1.5);
        break;
    
    case 19:
        cutscene_battle_initiate("guardener", true, true);
        instance_destroy();
        break;
    
    case 20:
        cutscene_wait(1.5);
        guardener_pitch = 0.5;
        break;
    
    case 21:
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
    
    case 22:
        cutscene_action_sprite(780, 3630, 1, false, 0);
        break;
    
    case 23:
        obj_steamworks_29_gardener_bot.sprite_index = spr_steamworks_29_gardener_bot_idle;
        cutscene_advance();
        break;
    
    case 24:
        cutscene_wait(0.5);
        break;
    
    case 25:
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
    
    case 26:
        audio_play_sound(snd_guardener_leave_1, 1, 0);
        obj_steamworks_29_gardener_bot.sprite_index = spr_steamworks_29_gardener_bot_leave;
        obj_steamworks_29_gardener_bot.image_speed = 1;
        obj_steamworks_29_gardener_bot.image_index = 0;
        cutscene_advance();
        break;
    
    case 27:
        if (obj_steamworks_29_gardener_bot.image_index >= 24)
        {
            obj_steamworks_29_gardener_bot.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 28:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = gardener_talknoise;
            message[0] = "* LIFE WAS. .. M-MUCH BETT>ER...";
            message[1] = "* _NOT ;KNOWING...  .";
            position = 0;
        }
        
        break;
    
    case 29:
        audio_play_sound(snd_guardener_leave_2, 1, 0);
        obj_steamworks_29_gardener_bot.image_speed = 1;
        cutscene_advance();
        break;
    
    case 30:
        if (obj_steamworks_29_gardener_bot.image_index >= (obj_steamworks_29_gardener_bot.image_number - 1))
        {
            obj_steamworks_29_gardener_bot.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 31:
        cutscene_wait(0.5);
        break;
    
    case 32:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 33:
        scr_radio_restart();
        global.sworks_flag[20] = 2;
        camera_set_view_target(view_camera[0], 1031);
        instance_destroy(obj_steamworks_29_gardener_bot);
        audio_sound_pitch(snd_talk_axis, 1);
        cutscene_end();
        break;
}
