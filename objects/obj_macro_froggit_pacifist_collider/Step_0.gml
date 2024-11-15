switch (scene)
{
    case 0:
        if (place_meeting(x, y, obj_pl))
        {
            scr_cutscene_start();
            cutscene_advance(5);
        }
        
        break;
    
    case 1:
        cutscene_follower_into_actor();
        break;
    
    case 2:
        cutscene_npc_walk(1161, obj_pl.x, obj_pl.y + 30, 3, "y", "up");
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* I'll wait outside.";
            prt[0] = 377;
        }
        
        break;
    
    case 4:
        obj_pl.direction = 90;
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_change_room(275, 160, 380, 0.1);
        global.cutscene = false;
        global.party_member = -4;
        global.sworks_flag[50] = 1;
        break;
    
    case 6:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 7:
        cutscene_npc_walk(1168, obj_ceroba_npc.x, obj_ceroba_npc.y - 20, 2, "y", "down");
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Where'd you go?";
            message[1] = "* It's like I blinked and#  lost you.";
            message[2] = "* Well, uh, don't do that#  again.";
            prt[0] = 370;
            prt[1] = 371;
            prt[2] = 370;
        }
        
        actor_follower = 1161;
        break;
    
    case 10:
        cutscene_npc_walk(1161, obj_player_npc.x, obj_player_npc.y - 20, 3, "y", "down");
        break;
    
    case 11:
        global.party_member = 1171;
        cutscene_actor_into_follower();
        break;
    
    case 12:
        scr_cutscene_end();
        instance_destroy(obj_player_npc);
        scene = 0;
        global.sworks_flag[50] = 0;
        break;
}
