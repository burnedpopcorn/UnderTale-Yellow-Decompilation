switch (scene)
{
    case 0:
        if (obj_pl.y < 280)
        {
            scr_cutscene_start();
            cutscene_advance();
            obj_pl.direction = 90;
        }
        
        break;
    
    case 1:
        cutscene_camera_move(obj_pl.x, 200, 3);
        break;
    
    case 2:
        cutscene_wait(0.5);
        break;
    
    case 3:
        audio_play_sound(snd_encounter, 1, 0);
        instance_create(obj_axis_npc.x, obj_axis_npc.y - 40, obj_cutscene_ex);
        cutscene_advance();
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        instance_destroy(obj_cutscene_ex);
        cutscene_npc_direction(obj_axis_npc, "down");
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        cutscene_npc_walk(obj_axis_npc, 148, 120, 4, "x", "up");
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        audio_play_sound(snd_sliding_door_open, 1, 0);
        layer_set_visible("door_visible", false);
        cutscene_advance();
        break;
    
    case 10:
        cutscene_npc_walk(obj_axis_npc, 120, 100, 4, "x", "up");
        break;
    
    case 11:
        obj_axis_npc.image_alpha -= 0.15;
        
        if (obj_axis_npc.image_alpha <= 0)
        {
            instance_destroy(obj_axis_npc);
            cutscene_advance();
        }
        
        break;
    
    case 12:
        cutscene_wait(0.5);
        break;
    
    case 13:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 14:
        global.sworks_flag[26] = 2;
        cutscene_camera_reset();
        instance_destroy(105301);
        instance_destroy(105300);
        cutscene_end();
        break;
}
