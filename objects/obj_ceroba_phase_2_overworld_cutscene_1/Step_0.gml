if (live_call())
    return global.live_result;

switch (scene)
{
    case -1:
        if (room == rm_battle)
            exit;
        
        cutscene_wait(3);
        break;
    
    case 0:
        instance_create_depth(250, 119, 0, obj_ceroba_npc);
        obj_ceroba_npc.npc_direction = "up";
        instance_create_depth(137, 79, 0, obj_chujin_npc);
        obj_chujin_npc.npc_direction = "down";
        cutscene_advance();
        break;
    
    case 1:
        draw_alpha = lerp(draw_alpha, 0, 0.1);
        
        if (draw_alpha <= 0.01)
        {
            draw_alpha = 0;
            scene++;
        }
        
        break;
    
    case 2:
        cutscene_wait(1);
        break;
    
    case 3:
        obj_ceroba_npc.npc_direction = "left";
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            talker[4] = obj_chujin_npc;
            talker[5] = obj_ceroba_npc;
            talker[6] = obj_chujin_npc;
            talker[10] = obj_ceroba_npc;
            message[0] = "* What would you like to#  wear tomorrow, honey?";
            message[1] = "* Solomon and Crestina#  are paying a visit, and#  bringing food too.";
            message[2] = "* I'll help you up and we#  can all enjoy a picnic#  on the front porch.";
            message[3] = "* How's that sound?";
            message[4] = "* Ceroba.";
            message[5] = "* ...Yes?";
            message[6] = "* I don't...";
            message[7] = "* ...";
            message[8] = "* Heh.";
            message[9] = "* This is all so pitiful.";
            message[10] = "* Hey... don't say that.";
            prt[0] = spr_portrait_ceroba_happy;
            prt[1] = spr_portrait_ceroba_smile;
            prt[2] = spr_portrait_ceroba_smile;
            prt[3] = spr_portrait_ceroba_happy;
            prt[4] = spr_portrait_chujin_neutral;
            prt[5] = spr_portrait_ceroba_pensive;
            prt[6] = spr_portrait_chujin_down_talk;
            prt[7] = spr_portrait_chujin_big_sad;
            prt[8] = spr_portrait_chujin_smirk;
            prt[9] = spr_portrait_chujin_smirk;
            prt[10] = spr_portrait_ceroba_pensive;
        }
        
        break;
    
    case 4:
        cutscene_npc_walk(obj_ceroba_npc, 186, 119, 3, "x", "left");
        break;
    
    case 5:
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_flashback_ceroba_sit, 1, true, 0);
        break;
    
    case 6:
        obj_ceroba_npc.left_sprite_idle = spr_flashback_ceroba_sit_talk;
        obj_ceroba_npc.action_sprite = false;
        cutscene_advance();
        break;
    
    case 7:
        cutscene_wait(0.75);
        break;
    
    case 8:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            talker[2] = obj_chujin_npc;
            talker[4] = obj_ceroba_npc;
            talker[5] = obj_chujin_npc;
            talker[9] = obj_ceroba_npc;
            talker[13] = obj_chujin_npc;
            talker[16] = obj_ceroba_npc;
            talker[17] = obj_chujin_npc;
            talker[18] = obj_ceroba_npc;
            talker[19] = obj_chujin_npc;
            talker[22] = obj_ceroba_npc;
            talker[23] = obj_chujin_npc;
            talker[26] = obj_ceroba_npc;
            talker[29] = obj_chujin_npc;
            talker[31] = obj_ceroba_npc;
            talker[32] = obj_chujin_npc;
            message[0] = "* We don't need to have#  anyone over.";
            message[1] = "* It could just be us.";
            message[2] = "* A picnic sounds lovely.";
            message[3] = "* I want you and Kanako#  to have one, surrounded#  by your closest friends.";
            message[4] = "* What are you saying?";
            message[5] = "* I...";
            message[6] = "* Gosh...";
            message[7] = "* You know...";
            message[8] = "* I never was afraid of#  it all my life but now#  that it's so close...";
            message[9] = "* No...";
            message[10] = "* Shut up. Stop it.";
            message[11] = "* Say it like it is or#  don't say anything.";
            message[12] = "* I can't do this. Not#  now.";
            message[13] = "* I'm sorry.";
            message[14] = "* There's something I#  must tell you.";
            message[15] = "* My work... We never#  talked about it much,#  did we?";
            message[16] = "* We didn't.";
            message[17] = "* When I built this#  house, I installed a#  basement.";
            message[18] = "* What...? ";
            message[19] = "* The entrance is under#  the kotatsu. Always has#  been.";
            message[20] = "* There, I worked towards#  a project.";
            message[21] = "* Something much bigger#  than myself. Bigger than#  all of us.";
            message[22] = "* I don't understand...";
            message[23] = "* I recorded a message#  for you.";
            message[24] = "* When I'm gone, I would#  like you to view it.";
            message[25] = "* Will you do that for#  me?";
            message[26] = "* ...";
            message[27] = "* I will.";
            message[28] = "* I promise you, I will.";
            message[29] = "* ...";
            message[30] = "* I haven't seen tears#  from you since we met at#  the crossing.";
            message[31] = "* I save them for the#  moments that matter.";
            message[32] = "* I'm glad...";
            message[33] = "* Because this moment#  matters a lot to me.";
            prt[0] = spr_portrait_ceroba_smile;
            prt[1] = spr_portrait_ceroba_smile;
            prt[2] = spr_portrait_chujin_content;
            prt[3] = spr_portrait_chujin_content;
            prt[4] = spr_portrait_ceroba_pensive;
            prt[5] = spr_portrait_chujin_big_sad;
            prt[6] = spr_portrait_chujin_content;
            prt[7] = spr_portrait_chujin_sad_eye;
            prt[8] = spr_portrait_chujin_sad_eye;
            prt[9] = spr_portrait_ceroba_sorrowful;
            prt[10] = spr_portrait_ceroba_sorrowful;
            prt[11] = spr_portrait_ceroba_sorrowful;
            prt[12] = spr_portrait_ceroba_pensive;
            prt[13] = spr_portrait_chujin_down_talk;
            prt[14] = spr_portrait_chujin_sad_eye;
            prt[15] = spr_portrait_chujin_content;
            prt[16] = spr_portrait_ceroba_neutral;
            prt[17] = spr_portrait_chujin_down_talk;
            prt[18] = spr_portrait_ceroba_neutral;
            prt[19] = spr_portrait_chujin_content;
            prt[20] = spr_portrait_chujin_down_talk;
            prt[21] = spr_portrait_chujin_big_sad;
            prt[22] = spr_portrait_ceroba_mourning;
            prt[23] = spr_portrait_chujin_down_talk;
            prt[24] = spr_portrait_chujin_content;
            prt[25] = spr_portrait_chujin_sad_eye;
            prt[26] = spr_portrait_ceroba_mourning;
            prt[27] = spr_portrait_ceroba_mourning;
            prt[28] = spr_portrait_ceroba_mourning;
            prt[29] = spr_portrait_chujin_sad_eye_smirk;
            prt[30] = spr_portrait_chujin_eye_smirk;
            prt[31] = spr_portrait_ceroba_mourning;
            prt[32] = spr_portrait_chujin_sad_eye_smirk;
            prt[33] = spr_portrait_chujin_content;
            
            if (message_current == 2 && other.cutscene_music == 0)
                other.cutscene_music = audio_play_sound(mus_tucked_in, 1, 1);
        }
        
        break;
    
    case 9:
        obj_chujin_npc.image_alpha = 0;
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_flashback_ceroba_hold_chujin, 1, true, 0);
        break;
        break;
    
    case 10:
        cutscene_wait(0.5);
        break;
    
    case 11:
        camera_set_view_speed(view_camera[0], -1, -1);
        cutscene_camera_move(0, 400, 2);
        break;
    
    case 12:
        if (cutscene_wait(1.5))
            scr_audio_fade_out(cutscene_music, 1000);
        
        break;
    
    case 13:
        draw_alpha = lerp(draw_alpha, 1, 0.05);
        
        if (draw_alpha >= 0.99)
        {
            draw_alpha = 1;
            scene++;
        }
        
        break;
    
    case 14:
        global.hotland_flag[2] = 2;
        global.battle_enemy_name = "ceroba";
        global.battling_boss = true;
        global.battle_start = true;
        global.sound_carry_overworld = false;
        scr_battle_save();
        room_goto(rm_battle);
        scene++;
        break;
    
    case 15:
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
