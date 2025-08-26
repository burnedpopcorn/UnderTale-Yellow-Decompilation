switch (scene)
{
    case 0:
        if (obj_pl.x < 340)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        instance_create(300, 180, obj_flowey_npc);
        obj_flowey_npc.action_sprite = true;
        obj_flowey_npc.sprite_index = spr_floweyrise;
        obj_flowey_npc.image_speed = 0.2;
        obj_flowey_npc.npc_direction = "right";
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
            message[0] = "* Howdy!";
            message[1] = "* What do we have here...";
            prt[0] = flowey_nice;
            prt[1] = flowey_niceside;
        }
        
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_npc_direction(obj_flowey_npc, "up");
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Really? ANOTHER locked#  door?";
            message[1] = "* How many unique doors#  are installed in this#  place?";
            message[2] = "* Talk about#  inconsistent!";
            message[3] = "* Well, I don't see a#  slot for your ID card...";
            message[4] = "* There's plenty of#  science equipment lying#  around.";
            message[5] = "* Maybe we can drill#  through with something? ";
            message[6] = "* Start searching!";
            prt[0] = flowey_pissed;
            prt[1] = flowey_pissed;
            prt[2] = flowey_pissed;
            prt[3] = flowey_plains;
            prt[4] = flowey_plain;
            prt[5] = flowey_nice;
            prt[6] = flowey_niceside;
        }
        
        break;
    
    case 8:
        if (cutscene_npc_action_sprite_reverse(obj_flowey_npc, spr_floweyrise, 0.15, true, 0))
        {
            global.sworks_flag[25] = 1;
            instance_destroy(obj_flowey_npc);
            cutscene_end();
        }
        
        break;
}
