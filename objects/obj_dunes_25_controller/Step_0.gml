var flowey;

switch (scene)
{
    case 0:
        if (obj_pl.y <= 320)
        {
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(1168, 200, 270, 2, "y", "up");
        scene++;
        break;
    
    case 2:
        cutscene_wait(1.5);
        break;
    
    case 3:
        obj_determination.image_alpha = 0;
        flowey = instance_create(obj_determination.x, obj_determination.y, obj_flowey_npc);
        flowey.image_alpha = 0;
        scene++;
        break;
    
    case 4:
        obj_flowey_npc.image_alpha = 1;
        cutscene_npc_action_sprite(3194, 242, 0.2, false);
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Howdy!";
            prt[0] = 348;
        }
        
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        cutscene_npc_direction(3194, "up");
        break;
    
    case 9:
        cutscene_wait(1);
        break;
    
    case 10:
        cutscene_camera_move(obj_pl.x, 180, 1);
        break;
    
    case 11:
        cutscene_wait(1);
        break;
    
    case 12:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Gee, wouldja look at#  that...\t";
            message[1] = "* I can almost see the#  King's Castle from here!";
            prt[0] = 348;
            prt[1] = 348;
        }
        
        break;
    
    case 13:
        cutscene_wait(0.5);
        break;
    
    case 14:
        cutscene_npc_direction(3194, "down");
        break;
    
    case 15:
        if (cutscene_dialogue())
        {
            if (global.route == 3)
                cutscene_advance(22);
        }
        
        with (msg)
        {
            talker[0] = 3194;
            color = true;
            col_modif[0] = 255;
            message[0] = "* Heh, ASGORE...";
            message[1] = "* Monsters shower him#  with praise but it's#  totally overblown.";
            message[2] = "* See, he's what they#  call a 'Boss Monster'.";
            message_col[2][0] = "                     #         'Boss Monster' ";
            message[3] = "* Means he has special#  traits; more power than#  others...";
            message[4] = "* When you take him down,#  his SOUL will stay#  intact.";
            message[5] = "* But only for a moment#  before... BOOM! You win.";
            message[6] = "* I've heard the guy's#  immortal too. Can't age#  a second!";
            message[7] = "* At least, not anymore.\t";
            message[8] = "* Wild, huh?";
            prt[0] = 347;
            prt[1] = 3640;
            prt[2] = 353;
            prt[3] = 348;
            prt[4] = 347;
            prt[5] = 3251;
            prt[6] = 348;
            prt[7] = 353;
            prt[8] = 348;
            
            if (global.route == 3)
            {
                ch_msg = 10;
                ch[1] = "...";
                message[4] = "* When you inevitably#  kill him, his SOUL will#  stay intact.";
                message[5] = "* But only for a moment#  before... BOOM! It's#  gone forever.";
                message[6] = "* I'll let you in on a#  little secret though...";
                message[7] = "* In that short window of#  time, you can reach out#  and take his SOUL.";
                message[8] = "* With its power, you'll#  be able to cross the#  barrier and return home.";
                message[9] = "* Your back turned on the#  Underground, your duty#  fulfilled.";
                message[10] = "* Doesn't that sound#  nice?";
                message[11] = "* Yes? No?";
                message[12] = "* Come on, gimme#  something!\t";
                message[13] = "* ...";
                message[14] = "* Fine.";
                message[15] = "* You're becoming harder#  and harder to read, you#  know that?\t";
                message[16] = "* A little too “broody”#  for my taste too.";
                message[17] = "* Sigh...";
                message[18] = "* Just keep your eyes on#  the Castle, okay?";
                message[19] = "* Okay.";
                prt[4] = 347;
                prt[5] = 348;
                prt[6] = 349;
                prt[7] = 349;
                prt[8] = 348;
                prt[9] = 347;
                prt[10] = 348;
                prt[11] = 352;
                prt[12] = 357;
                prt[13] = 353;
                prt[14] = 348;
                prt[15] = 357;
                prt[16] = 347;
                prt[17] = 353;
                prt[18] = 352;
                prt[19] = 348;
            }
        }
        
        break;
    
    case 16:
        cutscene_npc_direction(3194, "up");
        break;
    
    case 17:
        cutscene_wait(0.5);
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Boss Monsters know how#  to cling to life, that's#  for sure.";
            prt[0] = 353;
        }
        
        break;
    
    case 19:
        cutscene_wait(1);
        break;
    
    case 20:
        cutscene_npc_direction(3194, "down");
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Hey, don't let all that#  info scare ya!";
            message[1] = "* Immortal doesn't mean#  invincible!";
            message[2] = "* And still, a human SOUL#  is more powerful than a#  Boss Monster SOUL.";
            message[3] = "* ASGORE may seem#  intimidating but it's#  all show.";
            message[4] = "* Deep down, he's afraid#  of you. A true pushover.";
            message[5] = "* Anyway, just thought#  I'd prepare my pal for#  what's to come!";
            prt[0] = 348;
            prt[1] = 3251;
            prt[2] = 348;
            prt[3] = 348;
            prt[4] = 349;
            prt[5] = 348;
        }
        
        break;
    
    case 22:
        global.dunes_flag[54] = 1;
        current_save_number = 1;
        scr_determine_save_area();
        
        if (global.flowey_save_number < current_save_number)
            global.flowey_save_number = current_save_number;
        
        box = instance_create(__view_get(e__VW.XView, 0) + 160, __view_get(e__VW.YView, obj_quote_battle_ceroba_outro_4) + 120, obj_savebox);
        audio_play_sound(snd_mainmenu_select, 1, 0);
        global.menu_sprite = spr_savescreen_dunes;
        scene++;
        break;
    
    case 23:
        if (instance_exists(obj_savebox))
        {
            exit;
        }
        else
        {
            global.cutscene = true;
            
            if (cutscene_npc_action_sprite(3194, 245, 0.2))
            {
                instance_destroy(obj_flowey_npc);
                obj_determination.image_alpha = 1;
            }
        }
        
        break;
    
    case 24:
        cutscene_wait(1);
        break;
    
    case 25:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 26:
        cutscene_end();
        cutscene_camera_reset();
        break;
}
