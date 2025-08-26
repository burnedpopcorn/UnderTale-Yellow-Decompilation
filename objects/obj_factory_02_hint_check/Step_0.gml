if (global.sworks_flag[36] >= 1)
    instance_destroy();

if (global.sworks_flag[42] >= 1)
{
    instance_destroy();
    exit;
}

switch (scene)
{
    case -1:
        if (place_meeting(x, y, obj_pl))
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 0:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 1:
        cutscene_follower_into_actor();
        break;
    
    case 2:
        cutscene_npc_walk(obj_player_npc, 660, 660, 3, "x", "up");
        scene++;
        break;
    
    case 3:
        cutscene_npc_walk(obj_ceroba_npc, 630, 660, 3, "x", "up");
        scene++;
        break;
    
    case 4:
        if (obj_player_npc.npc_arrived && obj_ceroba_npc.npc_arrived)
            scene++;
        
        break;
    
    case 5:
        cutscene_wait(0.75);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* Really? Another door?";
            message[1] = "* ...";
            message[2] = "* Let's look around. Has#  to be a switch or a#  panel somewhere.";
            prt[0] = spr_portrait_ceroba_irked;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_neutral;
            
            if (message_current == 2)
                obj_ceroba_npc.npc_direction = "right";
        }
        
        break;
    
    case 7:
        cutscene_npc_walk(obj_ceroba_npc, obj_pl.x, obj_pl.y + 20, 3, "y", "up");
        break;
    
    case 8:
        obj_pl.direction = 90;
        cutscene_actor_into_follower();
        break;
    
    case 9:
        cutscene_end();
        break;
}
