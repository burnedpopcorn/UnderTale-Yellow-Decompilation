var actor_ceroba = obj_ceroba_npc;

switch (scene)
{
    case 0:
        cutscene_npc_walk_wait(actor_ceroba, 75, 140, 4.5, "y", "left");
        break;
    
    case 1:
        cutscene_npc_direction(actor_ceroba, "right");
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_ceroba;
            message[0] = "* Keep up, Clover.";
            message[1] = "* We don't have all the#  time in the world.";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_closed_eyes;
        }
        
        break;
    
    case 3:
        cutscene_npc_walk(actor_ceroba, -15, 140, 4.5, "x", "left");
        break;
    
    case 4:
        instance_destroy(actor_ceroba);
        global.sworks_flag[0] = 1;
        cutscene_end();
        break;
}
