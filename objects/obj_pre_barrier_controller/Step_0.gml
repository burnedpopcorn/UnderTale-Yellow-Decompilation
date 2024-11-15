if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(1);
        break;
    
    case 1:
        cutscene_npc_walk(959, 610, 170, 2, "y", "left");
        cutscene_advance();
        break;
    
    case 2:
        cutscene_npc_walk(1168, 540, 170, 2, "y", "right");
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 959;
            message[0] = "* Through this door.";
            message[1] = "* . .";
            prt[0] = 3107;
            prt[1] = 3090;
        }
        
        break;
    
    case 5:
        cutscene_npc_walk(959, 610, 150, 2, "y", "down");
        cutscene_advance();
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        cutscene_npc_walk(1168, obj_asgore_npc.x, obj_player_npc.y, 2, "x", "up");
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        obj_asgore_npc.npc_direction = "up";
        cutscene_advance();
        break;
    
    case 10:
        cutscene_change_room(269, 160, 120, 0.025);
        break;
}
