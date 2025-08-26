switch (scene)
{
    case 0:
        scr_cutscene_start();
        
        if (global.party_member != -4 && instance_exists(global.party_member))
            instance_destroy(global.party_member);
        
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        actor_follower = instance_create(obj_pl.x - 30, obj_pl.y, obj_ceroba_npc);
        scene++;
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        cutscene_npc_walk(obj_ceroba_npc, 220, 620, 3, "x", "up");
        cutscene_npc_walk(obj_player_npc, 220, 640, 3, "x", "up");
        scene = 3;
        break;
    
    case 3:
        if (obj_ceroba_npc.npc_arrived && obj_player_npc.npc_arrived)
            cutscene_wait(1);
        
        break;
    
    case 4:
        cutscene_camera_move(220, 540, 2);
        break;
    
    case 5:
        cutscene_wait(0.25);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Workstations...";
            message[1] = "* Okay, well... Probably#  another code to find.";
            message[2] = "* You know the drill.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_alt;
            prt[2] = spr_portrait_ceroba_neutral;
            
            if (message_current >= 1)
                obj_ceroba_npc.npc_direction = "down";
        }
        
        break;
    
    case 7:
        cutscene_npc_walk(obj_ceroba_npc, 220, 660, 3, "y", "up");
        break;
    
    case 8:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 9:
        cutscene_actor_into_follower();
        cutscene_camera_reset(true);
        instance_destroy(obj_player_npc);
        scr_cutscene_end();
        global.sworks_flag[38] = 1;
        break;
    
    case 10:
        if (obj_pl.y <= 300)
        {
            scr_cutscene_start();
            scr_audio_fade_out(obj_radio.current_song, 1000);
            cutscene_advance();
        }
        
        break;
    
    case 11:
        cutscene_follower_into_actor();
        break;
    
    case 12:
        cutscene_npc_walk(actor_follower, 220, 280, 3, "x", "up");
        break;
    
    case 13:
        cutscene_wait(0.5);
        break;
    
    case 14:
        cutscene_camera_move(220, 230, 2);
        break;
    
    case 15:
        cutscene_wait(0.5);
        break;
    
    case 16:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Must be the manager's#  office.";
            message[1] = "* Surely they had access#  to all passcodes.";
            message[2] = "* Let's check those file#  cabinets.";
            prt[0] = spr_portrait_ceroba_alt;
            prt[1] = spr_portrait_ceroba_alt;
            prt[2] = spr_portrait_ceroba_neutral;
            
            if (message_current >= 2)
                obj_ceroba_npc.npc_direction = "down";
        }
        
        break;
    
    case 17:
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        cutscene_npc_walk(obj_ceroba_npc, 220, 250, 3, "x", "up", -4, 290, 180);
        cutscene_npc_walk(obj_player_npc, 220, 250, 3, "x", "up", -4, 270, 220);
        scene = 18;
        break;
    
    case 18:
        if (obj_ceroba_npc.npc_arrived && obj_player_npc.npc_arrived)
            cutscene_wait(0.5);
        
        break;
    
    case 19:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* ...";
            message[1] = "* Hold on, look here.";
            message[2] = "* Performance reports for#  all factory employees.";
            message[3] = "* A... B...";
            message[4] = "* ...";
            prt[0] = spr_portrait_ceroba_alt;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_alt;
            prt[3] = spr_portrait_ceroba_alt;
            prt[4] = spr_portrait_ceroba_sorrowful;
            
            if (message_current == 1)
                obj_ceroba_npc.npc_direction = "down";
            
            if (message_current == 2)
                obj_ceroba_npc.npc_direction = "up";
        }
        
        break;
    
    case 20:
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_ceroba_reading_1, 1, true, 0);
        break;
    
    case 21:
        cutscene_wait(0.3);
        break;
    
    case 22:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* \"01/16/20XX...";
            message[1] = "* Mr. Chujin pitched his#  blueprints for a \"guard bot\" of#  sorts.";
            message[2] = "* He called the project: AXIS.\"";
        }
        
        break;
    
    case 23:
        cutscene_music_start(532, 500);
        break;
    
    case 24:
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_ceroba_reading_2, 1, true, 0, snd_paperfall, 9);
        break;
    
    case 25:
        obj_ceroba_npc.image_index = obj_ceroba_npc.image_number - 1;
        cutscene_wait(0.3);
        break;
    
    case 26:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* \"03/19/20XX...";
            message[1] = "* Axis Model 01 was presented to#  King ASGORE but was swiftly#  rejected.";
            message[2] = "* The poor thing couldn't stay#  powered up for more than six#  seconds.\"";
        }
        
        break;
    
    case 27:
        cutscene_npc_action_sprite_reverse(obj_ceroba_npc, spr_ceroba_reading_2, 1, true, 0, snd_paperfall, 9);
        break;
    
    case 28:
        obj_ceroba_npc.image_index = 0;
        cutscene_wait(0.3);
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* \"05/10/20XX...";
            message[1] = "* Axis Model 04 backfired and#  shot one of its gloves at the#  King.";
            message[2] = "* This is getting embarrassing.\"";
        }
        
        break;
    
    case 30:
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_ceroba_reading_2, 1, true, 0, snd_paperfall, 9);
        break;
    
    case 31:
        obj_ceroba_npc.image_index = obj_ceroba_npc.image_number - 1;
        cutscene_wait(0.3);
        break;
    
    case 32:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* \"07/23/20XX...";
            message[1] = "* Axis Model 07 refused to enter#  the throne room.";
            message[2] = "* ...ASGORE gave Chujin one more#  shot after incessant pleading.";
            message[3] = "* I know he's a smart engineer#  but if the next showcase goes#  south...\"";
        }
        
        break;
    
    case 33:
        obj_ceroba_npc.image_index = 0;
        cutscene_wait(0.3);
        break;
    
    case 34:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "...";
            prt[0] = spr_portrait_ceroba_sorrowful;
        }
        
        break;
    
    case 35:
        cutscene_npc_action_sprite_reverse(obj_ceroba_npc, spr_ceroba_reading_2, 1, true, 0, snd_paperfall, 9);
        break;
    
    case 36:
        obj_ceroba_npc.image_index = 0;
        cutscene_wait(0.3);
        break;
    
    case 37:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* \"09/23/20XX...";
            message[1] = "* Well, this is it.";
            message[2] = "* Model 08 booted up and seemed#  to be stable for a moment.";
            message[3] = "* That was until a malfunction#  occurred and sparks began to#  emit from the body.";
            message[4] = "* In the chaos, one spark leaped#  onto King ASGORE's flower bed.";
            message[5] = "* ...A fire ignited but was#  swiftly put out.";
        }
        
        break;
    
    case 38:
        cutscene_wait(0.2);
        break;
    
    case 39:
        if (draw_alpha < 1)
            draw_alpha += 0.1;
        else
            scene++;
        
        break;
    
    case 40:
        cutscene_wait(1);
        break;
    
    case 41:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = make_color_rgb(94, 84, 146);
            col_modif[1] = make_color_rgb(51, 178, 106);
            sndfnt_array[0] = snd_talk_asgore;
            sndfnt_array[1] = snd_talk_chujin;
            sndfnt_array[4] = snd_talk_asgore;
            sndfnt_array[5] = snd_talk_chujin;
            sndfnt_array[6] = snd_talk_asgore;
            message[0] = "* Please leave. Leave and do not#  return.";
            message_col[0][0] = "* Please leave. Leave and do not#  return.";
            message[1] = "* I... I apologize deeply.";
            message[2] = "* But as we are, us monsters#  simply aren't ready to bypass#  the barrier!";
            message[3] = "* You know this deep down... I#  know you do. Axis IS the#  solution you need!'";
            message_col[1][1] = message[1];
            message_col[2][1] = message[2];
            message_col[3][1] = message[3];
            message[4] = "* The solution I need is a#  reliable one. One that won't#  set fire to our homes.";
            message[5] = "* If this is about my...";
            message[6] = "* It isn't.";
            message[7] = "* I thank you for your service to#  society...";
            message[8] = "* ...But I'm afraid monsterkind's#  freedom belongs in more capable#  hands.'\"";
            message_col[4][0] = message[4];
            message_col[5][1] = message[5];
            message_col[6][0] = message[6];
            message_col[7][0] = message[7];
            message_col[8][0] = message[8];
            
            if (message_current == 5)
            {
                skippable = false;
                message_timer = 20;
            }
            else
            {
                skippable = true;
                message_timer = -1;
            }
        }
        
        break;
    
    case 42:
        cutscene_wait(1);
        break;
    
    case 43:
        if (draw_alpha > 0)
            draw_alpha -= 0.1;
        else
            scene++;
        
        break;
    
    case 44:
        cutscene_wait(1);
        break;
    
    case 45:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "...";
            prt[0] = spr_portrait_ceroba_sorrowful;
        }
        
        break;
    
    case 46:
        cutscene_action_sprite(obj_ceroba_npc, spr_ceroba_reading_3, 1, true, 0, snd_ceroba_newspaper_tear, 1);
        break;
    
    case 47:
        if (!instance_exists(obj_factory_04_torn_documents))
            instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y, obj_factory_04_torn_documents);
        
        cutscene_wait(1);
        break;
    
    case 48:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* \"Capable hands\" he#  says.";
            message[1] = "* Look at Axis now. The#  TRUE realization of#  Chujin's vision.";
            message[2] = "* He far exceeds ANY model#  Asgore ever saw!";
            message[3] = "* And you know who those#  \"capable hands\" now#  belong to? ";
            message[4] = "* The scientist who has#  Kanako.";
            message[5] = "* Dr. Alphys.";
            message[6] = "* ...";
            prt[0] = spr_portrait_ceroba_sorrowful;
            prt[1] = spr_portrait_ceroba_sorrowful;
            prt[2] = spr_portrait_ceroba_sorrowful;
            prt[3] = spr_portrait_ceroba_sorrowful;
            prt[4] = spr_portrait_ceroba_sorrowful;
            prt[5] = spr_portrait_ceroba_sorrowful;
            prt[6] = spr_portrait_ceroba_disapproving;
        }
        
        break;
    
    case 49:
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_ceroba_reading_4, 1, true, 0);
        break;
    
    case 50:
        cutscene_wait(0.3);
        break;
    
    case 51:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* A while back, she built#  a robot too.";
            message[1] = "* One so \"lifelike\" it#  got her the position she#  has now.";
            message[2] = "* It must've been real#  impressive!";
            message[3] = "* So impressive that#  Asgore kicked the other#  visionaries to the curb.";
            message[4] = "* ...";
            message[5] = "* I understand now... Why#  Chujin never shared this#  with me...";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_closed_eyes;
            prt[3] = spr_portrait_ceroba_irked;
            prt[4] = spr_portrait_ceroba_sorrowful;
            prt[5] = spr_portrait_ceroba_disapproving;
            message[6] = "* He must've been#  absolutely gutted#  hearing those words... ";
            message[7] = "* ...";
            message[8] = "* Screw the Royals.";
            message[9] = "* The politics, all the#  red tape...";
            message[10] = "* This, Clover, this is#  why the mission is so#  important.";
            message[11] = "* You can't trust these#  close-minded gatekeepers#  to do anything right.";
            message[12] = "* Not for a second.";
            prt[6] = spr_portrait_ceroba_disapproving;
            prt[7] = spr_portrait_ceroba_disapproving;
            prt[8] = spr_portrait_ceroba_angry;
            prt[9] = spr_portrait_ceroba_irked;
            prt[10] = spr_portrait_ceroba_angry_alt;
            prt[11] = spr_portrait_ceroba_angry_alt;
            prt[12] = spr_portrait_ceroba_angry;
            
            if (message_current == 7)
            {
                obj_ceroba_npc.action_sprite = false;
                obj_ceroba_npc.npc_direction = "right";
            }
            
            if (message_current == 10)
                obj_ceroba_npc.npc_direction = "down";
        }
        
        break;
    
    case 52:
        cutscene_npc_reset_sprite(obj_ceroba_npc, "up");
        scr_audio_fade_out(cutscene_music, 1000);
        break;
    
    case 53:
        cutscene_wait(2.5);
        break;
    
    case 54:
        cutscene_npc_direction(obj_ceroba_npc, "down");
        break;
    
    case 55:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* ...";
            message[1] = "* Let's go.";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 56:
        cutscene_npc_walk(obj_ceroba_npc, obj_pl.x, obj_pl.y + 20, 3, "y", "up");
        break;
    
    case 57:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 58:
        cutscene_actor_into_follower();
        cutscene_camera_reset(true);
        instance_destroy(obj_player_npc);
        global.sworks_flag[38] = 2;
        scr_radio_restart();
        cutscene_end();
        break;
}
