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
            talker[0] = 1161;
            talker[4] = 92;
            talker[5] = 1161;
            talker[6] = 92;
            talker[10] = 1161;
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
            prt[0] = 398;
            prt[1] = 372;
            prt[2] = 372;
            prt[3] = 398;
            prt[4] = 2212;
            prt[5] = 3757;
            prt[6] = 1544;
            prt[7] = 2623;
            prt[8] = 3006;
            prt[9] = 3006;
            prt[10] = 3757;
        }
        
        break;
    
    case 4:
        cutscene_npc_walk(1161, 186, 119, 3, "x", "left");
        break;
    
    case 5:
        cutscene_npc_action_sprite(1161, 847, 1, true, 0);
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
            talker[0] = 1161;
            talker[2] = 92;
            talker[4] = 1161;
            talker[5] = 92;
            talker[9] = 1161;
            talker[13] = 92;
            talker[16] = 1161;
            talker[17] = 92;
            talker[18] = 1161;
            talker[19] = 92;
            talker[22] = 1161;
            talker[23] = 92;
            talker[26] = 1161;
            talker[29] = 92;
            talker[31] = 1161;
            talker[32] = 92;
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
            prt[0] = 372;
            prt[1] = 372;
            prt[2] = 3002;
            prt[3] = 3002;
            prt[4] = 3757;
            prt[5] = 2623;
            prt[6] = 3002;
            prt[7] = 1474;
            prt[8] = 1474;
            prt[9] = 609;
            prt[10] = 609;
            prt[11] = 609;
            prt[12] = 3757;
            prt[13] = 1544;
            prt[14] = 1474;
            prt[15] = 3002;
            prt[16] = 370;
            prt[17] = 1544;
            prt[18] = 370;
            prt[19] = 3002;
            prt[20] = 1544;
            prt[21] = 2623;
            prt[22] = 2987;
            prt[23] = 1544;
            prt[24] = 3002;
            prt[25] = 1474;
            prt[26] = 2987;
            prt[27] = 2987;
            prt[28] = 2987;
            prt[29] = 379;
            prt[30] = 3621;
            prt[31] = 2987;
            prt[32] = 379;
            prt[33] = 3002;
            
            if (message_current == 2 && other.cutscene_music == 0)
                other.cutscene_music = audio_play_sound(mus_tucked_in, 1, 1);
        }
        
        break;
    
    case 9:
        obj_chujin_npc.image_alpha = 0;
        cutscene_npc_action_sprite(1161, 3625, 1, true, 0);
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
