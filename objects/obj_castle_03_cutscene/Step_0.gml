if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (place_meeting(x, y, obj_pl))
        {
            instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, obj_player_npc);
            cutscene_follower_into_actor();
            
            with (obj_doorway)
                instance_destroy();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(obj_player_npc, 390, obj_player_npc.y, 1, "x", "up");
        cutscene_advance();
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        cutscene_npc_walk(obj_martlet_npc, 390, 160, 3, "y", "up");
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Wait.";
            message[1] = "* Before we enter, I just#  wanna say...";
            message[2] = "* Thanks for today.";
            message[3] = "* For putting up with me.";
            message[4] = "* I guess...";
            message[5] = "* In the big picture of#  my life, you're only#  gonna be a blip.";
            message[6] = "* But oftentimes...";
            message[7] = "* Those \"blips\" make the#  biggest impacts, you#  know?";
            message[8] = "* Oh, what am I saying?";
            message[9] = "* I'll see you again once#  monsterkind is free,#  remember?";
            message[10] = "* Wherever you are when#  that time comes,";
            message[11] = "* I will search you out!#  Guaranteed!";
            prt[0] = spr_martlet_head_downer;
            prt[1] = spr_martlet_head_sad;
            prt[2] = spr_martlet_head_melancholic;
            prt[3] = spr_martlet_head_melancholic;
            prt[4] = spr_martlet_head_downer;
            prt[5] = spr_martlet_head_sad;
            prt[6] = spr_martlet_head_downer;
            prt[7] = spr_martlet_head_melancholic;
            prt[8] = spr_martlet_head_regular;
            prt[9] = spr_martlet_head_content;
            prt[10] = spr_martlet_head_melancholic;
            prt[11] = spr_martlet_head_content;
            
            if (message_current == 1)
                obj_player_npc.npc_direction = "down";
        }
        
        break;
    
    case 5:
        cutscene_wait(1);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Well...";
            message[1] = "* Guess it's time.";
            message[2] = "* Just follow my lead.";
            prt[0] = spr_martlet_head_downer;
            prt[1] = spr_martlet_head_melancholic;
            prt[2] = spr_martlet_head_moderate;
        }
        
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        cutscene_npc_walk_relative(obj_player_npc, 20, 0, 2, "x", "down");
        break;
    
    case 9:
        cutscene_npc_walk(obj_martlet_npc, obj_martlet_npc.x, obj_player_npc.y, 2, "y", "right");
        
        if (obj_martlet_npc.y < (obj_player_npc.y + 20))
            obj_player_npc.npc_direction = "left";
        
        break;
    
    case 10:
        cutscene_wait(0.75);
        break;
    
    case 11:
        cutscene_npc_walk(obj_martlet_npc, obj_martlet_npc.x, 106, 1, "y", "up");
        cutscene_advance();
        break;
    
    case 12:
        if (obj_martlet_npc.y < (obj_player_npc.y - 5))
        {
            obj_player_npc.npc_direction = "up";
            obj_martlet_npc.image_alpha -= 0.1;
        }
        
        if (obj_martlet_npc.image_alpha <= 0)
            cutscene_advance();
        
        break;
    
    case 13:
        cutscene_npc_walk(obj_player_npc, obj_martlet_npc.x, 106, 1, "x", "up");
        break;
    
    case 14:
        obj_player_npc.image_alpha -= 0.1;
        
        if (obj_player_npc.image_alpha <= 0)
            cutscene_advance();
        
        break;
    
    case 15:
        cutscene_wait(2);
        break;
    
    case 16:
        cutscene_change_room(rm_castle_throne_room, 160, 560, 0.025);
        break;
}
