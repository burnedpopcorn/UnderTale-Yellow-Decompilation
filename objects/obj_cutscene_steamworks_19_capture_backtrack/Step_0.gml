switch (scene)
{
    case 0:
        scr_cutscene_start();
        cutscene_advance();
        break;
    
    case 1:
        cutscene_npc_walk_relative(1166, 40, 0, 0.5, "x", "left");
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* OH, HEY.";
            prt[0] = 473;
        }
        
        break;
    
    case 3:
        cutscene_npc_walk_relative(1166, 10, 0, 0.5, "x", "left");
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* WAIT.";
            prt[0] = 473;
        }
        
        break;
    
    case 5:
        cutscene_npc_direction(1166, "left");
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* WAIT, HOW.";
            message[1] = "* GO BACK TO YOUR ROOM.";
            prt[0] = 473;
            prt[1] = 473;
        }
        
        break;
    
    case 8:
        cutscene_npc_walk(1166, obj_pl.x + 20, obj_axis_npc.y, 3, "x", "left");
        break;
    
    case 9:
        cutscene_change_room(172, 160, 290, 0.05);
        break;
}
