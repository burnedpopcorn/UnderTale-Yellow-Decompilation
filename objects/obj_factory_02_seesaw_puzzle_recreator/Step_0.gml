switch (scene)
{
    case 0:
        cutscene_wait(1);
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Dammit!";
            message[1] = "* Better try again.";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        instance_create(0, 0, obj_factory_02_seesaw_puzzle);
        obj_factory_02_seesaw_puzzle.seesaw_puzzle_activate = true;
        instance_destroy();
        break;
}
