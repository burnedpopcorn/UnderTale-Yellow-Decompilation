if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        scr_cutscene_start();
        cutscene_follower_into_actor();
        obj_martlet_npc.npc_direction = "up";
        obj_martlet_npc.can_walk = false;
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        obj_player_npc.npc_direction = "up";
        break;
    
    case 1:
        cutscene_npc_walk(1164, 160, 185, 2, "y", "up");
        
        if (abs(obj_martlet_npc.y - obj_player_npc.y) > 30)
            scene = 2;
        
        break;
    
    case 2:
        cutscene_npc_walk(1168, 160, 220, 2, "x", "up");
        break;
    
    case 3:
        cutscene_camera_move(160, 160, 2);
        break;
    
    case 4:
        cutscene_wait(1.5);
        break;
    
    case 5:
        cutscene_npc_direction(1164, "down");
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* I should've asked where#  the \"papers and tapes\"#  are located, huh?";
            message[1] = "* Hmm... I guess we can#  take a look around.";
            message[2] = "* Should be an office#  somewhere...";
            prt[0] = 311;
            prt[1] = 324;
            prt[2] = 321;
            
            if (message_current == 2)
                obj_martlet_npc.npc_direction = "up";
        }
        
        break;
    
    case 7:
        cutscene_npc_walk(1164, obj_player_npc.x, obj_player_npc.y + 20, 3, "y", "up");
        break;
    
    case 8:
        cutscene_actor_into_follower();
        break;
    
    case 9:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 10:
        cutscene_camera_reset();
        instance_destroy(obj_player_npc);
        scr_cutscene_end();
        global.dunes_flag[41] = 3;
        break;
    
    case 11:
        if (obj_pl.y >= 260 && global.party_member != -4)
        {
            scr_cutscene_start();
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_advance();
        }
        
        break;
    
    case 12:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* We need to find the#  things Ed mentioned#  before we go.";
            prt[0] = 321;
            sndfnt = 102;
        }
        
        break;
    
    case 13:
        cutscene_npc_walk(1168, obj_pl.x, 250, 3, "y", "up");
        break;
    
    case 14:
        scr_cutscene_end();
        instance_destroy(obj_player_npc);
        scene = 11;
        break;
}
