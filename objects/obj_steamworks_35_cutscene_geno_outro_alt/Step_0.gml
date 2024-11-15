switch (scene)
{
    case 0:
        audio_stop_all();
        scr_cutscene_start();
        obj_pl.x = 700;
        obj_pl.y = 140;
        obj_pl.direction = 90;
        obj_axis_npc.action_sprite = false;
        
        if (cutscene_wait(1))
            cutscene_advance(1);
        
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* . .";
            message[1] = "* YOu.. . ARE LeTTING ME#  GO?";
            message[2] = "* UH. WEIRD DeCISION.";
            prt[0] = 3282;
            prt[1] = 3282;
            prt[2] = 3282;
        }
        
        break;
    
    case 2:
        cutscene_wait(1);
        break;
    
    case 3:
        cutscene_npc_walk(1166, 760, obj_pl.y, 2, "x", "right", 1031);
        
        if (obj_axis_npc.x > (obj_pl.x + 3))
            obj_pl.direction = 0;
        
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_npc_direction(1166, "left");
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* JuST SO YOU KNoW.. .";
            message[1] = "* Y0U STILL [freaking]#  SUCK.";
            message[2] = "* FEEL FREE TO TRIP aND#  FALL TO YOuR DEATH ON#  THE WaY OUT.";
            prt[0] = 3282;
            prt[1] = 3282;
            prt[2] = 3282;
        }
        
        break;
    
    case 7:
        cutscene_npc_walk(1166, 880, 140, 5, "x", "left");
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        instance_destroy(obj_axis_npc);
        global.sworks_flag[31] = 2;
        cutscene_end();
        break;
}
