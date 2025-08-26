switch (scene)
{
    case 0:
        instance_create(obj_pl.x, obj_pl.y + 30, obj_flowey_npc);
        obj_flowey_npc.action_sprite = true;
        obj_flowey_npc.sprite_index = spr_floweyrise;
        obj_flowey_npc.image_speed = 0.2;
        cutscene_advance();
        break;
    
    case 1:
        if (obj_flowey_npc.image_index >= (obj_flowey_npc.image_number - 1))
        {
            obj_flowey_npc.image_speed = 0;
            obj_flowey_npc.action_sprite = false;
            cutscene_advance();
        }
        
        break;
    
    case 2:
        cutscene_npc_direction(obj_flowey_npc, "up");
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Hey! That's a real#  piece of art you made#  there!";
            message[1] = "* Give it a go!";
            prt[0] = flowey_nice;
            prt[1] = flowey_nice;
        }
        
        break;
    
    case 4:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 5:
        cutscene_wait(0.75);
        break;
    
    case 6:
        cutscene_npc_walk(obj_player_npc, 150, obj_player_npc.y, 2, "x", "up");
        break;
    
    case 7:
        cutscene_wait(1);
        break;
    
    case 8:
        audio_play_sound(snd_sliding_door_open, 1, 0);
        layer_set_visible("door_visible", false);
        cutscene_advance();
        break;
    
    case 9:
        cutscene_wait(1);
        break;
    
    case 10:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_flowey_npc;
            message[0] = "* Wouldja look at that!#  Worked like a charm.";
            message[1] = "* I might have to#  personally commission#  you someday, haha!";
            prt[0] = flowey_nice;
            prt[1] = flowey_wink;
        }
        
        break;
    
    case 11:
        cutscene_wait(0.5);
        break;
    
    case 12:
        if (cutscene_npc_action_sprite_reverse(obj_flowey_npc, spr_floweyrise, 0.4, true, 0))
        {
            instance_destroy(105301);
            instance_destroy(105300);
            instance_destroy(obj_flowey_npc);
            cutscene_end();
            global.sworks_flag[26] = 2;
        }
        
        break;
}
