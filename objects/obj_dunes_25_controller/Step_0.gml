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
        cutscene_npc_walk(obj_player_npc, 200, 270, 2, "y", "up");
        scene++;
        break;
    
    case 2:
        cutscene_wait(1.5);
        break;
    
    case 3:
        obj_determination.image_alpha = 0;
        var flowey = instance_create(obj_determination.x, obj_determination.y, obj_flowey_npc);
        flowey.image_alpha = 0;
        scene++;
        break;
    
    case 4:
        obj_flowey_npc.image_alpha = 1;
        cutscene_npc_action_sprite(obj_flowey_npc, spr_floweyrise, 0.2, false);
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Howdy!";
            prt[0] = flowey_nice;
        }
        
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        cutscene_npc_direction(obj_flowey_npc, "up");
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
            talker[0] = obj_flowey_npc;
            message[0] = "* Gee, wouldja look at#  that...\t";
            message[1] = "* I can almost see the#  King's Castle from here!";
            prt[0] = flowey_nice;
            prt[1] = flowey_nice;
        }
        
        break;
    
    case 13:
        cutscene_wait(0.5);
        break;
    
    case 14:
        cutscene_npc_direction(obj_flowey_npc, "down");
        break;
    
    case 15:
        if (cutscene_dialogue())
        {
            if (global.route == 3)
                cutscene_advance(22);
        }
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            color = true;
            col_modif[0] = c_red;
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
            prt[0] = flowey_niceside;
            prt[1] = spr_flowey_meh;
            prt[2] = flowey_plains;
            prt[3] = flowey_nice;
            prt[4] = flowey_niceside;
            prt[5] = flowey_wink;
            prt[6] = flowey_nice;
            prt[7] = flowey_plains;
            prt[8] = flowey_nice;
            
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
                prt[4] = flowey_niceside;
                prt[5] = flowey_nice;
                prt[6] = flowey_smirk;
                prt[7] = flowey_smirk;
                prt[8] = flowey_nice;
                prt[9] = flowey_niceside;
                prt[10] = flowey_nice;
                prt[11] = flowey_plain;
                prt[12] = flowey_worried;
                prt[13] = flowey_plains;
                prt[14] = flowey_nice;
                prt[15] = flowey_worried;
                prt[16] = flowey_niceside;
                prt[17] = flowey_plains;
                prt[18] = flowey_plain;
                prt[19] = flowey_nice;
            }
        }
        
        break;
    
    case 16:
        cutscene_npc_direction(obj_flowey_npc, "up");
        break;
    
    case 17:
        cutscene_wait(0.5);
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Boss Monsters know how#  to cling to life, that's#  for sure.";
            prt[0] = flowey_plains;
        }
        
        break;
    
    case 19:
        cutscene_wait(1);
        break;
    
    case 20:
        cutscene_npc_direction(obj_flowey_npc, "down");
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Hey, don't let all that#  info scare ya!";
            message[1] = "* Immortal doesn't mean#  invincible!";
            message[2] = "* And still, a human SOUL#  is more powerful than a#  Boss Monster SOUL.";
            message[3] = "* ASGORE may seem#  intimidating but it's#  all show.";
            message[4] = "* Deep down, he's afraid#  of you. A true pushover.";
            message[5] = "* Anyway, just thought#  I'd prepare my pal for#  what's to come!";
            prt[0] = flowey_nice;
            prt[1] = flowey_wink;
            prt[2] = flowey_nice;
            prt[3] = flowey_nice;
            prt[4] = flowey_smirk;
            prt[5] = flowey_nice;
        }
        
        break;
    
    case 22:
        global.dunes_flag[54] = 1;
        current_save_number = 1;
        scr_determine_save_area();
        
        if (global.flowey_save_number < current_save_number)
            global.flowey_save_number = current_save_number;
        
        box = instance_create(__view_get(e__VW.XView, 0) + 160, __view_get(e__VW.YView, 0) + 120, obj_savebox);
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
            
            if (cutscene_npc_action_sprite(obj_flowey_npc, spr_floweyleave, 0.2))
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
