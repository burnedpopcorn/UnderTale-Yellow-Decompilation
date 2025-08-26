switch (scene)
{
    case 0:
        if (obj_pl.x >= 120)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        if (!instance_exists(obj_flowey_npc))
            instance_create(190, obj_pl.y, obj_flowey_npc);
        
        if (cutscene_npc_action_sprite(obj_flowey_npc, spr_floweyrise, 0.2, true, 0))
        {
            obj_flowey_npc.npc_direction = "left";
            obj_flowey_npc.action_sprite = false;
        }
        
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Hey, pal.";
            message[1] = "* Heh, what are you doing#  in this cramped alley?";
            message[2] = "* I think we both know#  this isn't the way to#  the Castle.";
            message[3] = "* You do know that, right?#  ";
            message[4] = "* Yeah, so let's turn#  around and get on with#  the plan.";
            prt[0] = flowey_nice;
            prt[1] = flowey_niceside;
            prt[2] = flowey_plain;
            prt[3] = flowey_worried;
            prt[4] = flowey_worriedside;
            position = 1;
        }
        
        break;
    
    case 5:
        if (cutscene_npc_action_sprite_reverse(obj_flowey_npc, spr_floweyrise, 0.2, true, 0))
        {
            obj_flowey_npc.action_sprite = false;
            instance_destroy(obj_flowey_npc);
            scr_cutscene_end();
            global.hotland_flag[0] = 1;
            cutscene_advance(6);
        }
        
        break;
    
    case 6:
        if (obj_pl.x > 290)
        {
            scr_cutscene_start();
            
            if (!instance_exists(obj_flowey_npc))
                instance_create(344, 109, obj_flowey_npc);
            
            if (cutscene_npc_action_sprite(obj_flowey_npc, spr_floweyrise, 0.2, true, 0))
                obj_flowey_npc.action_sprite = false;
        }
        
        break;
    
    case 7:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 8:
        cutscene_npc_walk(obj_player_npc, obj_flowey_npc.x, obj_player_npc.y, 3, "x", "up");
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Clover, come on.";
            message[1] = "* Is this about that#  letter you received in#  the Steamworks?";
            message[2] = "* It's gotta be a trap. ";
            message[3] = "* You're seriously gonna#  fall for something so#  obvious?";
            prt[0] = flowey_worried;
            prt[1] = flowey_worriedside;
            prt[2] = flowey_sad;
            prt[3] = flowey_pissed;
            position = 1;
        }
        
        break;
    
    case 11:
        cutscene_npc_walk_relative(obj_player_npc, 0, -10, 1, "y", "up");
        break;
    
    case 12:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* That bird never got you#  anywhere.";
            message[1] = "* You know who did? Me!#  Your best friend!";
            message[2] = "* How many times have I#  saved your life? Huh?";
            message[3] = "* All Martlet's done is#  put it in danger!";
            prt[0] = flowey_pissed;
            prt[1] = flowey_nice;
            prt[2] = flowey_smirk;
            prt[3] = flowey_pissed;
            position = 1;
        }
        
        break;
    
    case 13:
        cutscene_npc_walk_relative(obj_player_npc, 0, -10, 1, "y", "up");
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Alright, fine!";
            message[1] = "* If this is what you#  think is worth your time#  then I... trust you.";
            message[2] = "* What else would a friend#  do, after all?";
            message[3] = "* Just don't say I didn't#  warn you...";
            prt[0] = flowey_pissed;
            prt[1] = flowey_plains;
            prt[2] = flowey_smirk;
            prt[3] = flowey_nice;
            position = 1;
        }
        
        break;
    
    case 15:
        if (cutscene_npc_action_sprite_reverse(obj_flowey_npc, spr_floweyrise, 0.2, true, 0))
        {
            instance_destroy(obj_flowey_npc);
            instance_destroy(obj_player_npc);
            global.hotland_flag[0] = 2;
            scr_cutscene_end();
            cutscene_advance();
        }
        
        break;
}
