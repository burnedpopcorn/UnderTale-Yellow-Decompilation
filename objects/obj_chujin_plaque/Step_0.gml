switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
            message[0] = "* You Tried in Engineering#  Award: Mr. Chujin Ketsukane";
        
        break;
    
    case 2:
        if (global.party_member == -4 || global.sworks_flag[17] == 1)
        {
            scene = 0;
            scr_cutscene_end();
        }
        else
        {
            cutscene_wait(1);
        }
        
        break;
    
    case 3:
        if (!instance_exists(obj_ceroba_npc))
            scr_follower_into_actor();
        
        obj_ceroba_npc.npc_direction = "up";
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* He never told me#  he won an award...";
            message[1] = "* I'm proud of him.";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 4:
        global.sworks_flag[17] = 1;
        scene = 0;
        scr_actor_into_follower(1161, 1171);
        scr_cutscene_end();
        break;
}
