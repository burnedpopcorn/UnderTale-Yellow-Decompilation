if (live_call())
    return global.live_result;

switch (scene)
{
    case -1:
        cutscene_camera_freeze(720, 440);
        break;
    
    case 0:
        cutscene_wait(2);
        break;
    
    case 1:
        audio_resume_sound(obj_radio.current_song);
        cutscene_advance();
        break;
    
    case 2:
        if (draw_alpha > 0)
            draw_alpha -= 0.05;
        else
            cutscene_advance();
        
        break;
    
    case 3:
        instance_create(camera_get_view_x(view_camera[0]) + 320 + 40, obj_pl.y, obj_ed_npc);
        cutscene_advance();
        break;
    
    case 4:
        cutscene_npc_set_sprites(obj_ed_npc, spr_ed_up_walk_clover, spr_ed_right_walk_clover, spr_ed_down_walk_clover, spr_ed_left_walk_clover, spr_ed_up_walk_clover, spr_ed_right_walk_clover, spr_ed_down_walk_clover, spr_ed_left_walk_clover);
        break;
    
    case 5:
        cutscene_npc_walk(obj_ed_npc, 720, obj_ed_npc.y, 3, "x", "up");
        break;
    
    case 6:
        if (cutscene_npc_action_sprite(obj_ed_npc, spr_ed_place_clover, 0.3, false, 0, snd_gun_hit, 6))
        {
            cutscene_npc_set_sprites(obj_ed_npc, spr_ed_up_walk, spr_ed_right_walk, spr_ed_down_walk, spr_ed_left_walk, spr_ed_up_talk, spr_ed_right_talk, spr_ed_down_talk, spr_ed_left_talk);
            scene -= 1;
        }
        
        break;
    
    case 7:
        cutscene_instance_create(obj_ed_npc.x, obj_ed_npc.y - 10, obj_player_npc);
        break;
    
    case 8:
        cutscene_npc_direction(obj_player_npc, "down");
        break;
    
    case 9:
        cutscene_npc_walk(obj_ed_npc, 660, 500, 3, "y", "right");
        break;
    
    case 10:
        var camera_y = camera_get_view_y(view_camera[0]);
        instance_create(680, camera_y - 30, obj_mooch_npc);
        instance_create(780, camera_y - 50, obj_ace_npc);
        instance_create(630, camera_y - 70, obj_moray_npc);
        cutscene_advance();
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ed_npc;
            talker[1] = obj_mooch_npc;
            message[0] = "* Ugh... I'm never#  travelin' via laundry#  chute again!";
            message[1] = "* Ed! You're back!";
            prt[0] = spr_portrait_ed_mutter;
        }
        
        break;
    
    case 12:
        cutscene_npc_direction(obj_ed_npc, "up");
        break;
    
    case 13:
        cutscene_npc_direction(obj_player_npc, "up");
        break;
    
    case 14:
        cutscene_npc_walk(obj_mooch_npc, 680, 440, 4, "y", "down");
        cutscene_advance();
        break;
    
    case 15:
        cutscene_wait(0.5);
        break;
    
    case 16:
        cutscene_npc_walk(obj_ace_npc, 760, 440, 4, "y", "down");
        cutscene_advance();
        break;
    
    case 17:
        cutscene_npc_walk(obj_moray_npc, 720, 430, 4, "y", "down");
        cutscene_advance();
        break;
    
    case 18:
        if (obj_mooch_npc.npc_arrived)
            cutscene_sfx_play(snd_playerjump, 1);
        
        break;
    
    case 19:
        cutscene_npc_path_start(1165, 58, 3);
        break;
    
    case 20:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_mooch_npc;
            message[0] = "* And Clover too?";
            prt[0] = spr_portrait_mooch_normal;
            position = 0;
        }
        
        break;
    
    case 21:
        if (!obj_moray_npc.npc_arrived || !obj_ace_npc.npc_arrived)
            exit;
        
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_moray_npc;
            talker[2] = obj_ed_npc;
            talker[3] = obj_moray_npc;
            talker[5] = obj_ace_npc;
            talker[6] = obj_ed_npc;
            message[0] = "* I was worried sick#  about you!";
            message[1] = "* Where's Star?";
            message[2] = "* Ceroba ran away so he#  chased after her.";
            message[3] = "* Alone!?";
            message[4] = "* Why did you let him do#  that!?";
            message[5] = "* Star knows Ceroba more#  than anyone, Moray.";
            message[6] = "* Well... I'm not so sure#  of that anymore.";
            prt[0] = spr_portrait_moray_plain;
            prt[1] = spr_portrait_moray_plain;
            prt[2] = spr_portrait_ed_mutter;
            prt[3] = spr_portrait_moray_sweat;
            prt[4] = spr_portrait_moray_shaded;
            prt[5] = spr_portrait_ace_concealed;
            prt[6] = spr_portrait_ed_mutter;
            
            if (message_current == 5)
                obj_ace_npc.npc_direction = "left";
            
            if (message_current == 6)
                obj_ace_npc.npc_direction = "down";
            
            position = 0;
        }
        
        break;
    
    case 22:
        var camera_y = camera_get_view_y(view_camera[0]);
        instance_create(720, camera_y + 240 + 40, obj_martlet_npc);
        cutscene_advance();
        break;
    
    case 23:
        cutscene_npc_walk(obj_martlet_npc, 720, 540, 4, "y", "up");
        break;
    
    case 24:
        obj_player_npc.npc_direction = "down";
        obj_ed_npc.npc_direction = "down";
        scene++;
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            talker[5] = obj_martlet_npc;
            talker[12] = obj_martlet_npc;
            talker[15] = obj_martlet_npc;
            talker[3] = obj_ed_npc;
            talker[8] = obj_ed_npc;
            talker[13] = obj_ed_npc;
            talker[4] = obj_moray_npc;
            message[0] = "* Clover!";
            message[1] = "* Moray messaged me about#  you being in danger...";
            message[2] = "* ...so I dropped what I#  was doing and flew over#  here!";
            message[3] = "* Why'd you get Feathers#  involved, Moray!?";
            message[4] = "* I just thought she#  deserved to know... She#  can help.";
            message[5] = "* Thank you for reaching#  out.";
            message[6] = "* I heard that you found#  something in Ceroba's#  old house?";
            message[7] = "* What was it?";
            message[8] = "* We didn't have the time#  to look over everythin'#  closely but...";
            message[9] = "* It raised some serious#  concerns.";
            message[10] = "* Papers... tapes...#  belonging to Chujin.";
            message[11] = "* All way too scientific#  for me.";
            message[12] = "* Clover and I can scope#  it out.";
            message[13] = "* No way! I was told to#  keep Clover here.";
            message[14] = "* There's a potential#  threat to their life!";
            message[15] = "* There's always a#  potential threat to#  their life.";
            message[16] = "* If anyone can fix this,#  it's Clover.";
            prt[0] = spr_martlet_head_surprised;
            prt[1] = spr_martlet_head_downer;
            prt[2] = spr_martlet_head_melancholic;
            prt[3] = spr_portrait_ed_normal;
            prt[4] = spr_portrait_moray_plain;
            prt[5] = spr_martlet_head_moderate;
            prt[6] = spr_martlet_head_regular;
            prt[7] = spr_martlet_head_regular;
            prt[8] = spr_portrait_ed_mutter;
            prt[9] = spr_portrait_ed_mad;
            prt[10] = spr_portrait_ed_normal;
            prt[11] = spr_portrait_ed_mutter;
            prt[12] = spr_martlet_head_regular;
            prt[13] = spr_portrait_ed_mad;
            prt[14] = spr_portrait_ed_mad;
            prt[15] = spr_martlet_head_angry;
            prt[16] = spr_martlet_head_determined;
            
            if (message_current == 3)
                obj_ed_npc.npc_direction = "up";
            
            if (message_current == 5)
                obj_ed_npc.npc_direction = "down";
        }
        
        break;
    
    case 26:
        cutscene_wait(0.75);
        break;
    
    case 27:
        cutscene_npc_direction(obj_ed_npc, "left");
        break;
    
    case 28:
        cutscene_audio_fade(cutscene_music, 0, 1500, 0.15, false, true);
        break;
    
    case 29:
        cutscene_wait(0.5);
        break;
    
    case 30:
        global.dunes_flag[41] = 1;
        scr_radio_restart();
        cutscene_advance();
        break;
    
    case 31:
        cutscene_npc_direction(obj_ed_npc, "down");
        break;
    
    case 32:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[3] = obj_martlet_npc;
            talker[6] = obj_martlet_npc;
            talker[0] = obj_ed_npc;
            talker[4] = obj_ed_npc;
            message[0] = "* Fine... Just stay on#  track.";
            message[1] = "* I can't have them#  runnin' away or nothin'.";
            message[2] = "* You know the way?";
            message[3] = "* I believe so.";
            message[4] = "* Okay, we'll meet you#  there.";
            message[5] = "* I still have to finish#  explainin' everythin' to#  the group.";
            message[6] = "* Until then.";
            message[7] = "* Come on, Clover.";
            prt[0] = spr_portrait_ed_mutter;
            prt[1] = spr_portrait_ed_mad;
            prt[2] = spr_portrait_ed_normal;
            prt[3] = spr_martlet_head_moderate;
            prt[4] = spr_portrait_ed_normal;
            prt[5] = spr_portrait_ed_normal;
            prt[6] = spr_martlet_head_moderate;
            prt[7] = spr_martlet_head_regular;
        }
        
        break;
    
    case 33:
        cutscene_npc_walk(obj_player_npc, obj_martlet_npc.x, obj_martlet_npc.y - 30, 3, "y", "down");
        break;
    
    case 34:
        cutscene_wait(0.5);
        break;
    
    case 35:
        cutscene_npc_walk(obj_martlet_npc, obj_martlet_npc.x, 700, 3, "y", "down");
        scene++;
        break;
    
    case 36:
        cutscene_npc_walk(obj_player_npc, obj_player_npc.x, 700, 3, "y", "down");
        scene++;
        break;
    
    case 37:
        cutscene_wait(2.5);
        break;
    
    case 38:
        persistent = true;
        cutscene_change_room(rm_dunes_36, 600, 30, 0.03);
        break;
    
    case 39:
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        obj_player_npc.npc_direction = "down";
        instance_create(obj_player_npc.x, obj_player_npc.y + 30, obj_martlet_npc);
        obj_martlet_npc.npc_direction = "down";
        obj_martlet_npc.can_walk = false;
        cutscene_advance();
        break;
    
    case 40:
        cutscene_npc_walk(obj_martlet_npc, obj_martlet_npc.x, 140, 3, "y", "down");
        cutscene_npc_walk(obj_player_npc, obj_player_npc.x, 110, 3, "y", "down");
        scene++;
        break;
    
    case 41:
        if (obj_martlet_npc.npc_arrived && obj_player_npc.npc_arrived)
            cutscene_wait(0.5);
        
        break;
    
    case 42:
        cutscene_npc_direction(obj_martlet_npc, "up");
        break;
    
    case 43:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Hey, before we go, I#  need to apologize.";
            message[1] = "* I shouldn't have let#  Ceroba take you.";
            message[2] = "* I just... I really#  thought I could trust#  her. We all did.";
            message[3] = "* And what I had to take#  care of in Snowdin was#  far too impor...";
            message[4] = "* You know what? Doesn't#  matter anymore.";
            message[5] = "* Let's focus on what Ed#  told us.";
            message[6] = "* Concerns regarding#  Chujin he said?";
            message[7] = "* Surely it's nothing...#  right? ";
            message[8] = "* Chujin was almost like#  a father to me.";
            message[9] = "* I don't know where I'd#  be in life without him.";
            prt[0] = spr_martlet_head_downer;
            prt[1] = spr_martlet_head_sad;
            prt[2] = spr_martlet_head_sad;
            prt[3] = spr_martlet_head_downer;
            prt[4] = spr_martlet_head_moderate;
            prt[5] = spr_martlet_head_melancholic;
            prt[6] = spr_martlet_head_moderate;
            prt[7] = spr_martlet_head_wondering;
            prt[8] = spr_martlet_head_moderate;
            prt[9] = spr_martlet_head_downer;
        }
        
        break;
    
    case 44:
        cutscene_npc_direction(obj_martlet_npc, "left");
        break;
    
    case 45:
        cutscene_wait(1);
        break;
    
    case 46:
        cutscene_npc_direction(obj_martlet_npc, "up");
        break;
    
    case 47:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* I'll... let you lead.#  Just head to Oasis#  Valley.";
            message[1] = "* Nice to see you again,#  by the way.";
            prt[0] = spr_martlet_head_downer;
            prt[1] = spr_martlet_head_melancholic;
        }
        
        break;
    
    case 48:
        cutscene_npc_walk(obj_martlet_npc, obj_player_npc.x, obj_player_npc.y - 20, 3, "x", "down");
        break;
    
    case 49:
        scr_actor_into_follower(1164, 1170);
        global.party_member = obj_martlet_follower;
        obj_martlet_follower.dir_new[1] = 270;
        obj_martlet_follower.npc_reset = true;
        cutscene_advance();
        break;
    
    case 50:
        instance_destroy(obj_player_npc);
        cutscene_end();
        break;
}
