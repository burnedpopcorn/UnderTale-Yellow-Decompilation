var actor_ceroba = obj_ceroba_npc;

switch (scene)
{
    case 0:
        cutscene_npc_walk_wait(actor_ceroba, 190, 270, 4, "x", "up");
        break;
    
    case 1:
        global.cutscene = true;
        cutscene_advance();
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_ceroba;
            message[0] = "* I see something. Follow#  me.";
            prt[0] = spr_portrait_ceroba_surprised;
        }
        
        break;
    
    case 3:
        cutscene_npc_walk(actor_ceroba, 190, 110, 5, "x", "up");
        break;
    
    case 4:
        instance_destroy(actor_ceroba);
        global.sworks_flag[0] = 2;
        cutscene_end();
        break;
}
