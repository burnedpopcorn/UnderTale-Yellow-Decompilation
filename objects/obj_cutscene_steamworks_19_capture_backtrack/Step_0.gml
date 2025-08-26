switch (scene)
{
    case 0:
        scr_cutscene_start();
        cutscene_advance();
        break;
    
    case 1:
        cutscene_npc_walk_relative(obj_axis_npc, 40, 0, 0.5, "x", "left");
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* OH, HEY.";
            prt[0] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 3:
        cutscene_npc_walk_relative(obj_axis_npc, 10, 0, 0.5, "x", "left");
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* WAIT.";
            prt[0] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 5:
        cutscene_npc_direction(obj_axis_npc, "left");
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            message[0] = "* WAIT, HOW.";
            message[1] = "* GO BACK TO YOUR ROOM.";
            prt[0] = spr_portrait_axis_normal;
            prt[1] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 8:
        cutscene_npc_walk(obj_axis_npc, obj_pl.x + 20, obj_axis_npc.y, 3, "x", "left");
        break;
    
    case 9:
        cutscene_change_room(rm_steamworks_21b, 160, 290, 0.05);
        break;
}
