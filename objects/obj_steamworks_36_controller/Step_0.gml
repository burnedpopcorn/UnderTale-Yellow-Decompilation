switch (scene)
{
    case 0:
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        cutscene_follower_into_actor();
        break;
    
    case 1:
        cutscene_npc_walk(obj_ceroba_npc, 555, obj_pl.y, 3, "x", "right");
        scene = 2;
        break;
    
    case 2:
        cutscene_wait(0.2);
        break;
    
    case 3:
        cutscene_npc_walk(obj_player_npc, 580, obj_pl.y, 3, "x", "left");
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* I gotta say, that was#  pretty entertaining!";
            message[1] = "* Glad we could bypass#  Axis without destroying#  him.";
            message[2] = "* Turns out you're a#  pretty damn good leader,#  Clover!";
            message[3] = "* I don't know why I#  doubted-";
            message[4] = "* ...";
            message[5] = "* Right.";
            prt[0] = spr_portrait_ceroba_smile;
            prt[1] = spr_portrait_ceroba_smile_alt;
            prt[2] = spr_portrait_ceroba_snarky;
            prt[3] = spr_portrait_ceroba_smile;
            prt[4] = spr_portrait_ceroba_disapproving;
            prt[5] = spr_portrait_ceroba_alt;
        }
        
        break;
    
    case 5:
        cutscene_npc_direction(obj_ceroba_npc, "left");
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* ...";
            message[1] = "* I see our exit up ahead.";
            message[2] = "* We're close.";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_alt;
            prt[2] = spr_portrait_ceroba_neutral;
            
            if (message_current == 2)
                obj_ceroba_npc.npc_direction = "right";
        }
        
        break;
    
    case 8:
        cutscene_npc_walk(1161, obj_player_npc.x + 20, obj_player_npc.y, 3, "left");
        break;
    
    case 9:
        cutscene_actor_into_follower();
        instance_destroy(obj_player_npc);
        break;
    
    case 10:
        global.sworks_flag[40] = 1;
        cutscene_end();
        break;
}
