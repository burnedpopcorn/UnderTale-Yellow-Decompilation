if (live_call())
    return global.live_result;

switch (scene)
{
    case -1:
        if (room == rm_battle)
            exit;
        
        cutscene_wait(2);
        break;
    
    case 0:
        instance_create_depth(137, 151, 0, obj_kanako_npc);
        obj_kanako_npc.npc_direction = "up";
        obj_kanako_npc.down_sprite_idle = spr_kanako_talk_sad;
        instance_create_depth(137, 290, 0, obj_ceroba_npc);
        obj_ceroba_npc.npc_direction = "up";
        instance_create_depth(190, 120, 50, obj_flashback_lab_table);
        cutscene_camera_freeze(0, 0);
        break;
    
    case 1:
        instance_create_depth(0, 0, depth + 1, obj_ending_flashback_02_noise);
        scene = 1.5;
        break;
    
    case 1.5:
        draw_alpha = lerp(draw_alpha, 0, 0.15);
        
        if (draw_alpha < 0.05)
        {
            draw_alpha = 0;
            cutscene_advance(2);
        }
        
        break;
    
    case 2:
        cutscene_wait(1.5);
        break;
    
    case 3:
        if (!instance_exists(obj_ceroba_phase_2_overworld_cutscene_dialogue_chujin))
        {
            msg = instance_create_depth(0, 0, -800, obj_ceroba_phase_2_overworld_cutscene_dialogue_chujin);
            scene++;
        }
        
        with (msg)
        {
            sndfnt = snd_talk_chujin;
            message[0] = "Our little girl... Kanako... She#  needs to live a happy life,#  unaffected by my endeavors.";
            message[1] = "     That is my final wish.";
        }
        
        break;
    
    case 4:
        if (!global.dialogue_open)
            cutscene_wait(1);
        
        break;
    
    case 5:
        draw_alpha = 0;
        
        if (!instance_exists(obj_ending_flashback_02_noise))
            cutscene_advance();
        else
            obj_ending_flashback_02_noise.fade_out = true;
        
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_npc_action_sprite(obj_kanako_npc, spr_flashback_kanako_wipeeyes, 1, false);
        break;
    
    case 8:
        instance_create(obj_kanako_npc.x, obj_kanako_npc.y - 20, obj_cutscene_ex);
        cutscene_advance();
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* Kanako!?";
            position = 1;
        }
        
        break;
    
    case 10:
        instance_destroy(obj_cutscene_ex);
        cutscene_npc_direction(obj_kanako_npc, "down");
        break;
    
    case 11:
        cutscene_npc_set_sprites(obj_ceroba_npc, spr_ceroba_up_run, spr_ceroba_right_run, spr_ceroba_down_run, spr_ceroba_left_run, spr_ceroba_up_talk, spr_ceroba_right_talk, spr_ceroba_down_talk, spr_ceroba_left_talk);
        break;
    
    case 12:
        cutscene_npc_walk(obj_ceroba_npc, obj_kanako_npc.x, 210, 4, "x", "up");
        break;
    
    case 13:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* What are you doing down#  here!?";
            prt[0] = spr_portrait_ceroba_nervous;
            talker[0] = obj_ceroba_npc;
            position = 1;
        }
        
        break;
    
    case 14:
        cutscene_wait(1);
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_kanako_npc;
            talker[1] = obj_ceroba_npc;
            talker[2] = obj_kanako_npc;
            talker[3] = obj_ceroba_npc;
            talker[4] = obj_kanako_npc;
            talker[6] = obj_ceroba_npc;
            talker[10] = obj_kanako_npc;
            message[0] = "* Is... Is it true?";
            message[1] = "* ...What?";
            message[2] = "* Am I... different?";
            message[3] = "* Kanako I...";
            message[4] = "* Daddy said he would've#  lived a long time if I#  wasn't here.";
            message[5] = "* He would still... be...";
            message[6] = "* No, no!";
            message[7] = "* Your father loved you!";
            message[8] = "* And he didn't want to#  put you in any danger.";
            message[9] = "* You heard him!";
            message[10] = "* His dream... All these#  books and papers... ";
            message[11] = "* You've been trying to#  finish it, haven't you?";
            prt[0] = spr_portrait_kanako_neutral;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_kanako_sad_1;
            prt[3] = spr_portrait_ceroba_pensive;
            prt[4] = spr_portrait_kanako_sad_2;
            prt[5] = spr_portrait_kanako_sad_1;
            prt[6] = spr_portrait_ceroba_nervous;
            prt[7] = spr_portrait_ceroba_pensive;
            prt[8] = spr_portrait_ceroba_pensive;
            prt[9] = spr_portrait_ceroba_pensive;
            prt[10] = spr_portrait_kanako_pensive_2;
            prt[11] = spr_portrait_kanako_neutral;
            
            if (message_current == 2 && other.cutscene_music == 0)
            {
                other.cutscene_music = audio_play_sound(mus_kanako_reprise, 1, 1);
                audio_stop_sound(obj_radio.current_song);
            }
            
            if (message_current == 4)
                obj_kanako_npc.down_sprite_idle = spr_kanako_talk_crying;
            
            if (message_current == 10)
                obj_kanako_npc.down_sprite_idle = spr_kanako_talk_sad;
            
            if (message_current == 5)
            {
                skippable = false;
                message_timer = 30;
            }
            else
            {
                skippable = true;
                message_timer = -1;
            }
            
            position = 1;
        }
        
        break;
    
    case 16:
        cutscene_wait(1);
        break;
    
    case 17:
        cutscene_npc_direction(obj_ceroba_npc, "left");
        break;
    
    case 18:
        cutscene_wait(1);
        break;
    
    case 19:
        cutscene_npc_direction(obj_ceroba_npc, "up");
        break;
    
    case 20:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            talker[4] = obj_kanako_npc;
            message[0] = "* With my limited#  abilities... yes.";
            message[1] = "* But it doesn't involve#  you.";
            message[2] = "* I've been looking into#  ways to create the serum#  without a Boss Monster.";
            message[3] = "* I'll... figure it out.#  I have to.";
            message[4] = "* But...";
            message[5] = "* I found this in the#  trash.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_alt;
            prt[2] = spr_portrait_ceroba_closed_eyes;
            prt[3] = spr_portrait_ceroba_sorrowful;
            prt[4] = spr_portrait_kanako_pensive_2;
            prt[5] = spr_portrait_kanako_neutral;
            position = 1;
        }
        
        break;
    
    case 21:
        cutscene_npc_action_sprite(obj_kanako_npc, spr_flashback_kanako_pullpaper, 1, false);
        obj_kanako_npc.down_sprite_idle = spr_kanako_talk_paper;
        break;
    
    case 22:
        instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y - 40, obj_cutscene_ex);
        cutscene_advance();
        break;
    
    case 23:
        cutscene_wait(1);
        break;
    
    case 24:
        instance_destroy(obj_cutscene_ex);
        cutscene_advance();
        break;
    
    case 25:
        if (cutscene_dialogue())
            scene = 25.4;
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_orange;
            talker[0] = obj_ceroba_npc;
            talker[1] = obj_kanako_npc;
            talker[2] = obj_ceroba_npc;
            talker[3] = obj_kanako_npc;
            talker[5] = obj_ceroba_npc;
            message[0] = "* ! ";
            message[1] = "* You figured it out.#  Last week.";
            message[2] = "* I...";
            message[3] = "* \"Using the leftover#  ex... extract from the#  human's SOUL...";
            message_col[3][0] = "  \"Using the leftover#  ex... extract from the#  human's SOUL...";
            message[4] = "* I believe I have#  removed any corruption#  it held.\"";
            message_col[4][0] = "  I believe I have#  removed any corruption#  it held.\"";
            message[5] = "* ...Negating the need#  for someone pure of#  heart. Yes.";
            prt[0] = spr_portrait_ceroba_nervous;
            prt[1] = spr_portrait_kanako_hopeful;
            prt[2] = spr_portrait_ceroba_pensive;
            prt[3] = spr_portrait_kanako_neutral;
            prt[4] = spr_portrait_kanako_neutral;
            prt[5] = spr_portrait_ceroba_closed_eyes;
            
            switch (message_current)
            {
                case 2:
                    obj_ceroba_npc.npc_direction = "left";
                    break;
                
                case 3:
                    obj_ceroba_npc.npc_direction = "up";
                    break;
            }
            
            position = 1;
        }
        
        break;
    
    case 25.4:
        if (cutscene_npc_action_sprite(obj_kanako_npc, spr_flashback_kanako_hidepaper, 1, false))
            scene = 25.6;
        
        obj_kanako_npc.down_sprite_idle = spr_kanako_down_talk;
        break;
    
    case 25.6:
        if (cutscene_dialogue())
            scene = 26;
        
        with (msg)
        {
            talker[0] = obj_kanako_npc;
            talker[3] = obj_ceroba_npc;
            talker[5] = obj_kanako_npc;
            talker[8] = obj_ceroba_npc;
            talker[10] = obj_kanako_npc;
            talker[12] = obj_ceroba_npc;
            message[0] = "* So you did it!";
            message[1] = "* Daddy's wish could come#  true, right?";
            message[2] = "* We could make him#  smile! Make him proud of#  us!";
            message[3] = "* But...";
            message[4] = "* He didn't want you to#  be a part of this. And I#  agree.";
            message[5] = "* Let me do it!";
            message[6] = "* I want to make things#  right. Be useful for#  once.";
            message[7] = "* And I trust you to keep#  me safe!";
            message[8] = "* I... I do believe that#  the refined method would#  work.";
            message[9] = "* I just...";
            message[10] = "* Please...";
            message[11] = "* You promised you would#  make his dream come#  true.";
            message[12] = "* I did.";
            message[13] = "* ...";
            prt[0] = spr_portrait_kanako_happy;
            prt[1] = spr_portrait_kanako_eyes_closed_happy;
            prt[2] = spr_portrait_kanako_eyes_closed_happy;
            prt[3] = spr_portrait_ceroba_mourning;
            prt[4] = spr_portrait_ceroba_mourning;
            prt[5] = spr_portrait_kanako_pout;
            prt[6] = spr_portrait_kanako_shot;
            prt[7] = spr_portrait_kanako_eyes_closed_happy;
            prt[8] = spr_portrait_ceroba_pensive;
            prt[9] = spr_portrait_ceroba_sorrowful;
            prt[10] = spr_portrait_kanako_pensive_2;
            prt[11] = spr_portrait_kanako_neutral;
            prt[12] = spr_portrait_ceroba_sorrowful;
            prt[13] = spr_portrait_ceroba_mourning;
            
            switch (message_current)
            {
                case 12:
                    obj_ceroba_npc.npc_direction = "left";
                    break;
            }
            
            position = 1;
        }
        
        break;
    
    case 26:
        scr_audio_fade_out(cutscene_music, 1000);
        cutscene_wait(1);
        break;
    
    case 27:
        scr_radio_restart();
        cutscene_npc_direction(obj_ceroba_npc, "up");
        break;
    
    case 28:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            talker[3] = obj_kanako_npc;
            message[0] = "* Very well.";
            message[1] = "* But I'll make it quick.";
            message[2] = "* I'll ensure your safety#  throughout the#  procedure, alright?";
            message[3] = "* Mm-hmm!";
            message[4] = "* We'll be the heroes of#  the Underground!";
            message[5] = "* All thanks to you and#  daddy!";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_neutral;
            prt[3] = waiting_for_shot;
            prt[4] = spr_portrait_kanako_eyes_closed_happy;
            prt[5] = spr_portrait_kanako_happy;
            position = 1;
        }
        
        break;
    
    case 29:
        cutscene_wait(1);
        break;
    
    case 30:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Heroes, huh?";
            message[1] = "* That has a nice ring to#  it.";
            prt[0] = spr_portrait_ceroba_snarky;
            prt[1] = spr_portrait_ceroba_smile;
            position = 1;
        }
        
        break;
    
    case 31:
        cutscene_wait(0.25);
        break;
    
    case 32:
        cutscene_npc_direction(obj_ceroba_npc, "right");
        break;
    
    case 33:
        cutscene_wait(0.75);
        break;
    
    case 34:
        cutscene_npc_direction(obj_ceroba_npc, "up");
        break;
    
    case 35:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Okay, wait here.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            position = 1;
        }
        
        break;
    
    case 36:
        cutscene_npc_set_sprites(obj_ceroba_npc, spr_ceroba_up_walk, spr_ceroba_right_walk, spr_ceroba_down_walk, spr_ceroba_left_walk, spr_ceroba_up_talk, spr_ceroba_right_talk, spr_ceroba_down_talk, spr_ceroba_left_talk);
        break;
    
    case 37:
        cutscene_npc_walk(obj_ceroba_npc, 186, 159, 3, "y", "right");
        
        if (obj_ceroba_npc.x > obj_kanako_npc.x)
            obj_kanako_npc.npc_direction = "right";
        
        break;
    
    case 38:
        cutscene_wait(0.5);
        break;
    
    case 39:
        cutscene_npc_walk(obj_kanako_npc, obj_kanako_npc.x, 160, 2, "y", "right");
        cutscene_advance();
        break;
    
    case 40:
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_flashback_ceroba_grabsyringe, 1, true, 0);
        
        if (obj_ceroba_npc.image_index >= 39)
        {
            if (obj_flashback_lab_table.image_index == 0)
            {
                obj_flashback_lab_table.image_speed = 1;
                obj_flashback_lab_table.image_index = 1;
            }
        }
        
        break;
    
    case 41:
        cutscene_wait(0.5);
        break;
    
    case 42:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* You will need to stand#  very still for this.";
            message[1] = "* Close your eyes and I#  will begin the#  fusion-extraction.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            position = 1;
        }
        
        break;
    
    case 43:
        cutscene_npc_set_sprites(obj_ceroba_npc, spr_ceroba_up_walk, spr_ceroba_right_walk, spr_ceroba_down_walk, spr_flashback_ceroba_syringewalk, spr_ceroba_up_talk, spr_ceroba_right_talk, spr_ceroba_down_talk, spr_flashback_ceroba_syringe_talk);
        break;
    
    case 44:
        obj_ceroba_npc.action_sprite = false;
        cutscene_npc_walk(obj_ceroba_npc, 160, obj_kanako_npc.y, 2, "x", "left");
        break;
    
    case 45:
        cutscene_npc_set_sprites(obj_kanako_npc, spr_kanako_up_walk, spr_kanako_lookingatceroba_walk, spr_kanako_down_walk, spr_kanako_left_walk, spr_kanako_up_talk, spr_kanako_lookingatceroba_talk, spr_kanako_down_talk, spr_kanako_left_talk);
        break;
    
    case 46:
        cutscene_wait(1);
        break;
    
    case 47:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            talker[2] = obj_kanako_npc;
            message[0] = "* You may feel a pinch or#  two but it'll all be#  over before you know it.";
            message[1] = "* Understood?";
            message[2] = "* Understood!";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_kanako_eyes_closed_happy;
            position = 1;
        }
        
        break;
    
    case 48:
        cutscene_wait(1);
        break;
    
    case 49:
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_flashback_ceroba_kneel, 1, true, 0);
        break;
    
    case 50:
        cutscene_wait(1);
        obj_ceroba_npc.left_sprite_idle = spr_flashback_ceroba_kneel_talk;
        obj_ceroba_npc.npc_direction = "left";
        obj_ceroba_npc.action_sprite = false;
        break;
    
    case 51:
        if (cutscene_dialogue())
            scene = 51.5;
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            talker[1] = obj_kanako_npc;
            message[0] = "* You truly believe in#  this, don't you?";
            message[1] = "* Yeah.";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_kanako_eyes_closed_happy;
            position = 1;
        }
        
        break;
    
    case 51.5:
        if (cutscene_wait(1))
            scene = 52;
        
        break;
    
    case 52:
        obj_kanako_npc.npc_dynamic_depth = false;
        obj_kanako_npc.depth = obj_ceroba_npc.depth - 1;
        cutscene_npc_walk(obj_kanako_npc, 157, 160, 2, "y", "right");
        break;
    
    case 53:
        obj_kanako_npc.image_alpha = 0;
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_flashback_ceroba_hugako, 1, true, 0);
        break;
    
    case 54:
        cutscene_wait(1);
        break;
    
    case 55:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            talker[1] = obj_kanako_npc;
            message[0] = "* Love you lots.";
            message[1] = "* Love you more.";
            prt[0] = spr_portrait_ceroba_mourning;
            prt[1] = spr_portrait_kanako_happy;
            position = 1;
        }
        
        break;
    
    case 56:
        cutscene_wait(0.5);
        break;
    
    case 57:
        if (cutscene_npc_action_sprite(obj_ceroba_npc, spr_flashback_ceroba_hugako_2, 1, true))
        {
            obj_ceroba_npc.sprite_index = spr_flashback_ceroba_kneel;
            obj_ceroba_npc.image_index = obj_ceroba_npc.image_number - 1;
            obj_kanako_npc.image_alpha = 1;
            scene = 57.5;
        }
        
        break;
    
    case 57.5:
        if (cutscene_wait(1))
            scene = 58;
        
        break;
    
    case 58:
        cutscene_npc_walk(obj_kanako_npc, 142, 158, 2, "x", "right");
        break;
    
    case 59:
        cutscene_wait(2);
        break;
    
    case 60:
        obj_kanako_npc.image_alpha = 0;
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_flashback_ceroba_inject, 1, true, 0);
        cutscene_advance();
        break;
    
    case 61:
        with (obj_ceroba_npc)
        {
            if (image_index >= 6)
            {
                image_speed = 0;
                other.scene++;
            }
        }
        
        break;
    
    case 62:
        cutscene_wait(1.5);
        break;
    
    case 63:
        draw_overlay_alpha += 0.1;
        
        if (draw_overlay_alpha >= 1)
            cutscene_advance();
        
        break;
    
    case 64:
        with (obj_ceroba_npc)
        {
            if (image_speed != 1)
            {
                image_speed = 1;
            }
            else if (image_index >= (image_number - 1))
            {
                image_index = image_number - 1;
                image_speed = 0;
                other.scene++;
            }
        }
        
        break;
    
    case 65:
        cutscene_wait(1.5);
        break;
    
    case 66:
        instance_create(obj_kanako_npc.x - 1, obj_kanako_npc.y + 4, obj_flashback_kanako_soul);
        cutscene_advance();
        break;
    
    case 67:
        cutscene_wait(1);
    
    case 68:
        with (obj_flashback_kanako_soul)
        {
            if (image_speed != 1)
            {
                image_speed = 1;
            }
            else if (image_index >= (image_number - 1))
            {
                image_index = image_number - 1;
                image_speed = 0;
                other.scene++;
            }
        }
        
        break;
    
    case 69:
        cutscene_wait(1);
        break;
    
    case 70:
        obj_flashback_kanako_soul.fade_out = true;
        scene++;
        break;
    
    case 71:
        if (!instance_exists(obj_flashback_kanako_soul))
            cutscene_advance();
        
        break;
    
    case 72:
        draw_overlay_alpha -= 0.1;
        
        if (draw_overlay_alpha <= 0)
            cutscene_advance();
        
        break;
    
    case 73:
        cutscene_wait(1);
        break;
    
    case 74:
        if (cutscene_npc_action_sprite(obj_ceroba_npc, spr_flashback_ceroba_uninject, 1, true, 0))
        {
            obj_kanako_npc.image_alpha = 1;
            obj_ceroba_npc.sprite_index = spr_flashback_ceroba_kneel;
            obj_ceroba_npc.image_index = obj_ceroba_npc.image_number - 1;
        }
        
        break;
    
    case 75:
        cutscene_wait(1);
        break;
    
    case 76:
        obj_ceroba_npc.left_sprite_idle = spr_ceroba_left_talk;
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_flashback_ceroba_stand_up, 1, true, 0);
        break;
    
    case 77:
        cutscene_npc_set_sprites(obj_kanako_npc, spr_kanako_up_walk, spr_kanako_right_walk, spr_kanako_down_walk, spr_kanako_left_walk, spr_kanako_up_talk, spr_kanako_right_talk, spr_kanako_down_talk, spr_kanako_left_talk);
        break;
    
    case 78:
        cutscene_wait(2);
        break;
    
    case 79:
        cutscene_npc_walk(obj_ceroba_npc, 175, obj_ceroba_npc.y, 0.5, "x", "right");
        break;
    
    case 80:
        instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y - 40, obj_cutscene_ex);
        obj_ceroba_npc.action_sprite = true;
        obj_ceroba_npc.image_speed = 0;
        obj_ceroba_npc.sprite_index = spr_flashback_ceroba_worried;
        obj_kanako_npc.action_sprite = true;
        obj_kanako_npc.sprite_index = spr_flashback_kanako_hurt;
        cutscene_advance();
        break;
    
    case 81:
        cutscene_sfx_play(snd_monster_damage_hit, 1);
        break;
    
    case 82:
        with (obj_kanako_npc)
        {
            xstart = x;
            ystart = y;
        }
        
        cutscene_advance();
    
    case 83:
        obj_kanako_npc.x = obj_kanako_npc.xstart + irandom_range(-1, 1);
        obj_kanako_npc.y = obj_kanako_npc.ystart + irandom_range(-1, 1);
        
        if (cutscene_wait(1.5))
        {
            instance_destroy(obj_cutscene_ex);
            x = xstart;
            y = ystart;
        }
        
        break;
    
    case 84:
        draw_alpha_black = 1;
        instance_create_depth(obj_kanako_npc.x - 1, obj_kanako_npc.y + 4, obj_kanako_npc.depth - 1, obj_flashback_kanako_soul);
        obj_flashback_kanako_soul.image_index = obj_flashback_kanako_soul.image_number - 1;
        obj_flashback_kanako_soul.image_speed = 0;
        cutscene_advance();
        break;
    
    case 85:
        cutscene_wait(1);
        break;
    
    case 86:
        obj_flashback_kanako_soul.sprite_index = spr_flashback_kanako_soul_broken;
        cutscene_sfx_play(snd_soul_gameover_hit, 1);
        break;
    
    case 87:
        cutscene_wait(1);
        break;
    
    case 88:
        draw_alpha_black -= 0.05;
        
        if (draw_alpha_black <= 0)
        {
            obj_flashback_kanako_soul.fade_out = true;
            draw_alpha_black = 0;
            scene++;
        }
        
        break;
    
    case 89:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* NO!!!";
            prt[0] = spr_portrait_ceroba_surprised;
            position = 1;
        }
        
        break;
    
    case 90:
        cutscene_npc_set_sprites(obj_ceroba_npc, spr_ceroba_up_run, spr_ceroba_right_run, spr_ceroba_down_run, spr_ceroba_left_run, spr_ceroba_up_talk, spr_ceroba_right_talk, spr_ceroba_down_talk, spr_ceroba_left_talk);
        break;
    
    case 91:
        obj_kanako_npc.sprite_index = spr_flashback_kanako_hurt_2;
        obj_kanako_npc.image_speed = 1;
        
        if (obj_kanako_npc.image_index >= (obj_kanako_npc.image_number - 1))
        {
            obj_kanako_npc.image_speed = 0;
            obj_kanako_npc.image_index = obj_kanako_npc.image_number - 1;
            scene++;
        }
        
        break;
    
    case 92:
        obj_ceroba_npc.x = obj_kanako_npc.x;
        obj_ceroba_npc.y = obj_kanako_npc.y;
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_flashback_kanako_falls, 1, true, 0);
        obj_kanako_npc.image_alpha = 0;
        break;
    
    case 93:
        cutscene_wait(1);
        break;
    
    case 94:
        cutscene_npc_set_sprites(obj_ceroba_npc, spr_ceroba_up_run, spr_ceroba_right_run, spr_ceroba_down_run, spr_ceroba_left_run, spr_ceroba_up_talk, spr_ceroba_right_talk, spr_flashback_kanako_falls_talk, spr_ceroba_left_talk);
        obj_ceroba_npc.npc_direction = "down";
        obj_ceroba_npc.action_sprite = false;
        break;
    
    case 95:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* No no no no no no-";
            message[1] = "* Why didn't it work!?";
            message[2] = "* Kanako, wake up.";
            message[3] = "* Wake up right now!";
            message[4] = "* Mommy's here, come on! ";
            message[5] = "* Hey!";
            prt[0] = spr_portrait_ceroba_nervous;
            prt[1] = spr_portrait_ceroba_nervous;
            prt[2] = spr_portrait_ceroba_wailing;
            prt[3] = spr_portrait_ceroba_wailing;
            prt[4] = spr_portrait_ceroba_wailing;
            prt[5] = spr_portrait_ceroba_wailing;
            position = 1;
        }
        
        break;
    
    case 96:
        if (cutscene_wait(1))
        {
        }
        
        break;
    
    case 97:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* What...";
            skippable = false;
            position = 1;
        }
        
        draw_alpha = lerp(draw_alpha, 1, 0.05);
        
        if (draw_alpha >= 0.99)
        {
            draw_alpha = 1;
            instance_destroy(obj_dialogue);
            global.dialogue_open = false;
            scene++;
        }
        
        break;
    
    case 98:
        cutscene_wait(1);
        break;
    
    case 99:
        if (!instance_exists(obj_ceroba_phase_2_overworld_cutscene_dialogue_chujin))
        {
            msg = instance_create_depth(0, 0, -800, obj_ceroba_phase_2_overworld_cutscene_dialogue_chujin);
            scene++;
        }
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "        What have I done?";
            skippable = false;
            message_timer = 60;
            position = 1;
        }
        
        break;
    
    case 100:
        if (!global.dialogue_open)
            cutscene_wait(1);
        
        break;
    
    case 101:
        global.hotland_flag[2] = 3;
        global.battle_enemy_name = "ceroba";
        global.battling_boss = true;
        global.battle_start = true;
        global.sound_carry_overworld = false;
        scr_battle_save();
        room_goto(rm_battle);
        scene++;
        break;
    
    case 102:
        if (room != rm_battle)
            exit;
        
        if (instance_exists(obj_battle_fade_in_screen))
        {
            instance_destroy(obj_battle_fade_in_screen);
            instance_create_depth(0, 0, -9999, obj_battle_fade_in_screen_white);
        }
        
        instance_destroy();
        break;
}
