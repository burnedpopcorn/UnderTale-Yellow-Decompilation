switch (scene)
{
    case 0:
        if (obj_pl.y < 180)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        instance_create(120, 140, obj_flowey_npc);
        obj_flowey_npc.action_sprite = true;
        obj_flowey_npc.sprite_index = spr_floweyrise;
        obj_flowey_npc.image_speed = 0.2;
        cutscene_advance();
        break;
    
    case 2:
        if (obj_flowey_npc.image_index >= (obj_flowey_npc.image_number - 1))
        {
            obj_flowey_npc.image_speed = 0;
            obj_flowey_npc.action_sprite = false;
            cutscene_advance();
        }
        
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* Howdy!";
            prt[0] = 348;
        }
        
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_npc_direction(3194, "up");
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_npc_direction(3194, "down");
        break;
    
    case 8:
        cutscene_wait(0.25);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3194;
            message[0] = "* This sure is a pickle.";
            message[1] = "* I'm not certain my#  pellets would do any#  good on this door.";
            message[2] = "* Maybe there's a key#  somewhere? Be creative,#  pal!";
            prt[0] = 353;
            prt[1] = 352;
            prt[2] = 347;
        }
        
        break;
    
    case 10:
        cutscene_wait(0.5);
        break;
    
    case 11:
        if (cutscene_npc_action_sprite_reverse(3194, 242, 0.2, true, 0))
        {
            instance_destroy(obj_flowey_npc);
            cutscene_end();
            global.sworks_flag[26] = 1;
        }
        
        break;
}
