switch (scene)
{
    case 0:
        cutscene_follower_into_actor();
        break;
    
    case 1:
        cutscene_npc_walk(actor_follower, obj_pl.x - 30, obj_pl.y, 2, "x", "up");
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Holy...";
            message[1] = "* What happened here?";
            message[2] = "* Hope this stuff is okay#  to touch...";
            prt[0] = spr_portrait_ceroba_surprised;
            prt[1] = spr_portrait_ceroba_nervous;
            prt[2] = spr_portrait_ceroba_nervous;
        }
        
        break;
    
    case 4:
        cutscene_npc_walk(actor_follower, obj_pl.x, obj_pl.y + 10, 2, "x", "up");
        break;
    
    case 5:
        cutscene_actor_into_follower();
        break;
    
    case 6:
        cutscene_end();
        break;
}
