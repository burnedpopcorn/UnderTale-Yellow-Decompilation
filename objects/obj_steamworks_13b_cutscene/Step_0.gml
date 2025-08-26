switch (scene)
{
    case -2:
        scr_cutscene_end();
        cutscene_advance();
        break;
    
    case -1:
        if (obj_pl.y < 240)
        {
            scr_cutscene_start();
            obj_pl.direction = 90;
            cutscene_advance();
        }
        
        break;
}

if (global.sworks_flag[6] == 0)
{
    switch (scene)
    {
        case 0:
            cutscene_instance_create(obj_pl.x, __view_get(e__VW.YView, 0) - 20, obj_axis_npc);
            break;
        
        case 1:
            cutscene_wait(1);
            break;
        
        case 2:
            cutscene_npc_walk(obj_axis_npc, obj_axis_npc.x, __view_get(e__VW.YView, 0) + 40, 4, "y", "down");
            break;
        
        case 3:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = obj_axis_npc;
                message[0] = "* I CANNOT BELIEVE YOU#  FELL FOR THAT.";
                message[1] = "* I AM SMART, THEREFORE I#  PREDICTED YOUR ESCAPE.";
                message[2] = "* NOW, BACK YOU GO.";
                prt[0] = spr_portrait_axis_normal;
                prt[1] = spr_portrait_axis_normal;
                prt[2] = spr_portrait_axis_normal;
                position = 0;
            }
            
            break;
        
        case 4:
            cutscene_wait(1);
            break;
        
        case 5:
            cutscene_npc_walk(obj_axis_npc, obj_axis_npc.x, obj_axis_npc.y + 100, 1, "y", "down");
            cutscene_advance();
            break;
        
        case 6:
            global.sworks_flag[6] = 1;
            cutscene_change_room(rm_steamworks_13, 290, 140, 0.1);
            break;
    }
}

if (global.sworks_flag[6] == 2)
{
    switch (scene)
    {
        case 0:
            cutscene_instance_create(obj_pl.x, __view_get(e__VW.YView, 0) - 20, obj_axis_npc);
            break;
        
        case 1:
            cutscene_wait(1);
            break;
        
        case 2:
            cutscene_npc_walk(obj_axis_npc, obj_pl.x, __view_get(e__VW.YView, 0) + 40, 4, "y", "down");
            break;
        
        case 3:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = obj_axis_npc;
                message[0] = "* WHAT. WHY.";
                message[1] = "* DID YOU THINK I WOULD#  JUST LEAVE AFTER ONE#  ATTEMPT?";
                message[2] = "* ... I WAS ABOUT TO,#  ACTUALLY. THAT WAS#  CLOSE.";
                message[3] = "* I WILL LOCK THE DOOR#  FROM NOW ON.";
                message[4] = "* BYE NOW.";
                prt[0] = spr_portrait_axis_normal;
                prt[1] = spr_portrait_axis_normal;
                prt[2] = spr_portrait_axis_normal;
                prt[3] = spr_portrait_axis_normal;
                prt[4] = spr_portrait_axis_normal;
                position = 0;
            }
            
            break;
        
        case 4:
            cutscene_wait(1);
            break;
        
        case 5:
            cutscene_npc_walk(obj_axis_npc, obj_axis_npc.x, obj_axis_npc.y + 100, 1, "y", "down");
            cutscene_advance();
            break;
        
        case 6:
            global.sworks_flag[6] = 3;
            cutscene_change_room(rm_steamworks_13, 290, 140, 0.1);
            break;
    }
}
