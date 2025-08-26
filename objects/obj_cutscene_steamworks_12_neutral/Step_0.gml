switch (scene)
{
    case 0:
        if (obj_pl.x < 300)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        cutscene_camera_move(220, obj_pl.y, 1, false);
        break;
    
    case 3:
        cutscene_audio_fade(obj_radio.current_song, 0, 300, 0.25, false, true);
        break;
    
    case 4:
        cutscene_wait(1);
        break;
    
    case 5:
        tile_layer_hide(-1000);
        cutscene_advance();
        break;
    
    case 6:
        cutscene_sfx_play(snd_elevator_start, 0.8);
        break;
    
    case 7:
        cutscene_screenshake(1, 4);
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        cutscene_music_start(219);
        break;
    
    case 10:
        cutscene_npc_walk(obj_axis_npc, 190, obj_pl.y, 4, "y", "right", false);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_fuchsia;
            talker[0] = obj_axis_npc;
            message[0] = "* AXIS MODEL 014 READY TO#  GUARD AND PROTECT.";
            message_col[0][0] = "  AXIS                                        ";
            message[1] = "* INTRUDER SPOTTED.#  STEAMWORKS: EASTERN#  BRANCH.";
            message[2] = "* YOUR CRIMES ARE AS#  FOLLOWS:";
            message[3] = "* - TRESPASSING ON#  PRIVATE PROPERTY.";
            message[4] = "* - UTILIZING MACHINERY#  WITHOUT PERMISSION.";
            message[5] = "* - HUMAN.";
            message[6] = "* HOW TO YOU PLEAD TO#  THESE ACCUSATIONS?";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            prt[3] = spr_portrait_axis_normal;
            prt[4] = spr_portrait_axis_normal;
            prt[5] = spr_portrait_axis_normal;
            ch_msg = 6;
            ch[1] = "Not guilty";
            ch[2] = "Guilty";
            
            if (outcome == 1)
            {
                message[7] = "* PLAYING TOUGH ARE WE?";
                message[8] = "* THAT IS NO MATTER.";
                message[9] = "* I WILL SCAN YOUR FACE#  WITH MY LIE DETECTOR.";
                prt[7] = spr_portrait_axis_normal;
                prt[8] = spr_portrait_axis_normal;
                prt[9] = spr_portrait_axis_normal;
                other.scene = 12;
            }
            
            if (outcome == 2)
            {
                message[7] = "* REALLY?";
                message[8] = "* THAT WAS EASY.";
                message[9] = "* YOUR CRIMES WILL BE#  REPORTED TO AN#  AUTHORITY.";
                message[10] = "* OH WAIT, THAT IS ME.";
                message[11] = "* ENJOY YOUR ISOLATION,#  HUMAN.";
                prt[7] = spr_portrait_axis_normal;
                prt[8] = spr_portrait_axis_normal;
                prt[9] = spr_portrait_axis_normal;
                prt[10] = spr_portrait_axis_normal;
                prt[11] = spr_portrait_axis_normal;
                other.scene = 15;
            }
        }
        
        break;
    
    case 12:
        if (global.dialogue_open)
            exit;
        
        with (obj_pl)
            scr_axis_clover_scan();
        
        cutscene_sfx_play(snd_elevator, 1);
        audio_sound_pitch(snd_elevator, 2);
        break;
    
    case 13:
        cutscene_wait(3);
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* INCREDIBLE.";
            message[1] = "* YOU HAVE THE MOST#  EMOTIONLESS FACE I HAVE#  EVER SEEN.";
            message[2] = "* I WILL JUST HAVE TO GO#  WITH MY NON-EXISTENT GUT#  AND SAY YOU WERE LYING.";
            message[3] = "* ENJOY YOUR ISOLATION,#  HUMAN.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            prt[3] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 15:
        if (global.dialogue_open == true)
            exit;
        
        scr_audio_fade_out(cutscene_music, 300);
        cutscene_sfx_play(snd_rock_break, 1);
        break;
    
    case 16:
        cutscene_instance_create(obj_pl.x, obj_pl.y + 5, obj_steamworks_12_trapdoor);
        break;
    
    case 17:
        cutscene_wait(1);
        break;
    
    case 18:
        cutscene_sfx_play(snd_decibatfall, 1);
        break;
    
    case 19:
        with (obj_pl)
        {
            direction = 270;
            image_alpha = 0.75;
        }
        
        instance_destroy(obj_steamworks_footsteps);
        cutscene_advance();
        break;
    
    case 20:
        with (obj_pl)
        {
            direction = 270;
            image_angle -= 1;
        }
        
        var fall_speed = 10;
        
        for (var i = 1000002; i >= 999998; i--)
            tile_layer_shift(i, 0, -fall_speed);
        
        layer_y("ts_steamworks", layer_get_y("ts_steamworks") - fall_speed);
        
        with (obj_asset_steamworks_smallgear)
            y -= fall_speed;
        
        obj_axis_npc.y -= fall_speed;
        obj_steamworks_12_trapdoor.y -= fall_speed;
        cutscene_wait(2);
        break;
    
    case 21:
        with (obj_pl)
        {
            direction = 270;
            image_angle -= 1;
            image_alpha -= 0.1;
        }
        
        if (obj_pl.image_alpha <= 0)
            cutscene_wait(0.5);
        
        break;
    
    case 22:
        cutscene_sfx_play(snd_toy_squeak, 0.3);
        break;
    
    case 23:
        cutscene_wait(0.5);
        break;
    
    case 24:
        cutscene_change_room(rm_steamworks_13, 110, 150, 0.025);
        break;
}
