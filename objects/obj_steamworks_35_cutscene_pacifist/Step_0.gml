var advance;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_npc_walk(1168, 900, 140, 3, "x", "left");
        cutscene_npc_walk(1161, 900, 140, 3, "x", "left");
        scene++;
        break;
    
    case 1:
        if (obj_player_npc.x <= 990)
            scene++;
        
        break;
    
    case 2:
        instance_create_depth(983, 132, -999, obj_steamworks_35_pacifist_gate);
        scene++;
        break;
    
    case 3:
        advance = true;
        
        with (obj_player_npc)
        {
            can_walk = false;
            
            if (x > 970)
            {
                advance = false;
                x -= 8;
            }
            else
            {
                obj_player_npc.npc_direction = "right";
            }
        }
        
        with (obj_ceroba_npc)
        {
            can_walk = false;
            
            if (x < 1010)
            {
                advance = false;
                npc_direction = "right";
                x += 8;
            }
            else
            {
                obj_ceroba_npc.npc_direction = "left";
            }
        }
        
        if (advance == true)
            scene++;
        
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Hey!";
            message[1] = "* Who did that!?";
            message[2] = "* Clover! You can hear me, right?";
            message[3] = "* I'm gonna try to blast a hole#  in this thing!";
        }
        
        break;
    
    case 6:
        cutscene_npc_walk(1168, 940, 140, 3, "x", "right");
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        cutscene_sfx_play(436, 1);
        break;
    
    case 9:
        cutscene_wait(0.25);
        break;
    
    case 10:
        cutscene_screenshake(0.5, 3);
        break;
    
    case 11:
        cutscene_wait(2);
        break;
    
    case 12:
        cutscene_sfx_play(436, 1);
        break;
    
    case 13:
        cutscene_wait(0.25);
        break;
    
    case 14:
        cutscene_screenshake(0.5, 3);
        break;
    
    case 15:
        cutscene_wait(0.75);
        break;
    
    case 16:
        if (cutscene_dialogue())
        {
            instance_destroy(obj_player_npc);
            scr_cutscene_end();
            scene = 16.2;
        }
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* It's gonna take a lot to break#  through!";
            message[1] = "* And to think we were almost#  free of this place...";
            message[2] = "* Um, just look around for a#  switch or keypad!";
            message[3] = "* There's always one near doors.";
        }
        
        break;
    
    case 16.2:
        if (obj_pl.x < obj_axis_npc.x)
        {
            scr_cutscene_start();
            cutscene_advance(17);
            instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, obj_player_npc);
            obj_player_npc.npc_direction = "up";
        }
        
        break;
    
    case 17:
        cutscene_sfx_play(529, 1);
        break;
    
    case 18:
        cutscene_wait(0.75);
        break;
    
    case 19:
        cutscene_sfx_play(529, 1);
        break;
    
    case 20:
        cutscene_wait(2);
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = 16711935;
            talker[0] = 1166;
            message[0] = "* [MAIN POWER SOURCE NOT FOUND_]";
            message[1] = "* [INITIATING EMERGENCY BACKUP#  POWER_]";
            message_col[0][0] = "* [MAIN POWER SOURCE NOT FOUND_]";
            message_col[1][0] = "* [INITIATING EMERGENCY BACKUP#  POWER_]";
            talker[2] = 1161;
            message[2] = "* What was that?";
            message[3] = "* Did I just hear Axis!?";
        }
        
        break;
    
    case 22:
        cutscene_npc_action_sprite(1166, 2989, 0.5, false);
        obj_axis_npc.npc_direction = "down";
        break;
    
    case 23:
        cutscene_wait(1);
        break;
    
    case 24:
        cutscene_music_start(219, 500);
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* H-H-HUMA-N.";
            message[1] = "* Y-YOU TRIED TO SHUT ME#  DOWN.";
            message[2] = "* I HAVE HAD IT WITH YOU#  AND YOUR FRIEND#  THWARTING MY PLANS.";
            message[3] = "* I AM THIS CLOSE TO#  DIRECTING ALL MY STEAM#  INTO MY RUDE FINGER.";
            message[4] = "* AND YES, I AM YELLING.";
            message[5] = "* MY TYPOGRAPHY BOX JUST#  LACKS THE EXCLAMATION#  POINT CHARACTER.";
            message[6] = "* A SHAME, BUT AT LEAST I#  HAVE QUESTION#  MARKS?????????";
            prt[0] = 473;
            prt[1] = 473;
            prt[2] = 473;
            prt[3] = 473;
            prt[4] = 473;
            prt[5] = 473;
            prt[6] = 473;
        }
        
        break;
    
    case 26:
        cutscene_sfx_play(436, 1);
        break;
    
    case 27:
        cutscene_wait(0.75);
        break;
    
    case 28:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[4] = 1166;
            message[0] = "* Hey Clover!";
            message[1] = "* I don't think we can outrun#  this guy any longer!";
            message[2] = "* Please try to find a peaceful#  way to outwit him!";
            message[3] = "* I'm sorry but I don't want#  Chujin's creation smashed to#  bits!";
            message[4] = "* OUTWIT? MAYBE.";
            message[5] = "* OUT-GUN? NEVER.";
            message[6] = "* I AM [ticked] OFF AND#  OUT OF NON-LETHAL#  OPTIONS.";
            message[7] = "* SO PREPARE YOURSELF. I#  AM ATTACKING NOW.";
            prt[4] = 473;
            prt[5] = 473;
            prt[6] = 473;
            prt[7] = 473;
            
            if (message_current == 0)
                obj_player_npc.npc_direction = "right";
            
            if (message_current == 4)
                obj_player_npc.npc_direction = "up";
        }
        
        break;
    
    case 29:
        cutscene_wait(0.5);
        break;
    
    case 30:
        audio_pause_sound(cutscene_music);
        cutscene_battle_initiate("axis", true, false);
        obj_heart_initiate_battle.flash_delay = 5;
        obj_pl.image_alpha = 1;
        break;
    
    case 31:
        if (instance_exists(obj_heart_initiate_battle_2))
        {
            instance_destroy(obj_blackout_overworld_2);
            instance_destroy(obj_heart_initiate_battle_2);
            obj_pl.direction = 90;
            obj_pl.image_alpha = 0;
            cutscene_advance();
        }
        
        break;
    
    case 32:
        cutscene_wait(2.5);
        break;
    
    case 33:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* WHAT.";
            message[1] = "* MY PROGRAMMING IS#  PREVENTING ME FROM#  ATTACK.";
            message[2] = "* IT SAYS YOU ARE NOT A#  CURRENT THREAT OR#  RESISTING ARREST.";
            message[3] = "* UGH, [forget] THIS.";
            message[4] = "* HERE, I WILL MAKE YOU A#  THREAT.";
            prt[0] = 473;
            prt[1] = 473;
            prt[2] = 473;
            prt[3] = 473;
            prt[4] = 473;
            position = 0;
            
            if (message_current == 1)
                audio_resume_sound(other.cutscene_music);
        }
        
        break;
    
    case 34:
        cutscene_advance(35);
        break;
    
    case 35:
        cutscene_npc_walk(1166, obj_steamworks_35_trashcan.x + 20, obj_steamworks_35_trashcan.y - 1, 4, "x", "left");
        break;
    
    case 36:
        cutscene_wait(0.5);
        break;
    
    case 37:
        if (cutscene_npc_action_sprite(1166, 1393, 1, true))
        {
            obj_steamworks_35_trashcan.image_index = 1;
            obj_axis_npc.action_sprite = false;
            cutscene_npc_set_sprites(1166, 488, 3297, 3267, 233, 488, 3297, 3267, 233);
            cutscene_advance(38);
        }
        
        break;
    
    case 38:
        cutscene_npc_walk(1166, obj_player_npc.x, obj_axis_npc.y, 4, "x", "down");
    
    case 39:
        cutscene_camera_move(obj_player_npc.x, obj_player_npc.y, 4);
        break;
    
    case 40:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* HOLD THIS, IT SUITS#  YOU.";
            prt[0] = 473;
        }
        
        break;
    
    case 41:
        cutscene_npc_walk(1166, obj_pl.x, clamp(obj_pl.y - 20, 90, 10000), 3, "y", "down");
        break;
    
    case 42:
        cutscene_wait(0.5);
        break;
    
    case 43:
        cutscene_sfx_play(424, 1);
        break;
    
    case 44:
        obj_player_npc.up_sprite_idle = spr_pl_up_trash;
        cutscene_npc_set_sprites(1166, 488, 487, 484, 486, 488, 487, 484, 486);
        break;
    
    case 45:
        cutscene_npc_walk(1166, obj_pl.x, clamp(obj_pl.y - 40, 90, 10000), 4, "y", "down");
        break;
    
    case 46:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* THERE. NOW YOU HAVE A#  DRAWN \"WEAPON.\"";
            message[1] = "* LOOPHOLES ARE#  WONDERFUL, ARE THEY NOT?";
            message[2] = "* NOW, TIME TO DIE.";
            prt[0] = 473;
            prt[1] = 473;
            prt[2] = 473;
            position = 0;
            
            if (message_current == 2)
                scr_audio_fade_out(other.cutscene_music, 500);
        }
        
        break;
    
    case 47:
        cutscene_advance();
        break;
    
    case 48:
        cutscene_battle_initiate("axis", true, true);
        cutscene_advance(49);
        break;
    
    case 49:
        break;
    
    case 50:
        audio_stop_all();
        scr_cutscene_start();
        cutscene_music_start(218);
        instance_destroy(obj_steamworks_35_trashcan);
        obj_axis_npc.action_sprite = false;
        obj_axis_npc.x -= 0;
        obj_pl.x = 680;
        obj_pl.y = 160;
        obj_pl.direction = 90;
        actor_follower = instance_create(obj_pl.x + 40, obj_pl.y, obj_ceroba_npc);
        obj_ceroba_npc.npc_direction = "up";
        
        if (instance_exists(obj_ceroba_follower))
            instance_destroy(obj_ceroba_follower);
        
        instance_create(obj_axis_npc.x - 40, obj_axis_npc.y - 6, obj_steamworks_13_robuild_complete);
        scene = 51;
        break;
    
    case 51:
        cutscene_wait(0.5);
        break;
    
    case 52:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            talker[4] = 1166;
            talker[3] = 1161;
            talker[5] = 1161;
            message[0] = "* THIS EMOTION, IT FEELS#  SO NICE.";
            message[1] = "* I MUST THANK YOU FOR#  OPENING MY EYES.";
            message[2] = "* I HAD NO IDEA SUCH#  WONDROUS SIGHTS EXISTED.";
            message[3] = "* Glad we could finally#  reach a level of#  civility.";
            message[4] = "* CAN I KEEP THEM???";
            message[5] = "* Whoa, slow down!";
            message[6] = "* Here...";
            prt[0] = 3255;
            prt[1] = 1261;
            prt[2] = 1261;
            prt[3] = 374;
            prt[4] = 3255;
            prt[5] = 381;
            prt[6] = 395;
            position = 0;
        }
        
        break;
    
    case 53:
        cutscene_npc_walk(1161, obj_axis_npc.x, obj_axis_npc.y + 20, 3, "y", "up");
        break;
    
    case 54:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[2] = 1161;
            talker[6] = 1161;
            talker[1] = 1166;
            talker[5] = 1166;
            message[0] = "* (Do you wanna know a#  secret?)";
            message[1] = "* YES I WOULD LIKE TO KNOW#  A SECRET.";
            message[2] = "* (They told me that they#  like you but will only#  go out if it's casual.)";
            message[3] = "* (Get to know them a#  little first, you know?)";
            message[4] = "* (Ask what their name is#  or something.)";
            message[5] = "* OKAY.";
            message[6] = "* Alright, good! Give it a#  shot!";
            prt[0] = 372;
            prt[1] = 1261;
            prt[2] = 372;
            prt[3] = 395;
            prt[4] = 372;
            prt[5] = 473;
            prt[6] = 395;
            position = 0;
        }
        
        break;
    
    case 55:
        cutscene_npc_direction(1166, "left");
        break;
    
    case 56:
        cutscene_npc_walk(1161, obj_axis_npc.x, obj_axis_npc.y + 50, 3, "y", "up");
        break;
    
    case 57:
        cutscene_wait(1);
        break;
    
    case 58:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = 1166;
            talker[1] = 1166;
            talker[2] = 1166;
            talker[3] = 1161;
            talker[4] = 1166;
            talker[5] = 1166;
            message[0] = "* HELLO MY NAME IS AXIS#  WHAT IS YOUR NAME?";
            message[1] = "* . .";
            message[2] = "* HA HA YOU ARE SO FUNNY#  WANT TO GET MARRIED???";
            message[3] = "* Hey, remember what we#  talked about!";
            message[4] = "* . .";
            message[5] = "* THEY SAID YES.";
            prt[0] = 3255;
            prt[2] = 1261;
            prt[3] = 381;
            prt[5] = 3255;
            
            switch (message_current)
            {
                case 3:
                    obj_axis_npc.npc_direction = "down";
                    break;
                
                case 4:
                    obj_axis_npc.npc_direction = "left";
                    break;
                
                case 5:
                    obj_axis_npc.npc_direction = "down";
                    break;
            }
        }
        
        break;
    
    case 59:
        cutscene_npc_direction(1166, "left");
        break;
    
    case 60:
        cutscene_wait(2);
        break;
    
    case 61:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[3] = 1161;
            talker[7] = 1161;
            talker[1] = 1166;
            talker[6] = 1166;
            talker[8] = 1166;
            message[0] = "* What?";
            message[1] = "* I AM HONESTLY JUST AS#  SURPRISED AS YOU.";
            message[2] = "* THIS ROCKS.";
            message[3] = "* Okay, then I'm happy for#  you.";
            message[4] = "* ...";
            message[5] = "* Well, not to rain on the#  parade but Clover and I#  have to go.";
            message[6] = "* GO WHERE?";
            message[7] = "* Hotland. Just a business#  trip.";
            message[8] = "* WELL I WISH YOU A#  PLEASANT JOURNEY THEN.";
            prt[0] = 371;
            prt[1] = 1056;
            prt[2] = 1261;
            prt[3] = 395;
            prt[4] = 394;
            prt[5] = 370;
            prt[6] = 1056;
            prt[7] = 377;
            prt[8] = 1261;
            
            switch (message_current)
            {
                case 1:
                    obj_axis_npc.npc_direction = "down";
                    break;
                
                case 4:
                    obj_axis_npc.npc_direction = "left";
                    break;
                
                case 6:
                    obj_axis_npc.npc_direction = "down";
                    break;
            }
            
            position = 0;
        }
        
        break;
    
    case 62:
        cutscene_wait(0.5);
        break;
    
    case 63:
        cutscene_sfx_play(529, 1);
        break;
    
    case 64:
        cutscene_wait(1);
        break;
    
    case 65:
        cutscene_sfx_play(529, 1);
        break;
    
    case 66:
        cutscene_wait(1);
        break;
    
    case 67:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            message_col[0][0] = "";
            col_modif[0] = 16711935;
            talker[0] = 1166;
            talker[1] = 1166;
            talker[3] = 1166;
            talker[4] = 1166;
            talker[5] = 1161;
            talker[7] = 1166;
            message[0] = "  BACKUP BATTERY EXTREMELY#  LOW. PLEASE RECHARGE.";
            message_col[0][0] = "  BACKUP BATTERY EXTREMELY#  LOW. PLEASE RECHARGE.";
            message[1] = "* OH, SUPPOSE I SHOULD GO#  DO THAT.";
            message[2] = "* RECHARGING WILL RESTORE#  ME BACK TO MY FACTORY#  STATE BUT...";
            message[3] = "  ADDED \"HATTED HUMAN\" AND#  \"TALL LADY\" TO#  \"AUTHORIZED\" LIST.";
            message_col[3][0] = "  ADDED \"HATTED HUMAN\" AND#  \"TALL LADY\" TO#  \"AUTHORIZED\" LIST.";
            message[4] = "* THERE. NOW I WILL NOT#  ATTEMPT APPREHENSION#  NEXT TIME WE MEET.";
            message[5] = "* Thank you, Axis.";
            message[6] = "* You have a good life.";
            message[7] = "* I WILL TRY.";
            prt[1] = 473;
            prt[2] = 473;
            prt[4] = 1261;
            prt[5] = 372;
            prt[6] = 395;
            prt[7] = 473;
            position = 0;
        }
        
        break;
    
    case 68:
        cutscene_wait(0.75);
        break;
    
    case 69:
        cutscene_npc_walk(1166, obj_steamworks_13_robuild_complete.x, obj_steamworks_13_robuild_complete.y + 20, 4, "y", "up");
        break;
    
    case 70:
        obj_axis_npc.action_sprite = true;
        obj_axis_npc.sprite_index = spr_axis_up;
        cutscene_advance();
        break;
    
    case 71:
        cutscene_wait(0.5);
        break;
    
    case 72:
        obj_axis_npc.action_sprite = false;
        instance_destroy(obj_steamworks_13_robuild_complete);
        cutscene_sfx_play(319, 1);
        break;
    
    case 73:
        cutscene_npc_direction(1166, "down");
        scr_audio_fade_out(cutscene_music, 1000);
        break;
    
    case 74:
        obj_axis_npc.npc_direction = "right";
        cutscene_npc_walk(1166, 760, obj_axis_npc.y, 2, "x", "right", 1031, 760, 140);
        
        if (obj_axis_npc.x > (obj_pl.x + 10))
        {
            obj_ceroba_npc.npc_direction = "right";
            obj_pl.direction = 0;
        }
        
        break;
    
    case 75:
        audio_play_sound(snd_encounter, 1, 0);
        instance_create(obj_axis_npc.x, obj_axis_npc.y - 40, obj_cutscene_ex);
        cutscene_advance();
        break;
    
    case 76:
        if (cutscene_wait(1))
        {
            instance_destroy(obj_cutscene_ex);
            obj_axis_npc.npc_direction = "left";
        }
        
        break;
    
    case 77:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            talker[1] = 1161;
            talker[2] = 1166;
            talker[5] = 1161;
            talker[7] = 1166;
            message[0] = "* OH, ONE MORE THING.";
            message[1] = "* Hm?";
            message[2] = "* YOU SAID YOUR HUSBAND#  WAS MY CREATOR?";
            message[3] = "* WOULD YOU TELL HIM THAT#  I MISS HIM?";
            message[4] = "* HE WAS ALWAYS VERY KIND#  TO ME.";
            message[5] = "* I... ";
            message[6] = "* Yeah... I'll tell him.";
            message[7] = "* THANK YOU.";
            message[8] = "* GOODBYE.";
            prt[0] = 473;
            prt[1] = 370;
            prt[2] = 473;
            prt[3] = 473;
            prt[4] = 473;
            prt[5] = 609;
            prt[6] = 2987;
            prt[7] = 1261;
            prt[8] = 473;
            position = 0;
        }
        
        break;
    
    case 78:
        cutscene_npc_walk(1166, 880, obj_axis_npc.y, 2, "x", "right");
        break;
    
    case 79:
        cutscene_advance();
        break;
    
    case 80:
        if (global.sworks_flag[41] == 0)
            cutscene_npc_walk(1161, obj_pl.x - 20, obj_pl.y, 3, "x", "right");
        else
            cutscene_npc_walk(1161, obj_ceroba_npc.x, obj_pl.y, 2, "x", "left");
        
        scene = 81;
        break;
    
    case 81:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 3);
        break;
    
    case 82:
        instance_destroy(obj_axis_npc);
        cutscene_camera_reset();
        
        if (global.sworks_flag[41] == 0)
        {
            actor_follower = 1161;
            global.party_member = 1171;
            cutscene_actor_into_follower();
            scr_cutscene_end();
            cutscene_advance(83);
            global.sworks_flag[31] = 2;
            scr_radio_restart();
        }
        
        if (global.sworks_flag[41] >= 1)
            scene = 87;
        
        break;
    
    case 83:
        if (global.party_member != -4)
        {
            if (obj_pl.x >= 820)
            {
                cutscene_dialogue();
                
                with (msg)
                {
                    sndfnt = 108;
                    message[0] = "* Don't worry about Axis.";
                    message[1] = "* We got to move.";
                    prt[0] = 377;
                    prt[1] = 370;
                }
            }
        }
        
        break;
    
    case 84:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 85:
        cutscene_npc_walk_relative(1168, -20, 0, 3, "x", "left");
        break;
    
    case 86:
        instance_destroy(obj_player_npc);
        scr_cutscene_end();
        scr_follower_initialize();
        scene = 83;
        break;
    
    case 87:
        cutscene_wait(1.5);
        break;
    
    case 88:
        obj_pl.direction = 0;
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* ...";
            message[1] = "* About Hotland.";
            message[2] = "* The truth is...";
            message[3] = "* I... ";
            message[4] = "* I can't go.";
            message[5] = "* You didn't destroy Axis#  and I thank you but...";
            message[6] = "* Your SOUL...";
            message[7] = "* I was sure it was...";
            message[8] = "* ...";
            message[9] = "* Nevermind. There's no#  explaining it.";
            message[10] = "* I'm sorry...";
            prt[0] = 394;
            prt[1] = 370;
            prt[2] = 394;
            prt[3] = 394;
            prt[4] = 370;
            prt[5] = 371;
            prt[6] = 377;
            prt[7] = 394;
            prt[8] = 394;
            prt[9] = 370;
            prt[10] = 377;
            
            if (message_current == 8)
                obj_ceroba_npc.npc_direction = "right";
            else
                obj_ceroba_npc.npc_direction = "left";
        }
        
        break;
    
    case 89:
        cutscene_npc_direction(1161, "right");
        break;
    
    case 90:
        cutscene_wait(1);
        break;
    
    case 91:
        cutscene_npc_direction(1161, "left");
        break;
    
    case 92:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Goodbye, Clover.";
            prt[0] = 609;
        }
        
        break;
    
    case 93:
        cutscene_npc_walk(1161, 860, 140, 3, "y", "right");
        break;
    
    case 94:
        cutscene_wait(1.5);
        break;
    
    case 95:
        cutscene_advance();
        break;
    
    case 96:
        cutscene_wait(0.5);
        break;
    
    case 97:
        cutscene_instance_create(obj_pl.x - 40, obj_pl.y, obj_flowey_npc);
        obj_flowey_npc.action_sprite = true;
        obj_flowey_npc.sprite_index = spr_floweyrise;
        obj_flowey_npc.image_speed = 0.2;
        break;
    
    case 98:
        with (obj_flowey_npc)
        {
            if (image_index >= (image_number - 1))
            {
                action_sprite = false;
                other.scene += 1;
            }
        }
        
        break;
    
    case 99:
        obj_pl.direction = 180;
        cutscene_advance();
        break;
    
    case 100:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Aaaand there it is!";
            message[1] = "* She was totally using#  you, pal.";
            prt[0] = 349;
            prt[1] = 347;
        }
        
        break;
    
    case 101:
        obj_pl.direction = 0;
        cutscene_wait(1.5);
        break;
    
    case 102:
        obj_pl.direction = 180;
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Hey, cheer up!";
            message[1] = "* Self-defense. That's#  all it was.";
            message[2] = "* ...";
            message[3] = "* You know what? This is#  good, actually!";
            message[4] = "* You're finally free to#  get back on track!";
            message[5] = "* No more third parties,#  no more side quests.";
            message[6] = "* Just you and me, buddy!#  ";
            message[7] = "* Just you and me.";
            prt[0] = 348;
            prt[1] = 347;
            prt[2] = 347;
            prt[3] = 348;
            prt[4] = 348;
            prt[5] = 347;
            prt[6] = 348;
            prt[7] = 348;
        }
        
        break;
    
    case 103:
        if (cutscene_npc_action_sprite_reverse(3194, 242, 0.2, true, 0))
            instance_destroy(obj_flowey_npc);
        
        break;
    
    case 104:
        cutscene_wait(1);
        break;
    
    case 105:
        cutscene_camera_reset();
        cutscene_end();
        instance_destroy(obj_ceroba_npc);
        global.sworks_flag[31] = 2;
        global.route = 1;
        global.party_member = -4;
        global.mail_flag[8] = true;
        global.sworks_flag[61] = 1;
        scr_radio_restart();
        break;
}
