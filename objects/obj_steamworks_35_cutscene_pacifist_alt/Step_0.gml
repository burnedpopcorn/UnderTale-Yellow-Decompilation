if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        scr_cutscene_start();
        obj_pl.x = 680;
        obj_pl.y = 140;
        obj_pl.direction = 90;
        instance_create(860, obj_pl.y, obj_ceroba_npc);
        obj_ceroba_npc.npc_direction = "up";
        
        if (global.sworks_flag[31] == 4)
        {
            obj_ceroba_npc.x = obj_pl.x + 40;
            scene = 7;
        }
        else
        {
            scene = 0.5;
        }
        
        break;
    
    case 0.5:
        if (cutscene_wait(1))
            scene = 1;
        
        break;
    
    case 1:
        cutscene_sfx_play(snd_undertale_explosion, 1);
        break;
    
    case 2:
        if (cutscene_screenshake(0.5, 3))
            scene = 2.5;
        
        break;
    
    case 2.5:
        if (cutscene_wait(1))
            scene = 3;
        
        break;
    
    case 3:
        cutscene_npc_walk(obj_ceroba_npc, 750, obj_pl.y, 3, "x", "left");
        break;
    
    case 4:
        cutscene_sfx_play(snd_playerjump, 1);
        obj_pl.direction = 0;
        break;
    
    case 5:
        cutscene_npc_path_start(1161, 58, 3);
        break;
    
    case 6:
        cutscene_npc_walk(obj_ceroba_npc, obj_pl.x + 40, obj_pl.y, 4, "x", "up");
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Clover... You...";
            message[1] = "* How could you...";
            message[2] = "* This wasn't the plan!!";
            message[3] = "* Chujin poured his all#  into Axis and you just-";
            message[4] = "* ...";
            message[5] = "* And now... your SOUL...";
            message[6] = "* It's...";
            message[7] = "* I was certain. I#  thought you were pure...";
            prt[0] = spr_portrait_ceroba_mourning;
            prt[1] = spr_portrait_ceroba_wailing;
            prt[2] = spr_portrait_ceroba_wailing;
            prt[3] = spr_portrait_ceroba_furious;
            prt[4] = spr_portrait_ceroba_wailing;
            prt[5] = spr_portrait_ceroba_sorrowful;
            prt[6] = spr_portrait_ceroba_sorrowful;
            prt[7] = spr_portrait_ceroba_neutral;
            
            if (message_current == 2)
                obj_ceroba_npc.npc_direction = "left";
            
            position = 0;
        }
        
        break;
    
    case 8:
        cutscene_npc_direction(obj_ceroba_npc, "right");
        break;
    
    case 9:
        cutscene_wait(2);
        break;
    
    case 10:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* The mission... It's#  over.";
            message[1] = "* This is your fault.";
            prt[0] = spr_portrait_ceroba_mourning;
            prt[1] = spr_portrait_ceroba_sorrowful;
            talker[0] = obj_ceroba_npc;
        }
        
        break;
    
    case 11:
        cutscene_wait(1);
        break;
    
    case 12:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* I never want to see you#  again.";
            prt[0] = spr_portrait_ceroba_sorrowful;
        }
        
        break;
    
    case 13:
        cutscene_npc_set_sprites(obj_ceroba_npc, spr_ceroba_up_run, spr_ceroba_right_run, spr_ceroba_down_run, spr_ceroba_left_run, spr_ceroba_up_talk, spr_ceroba_right_talk, spr_ceroba_down_talk, spr_ceroba_left_talk);
        break;
    
    case 14:
        cutscene_npc_walk(obj_ceroba_npc, 860, obj_pl.y, 4, "x", "right");
        break;
    
    case 15:
        cutscene_wait(1);
        break;
    
    case 16:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 17:
        cutscene_wait(0.5);
        break;
    
    case 18:
        cutscene_instance_create(obj_pl.x - 60, obj_pl.y, obj_flowey_npc);
        obj_flowey_npc.action_sprite = true;
        obj_flowey_npc.sprite_index = spr_floweyrise;
        obj_flowey_npc.image_speed = 0.2;
        break;
    
    case 19:
        with (obj_flowey_npc)
        {
            if (image_index >= (image_number - 1))
            {
                npc_direction = "right";
                action_sprite = false;
                other.scene += 1;
            }
        }
        
        break;
    
    case 20:
        obj_pl.direction = 180;
        cutscene_advance();
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Aaaand there it is!";
            message[1] = "* She was totally using#  you, pal.";
            message[2] = "* As soon as you act in#  self-defense for once,#  she freaks!";
            message[3] = "* But you know what? This#  is good!";
            message[4] = "* You're finally free to#  get back on track.";
            message[5] = "* No more third parties,#  no more side quests.";
            message[6] = "* Just you and me, buddy!#  ";
            message[7] = "* Just you and me.";
            prt[0] = flowey_smirk;
            prt[1] = flowey_niceside;
            prt[2] = flowey_nice;
            prt[3] = flowey_nice;
            prt[4] = flowey_niceside;
            prt[5] = flowey_smirk;
            prt[6] = flowey_wink;
            prt[7] = flowey_niceside;
        }
        
        break;
    
    case 22:
        if (cutscene_npc_action_sprite_reverse(obj_flowey_npc, spr_floweyrise, 0.2, true, 0))
            instance_destroy(obj_flowey_npc);
        
        break;
    
    case 23:
        cutscene_wait(1);
        break;
    
    case 24:
        cutscene_camera_reset();
        scr_cutscene_end();
        global.sworks_flag[31] = 5;
        global.mail_flag[8] = true;
        global.sworks_flag[61] = 1;
        scr_radio_restart();
        break;
    
    case 25:
        instance_destroy(obj_player_npc);
        instance_destroy(obj_ceroba_npc);
        scr_cutscene_end();
        instance_destroy();
        global.party_member = -4;
        global.route = 1;
        break;
}
