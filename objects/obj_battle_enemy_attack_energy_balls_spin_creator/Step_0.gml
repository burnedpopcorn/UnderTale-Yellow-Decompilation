switch (scene)
{
    case 0:
        if (obj_heart_battle_fighting_parent.movement_mode == 2)
            cutscene_advance();
        
        break;
    
    case 1:
        if (!alarm[0])
        {
            alarm[0] = 15;
            cutscene_advance();
        }
        
        break;
}
