if (live_call())
    return global.live_result;

var axis_talknoise = 111;
audio_sound_pitch(axis_talknoise, axis_pitch);

switch (scene)
{
    case 0:
        if (obj_pl.x < 280)
        {
            scr_cutscene_start();
            cutscene_advance(0.25);
        }
        
        break;
    
    case 0.25:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        cutscene_advance(0.5);
        break;
    
    case 0.5:
        if (cutscene_npc_walk(obj_player_npc, obj_player_npc.x, 160, 3, "y", "left"))
            cutscene_advance(1);
        
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        cutscene_camera_move(190, obj_pl.y, 1, false);
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
        cutscene_screenshake(0.5, 3);
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
        if (cutscene_dialogue())
        {
            with (obj_pl)
                scr_axis_clover_scan();
        }
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_fuchsia;
            col_modif[1] = c_fuchsia;
            talker[0] = obj_axis_npc;
            message[0] = "* AXIS MODEL 014 READY TO#  GUARD AND PROTECT.";
            message_col[0][1] = "  AXIS                                        ";
            message[1] = "* VANDAL SPOTTED.#  STEAMWORKS: EASTERN#  BRANCH.";
            message[2] = "* SCANNING_";
            message_col[2][0] = "* SCANNING_";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 12:
        if (global.dialogue_open)
            exit;
        
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
            color = true;
            col_modif[0] = c_fuchsia;
            talker[0] = obj_axis_npc;
            message[0] = "* HUMAN DETECTED_";
            message_col[0][0] = "* HUMAN DETECTED_";
            message[1] = "* WAIT. . .";
            message[2] = "* THIS IS FAMILIAR.";
            message[3] = "* ACCESSING MEMORY BANK_";
            message_col[3][0] = "* ACCESSING MEMORY BANK_";
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 15:
        if (global.dialogue_open == true)
            exit;
        
        cutscene_sfx_play(snd_fail, 1);
        break;
    
    case 16:
        cutscene_wait(1);
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_fuchsia;
            talker[0] = obj_axis_npc;
            message[0] = "* MEMORY BANK BLOCKED_";
            message_col[0][0] = "* MEMORY BANK BLOCKED_";
            message[1] = "* HM.";
            message[2] = "* WELL. IT MATTERS NOT.";
            message[3] = "* THREAT DIAGNOSIS_";
            message_col[3][0] = "* THREAT DIAGNOSIS_";
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 18:
        cutscene_wait(1);
        break;
    
    case 19:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_red;
            talker[0] = obj_axis_npc;
            message[0] = "* . . .";
            message[1] = "* THREAT LEVEL: 10_";
            message[2] = "* EMPATHY: BYPASSED_";
            prt[0] = spr_portrait_axis_normal;
            message_col[1][0] = "* THREAT LEVEL: 10_";
            message_col[2][0] = "* EMPATHY: BYPASSED_";
            
            switch (message_current)
            {
                case 0:
                    noloop_message = 0;
                    break;
                
                case 1:
                    if (noloop_message < message_current)
                    {
                        noloop_message = message_current;
                        scr_screenshake(6, 2);
                        audio_play_sound(snd_guardener_level10, 1, 0);
                        audio_stop_sound(other.cutscene_music);
                        obj_axis_npc.right_sprite_idle = spr_axis_redeyes_right;
                        other.axis_pitch = 0.8;
                    }
                    
                    break;
            }
        }
        
        break;
    
    case 20:
        cutscene_wait(0.5);
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* WELCOME TO THE#  STEAMWORKS, HUMAN.";
            message[1] = "* THINGS HAVEN'T BEEN#  GOING YOUR WAY, HAVE#  THEY?";
            message[2] = "* I'M AFRAID WHAT YOU ARE#  AFTER HAS. . .";
            message[3] = "* . . .EXPIRED.";
            message[4] = "* FIVE SOULS ARE ALL THAT#  WAIT FOR YOU IF YOU#  REACH THE CASTLE.";
            message[5] = "* BUT I'M GUESSING YOU#  PIECED THAT TOGETHER#  ALREADY.";
            message[6] = "* IT IS INTERESTING. . .";
            message[7] = "* HUMANS AND MONSTERS,#  WHILE DIFFERENT, DO#  SHARE ONE THING.";
            message[8] = "* A HUNGER FOR THE SOUL#  OF THE OTHER.";
            message[9] = "* I SUPPOSE THAT IS NO#  DIFFERENT HERE.";
            message[10] = "* MY USUAL PROTOCOL CALLS#  FOR MERE APPREHENSION#  BUT. . .";
            message[11] = "* YOUR THREAT LEVEL#  PERMITS ME TO INITIATE#  ATTACK.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
            prt[2] = spr_portrait_axis_normal;
            prt[3] = spr_portrait_axis_normal;
            prt[4] = spr_portrait_axis_normal;
            prt[5] = spr_portrait_axis_normal;
            prt[6] = spr_portrait_axis_normal;
            prt[7] = spr_portrait_axis_normal;
            prt[8] = spr_portrait_axis_normal;
            prt[9] = spr_portrait_axis_normal;
            prt[10] = spr_portrait_axis_normal;
            prt[11] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 22:
        cutscene_npc_action_sprite(obj_axis_npc, spr_axis_redeyes_charge, 1, false);
        obj_axis_npc.right_sprite_idle = spr_axis_redeyes_ball_loop;
        break;
    
    case 23:
        cutscene_wait(0.5);
        break;
    
    case 24:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* STAND DOWN, HUMAN. IT#  WILL ALL BE OVER SOON.";
            prt[0] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 25:
        cutscene_wait(0.75);
        break;
    
    case 26:
        cutscene_battle_initiate("axis", true, false);
        obj_heart_initiate_battle.flash_delay = 5;
        obj_pl.image_alpha = 1;
        break;
    
    case 27:
        if (instance_exists(obj_heart_initiate_battle_2))
        {
            instance_destroy(obj_blackout_overworld_2);
            instance_destroy(obj_heart_initiate_battle_2);
            obj_pl.direction = 180;
            obj_pl.image_alpha = 0;
            cutscene_advance();
        }
        
        break;
    
    case 28:
        cutscene_npc_action_sprite(obj_player_npc, spr_pl_left_geno_shoot, 1, true, 0, snd_revolver_shoot, 8);
        
        if (obj_player_npc.image_index >= 8)
        {
            if (obj_axis_npc.sprite_index != spr_axis_redeyes_shot)
            {
                obj_axis_npc.sprite_index = spr_axis_redeyes_shot;
                obj_axis_npc.action_sprite = true;
                obj_axis_npc.image_index = 0;
                obj_axis_npc.image_speed = 1;
                other.axis_pitch = 1;
                cutscene_advance(29);
            }
        }
        
        break;
    
    case 29:
        if (!variable_instance_exists(id, "shoot_noloop"))
            shoot_noloop = 0;
        
        with (obj_axis_npc)
        {
            if (action_sprite == true)
            {
                var i = floor(image_index);
                
                switch (i)
                {
                    case 0:
                    case 5:
                    case 9:
                        if (other.shoot_noloop < i)
                        {
                            other.shoot_noloop = i;
                            obj_player_npc.image_index = 7;
                            obj_player_npc.image_speed = 1;
                            audio_play_sound(snd_revolver_shoot, 1, 0);
                        }
                        
                        break;
                }
                
                if (image_index >= (image_number - 0.5))
                {
                    sprite_index = spr_axis_redeyes_shot_flyback;
                    hspeed = -8;
                }
            }
        }
        
        if (obj_player_npc.image_index >= 10)
        {
            obj_player_npc.image_speed = 0;
            
            if (shoot_noloop >= 9)
                cutscene_advance();
        }
        
        break;
    
    case 30:
        if (obj_axis_npc.x <= 104)
        {
            obj_axis_npc.x = 104;
            obj_axis_npc.hspeed = false;
            obj_axis_npc.sprite_index = spr_axis_redeyes_shot_slam;
            obj_axis_npc.image_speed = 1;
            obj_axis_npc.image_index = 0;
            scr_screenshake(6, 2);
            audio_play_sound(snd_undertale_impact, 1, 0);
            cutscene_advance();
        }
        
        break;
    
    case 31:
        if (obj_axis_npc.image_index >= (obj_axis_npc.image_number - 1))
        {
            obj_axis_npc.image_speed = 0;
            obj_axis_npc.image_index = obj_axis_npc.image_number - 1;
            cutscene_advance();
        }
        
        break;
    
    case 32:
        cutscene_wait(1);
        break;
    
    case 33:
        obj_player_npc.image_speed = 1;
        
        if (obj_player_npc.image_index >= (obj_player_npc.image_number - 1))
        {
            obj_player_npc.action_sprite = false;
            cutscene_advance();
        }
        
        break;
    
    case 34:
        cutscene_wait(1);
        break;
    
    case 35:
        cutscene_npc_walk_relative(obj_player_npc, -100, 0, 1, "x", "left");
        break;
    
    case 36:
        cutscene_npc_set_sprites(obj_axis_npc, spr_axis_damaged_up, spr_axis_damaged_right, spr_axis_damaged_down, spr_axis_damaged_left, spr_axis_damaged_up, spr_axis_damaged_right, spr_axis_damaged_down, spr_axis_damaged_left);
        break;
    
    case 37:
        if (cutscene_npc_action_sprite(obj_axis_npc, spr_axis_redeyes_shot_end, 1, false))
            obj_axis_npc.x -= 29;
        
        break;
    
    case 38:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            color = true;
            col_modif[0] = c_fuchsia;
            message[0] = "* AH. . .";
            message[1] = "* DAMAGE CRITICAL_";
            message_col[1][0] = "* DAMAGE CRITICAL_";
            message[2] = "* t-zzz THReAT . ..";
            message_col[2][0] = "* t-zzz THReAT . ..";
            message[3] = "* thReat L-LeVEL 99;99#  9999 99_9. .";
            message_col[3][0] = "* thReat L-LeVEL 99;99#  9999 99_9. .";
            message[4] = "* . . .";
            prt[0] = spr_portrait_axis_damaged;
            prt[4] = spr_portrait_axis_damaged;
        }
        
        break;
    
    case 39:
        cutscene_npc_walk(obj_axis_npc, 280, 180, 2, "y", "right");
        
        if (obj_axis_npc.x > (obj_player_npc.x - 40))
            obj_player_npc.npc_direction = "down";
        
        if (obj_axis_npc.x > (obj_player_npc.x + 40))
            obj_player_npc.npc_direction = "right";
        
        break;
    
    case 40:
        cutscene_npc_walk(obj_axis_npc, 280, obj_player_npc.y, 2, "y", "right");
        break;
    
    case 41:
        cutscene_wait(1);
        break;
    
    case 42:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* I REMEMB3R NOW.. . ..";
            message[1] = "* . . .";
            message[2] = "* THe 0THERS.. .";
            message[3] = "* I MUST EVaCUATE . .";
            prt[0] = spr_portrait_axis_damaged;
            prt[1] = spr_portrait_axis_damaged;
            prt[2] = spr_portrait_axis_damaged;
            prt[3] = spr_portrait_axis_damaged;
        }
        
        break;
    
    case 43:
        cutscene_npc_action_sprite(obj_player_npc, spr_pl_right_geno_shoot, 1, false);
        
        if (obj_player_npc.image_index >= 6)
        {
            obj_player_npc.image_speed = 0;
            obj_player_npc.image_index = 11;
            cutscene_advance();
        }
        
        break;
    
    case 44:
        cutscene_wait(0.5);
        break;
    
    case 45:
        cutscene_npc_direction(obj_axis_npc, "left");
        break;
    
    case 46:
        cutscene_wait(0.5);
        break;
    
    case 47:
        audio_play_sound(snd_rock_break, 1, 0);
        cutscene_instance_create(obj_axis_npc.x, obj_axis_npc.y + 5, obj_steamworks_12_trapdoor);
        break;
    
    case 48:
        cutscene_wait(1);
        break;
    
    case 49:
        cutscene_sfx_play(snd_decibatfall, 1);
        break;
    
    case 50:
        with (obj_axis_npc)
        {
            image_alpha -= 0.15;
            image_angle -= 15;
            
            if (image_alpha <= 0)
                other.scene += 1;
        }
        
        break;
    
    case 51:
        cutscene_wait(1.5);
        break;
    
    case 52:
        cutscene_advance();
        break;
    
    case 53:
        cutscene_wait(0.5);
        break;
    
    case 54:
        obj_player_npc.image_speed = 1;
        
        if (obj_player_npc.image_index >= (obj_player_npc.image_number - 1))
        {
            obj_player_npc.action_sprite = false;
            cutscene_advance();
        }
        
        break;
    
    case 55:
        cutscene_wait(0.5);
        break;
    
    case 56:
        obj_steamworks_12_trapdoor.image_index = 7;
        obj_steamworks_12_trapdoor.image_speed = -0.5;
        cutscene_advance();
    
    case 57:
        if (obj_steamworks_12_trapdoor.image_index <= 0.5)
        {
            obj_steamworks_12_trapdoor.image_index = 0;
            obj_steamworks_12_trapdoor.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 58:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 3);
        break;
    
    case 59:
        cutscene_end();
        cutscene_camera_reset();
        instance_destroy(obj_axis_npc);
        scr_radio_restart();
        global.sworks_flag[3] = 1;
        break;
}
