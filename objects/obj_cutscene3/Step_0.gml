var actor_starlo = 1169;

switch (scene)
{
    case 0:
        cutscene_wait(3);
        break;
    
    case 1:
        cutscene_npc_direction(actor_starlo, "down");
        break;
    
    case 2:
        cutscene_npc_walk_relative(actor_starlo, 0, 40, 1, "y", "down");
        break;
    
    case 3:
        cutscene_battle_initiate("shufflers", true, true);
        break;
}
