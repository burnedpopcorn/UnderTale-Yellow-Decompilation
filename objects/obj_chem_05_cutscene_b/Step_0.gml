switch (scene)
{
    case 0:
        if (global.dialogue_open)
            exit;
        
        scr_cutscene_start();
        cutscene_wait(1.5);
        break;
    
    case 1:
        instance_create(300, 170, obj_flowey_npc);
        obj_flowey_npc.action_sprite = true;
        obj_flowey_npc.sprite_index = spr_floweyrise;
        obj_flowey_npc.image_speed = 0.2;
        obj_flowey_npc.npc_direction = "left";
        obj_pl.direction = 0;
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
            talker[0] = obj_flowey_npc;
            message[0] = "* Well done, Clover! That#  stuff might just melt#  the lock!";
            message[1] = "* Make sure to be extra#  careful handling it!";
            prt[0] = flowey_nice;
            prt[1] = flowey_worried;
        }
        
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        if (cutscene_npc_action_sprite_reverse(obj_flowey_npc, spr_floweyrise, 0.15, true, 0))
        {
            global.sworks_flag[25] = 4;
            instance_destroy(obj_flowey_npc);
            cutscene_end();
        }
        
        break;
}
