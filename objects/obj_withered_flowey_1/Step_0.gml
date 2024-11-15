var dialogue;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 1:
        dialogue = instance_create_depth(camera_get_view_x(view_camera[0]) + 120, y - 40, -9999, obj_dialogue_withered_floweys);
        
        with (dialogue)
        {
            message[0] = "* h-hello?";
            message[1] = "* where am i?";
        }
        
        scene++;
        break;
    
    case 2:
        if (!instance_exists(obj_dialogue_withered_floweys))
            scene++;
        
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        sprite_index = -4;
        visible = true;
        draw_alpha += 0.1;
        
        if (draw_alpha >= 1)
            scene++;
        
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        cutscene_camera_move(980, obj_pl.y, 1);
        break;
    
    case 7:
        scr_cutscene_end();
        scene++;
        break;
    
    case 8:
        if (obj_pl.x > camera_get_view_x(view_camera[0] + 160))
        {
            camera_set_view_target(view_camera[0], 1031);
            instance_destroy();
        }
        
        break;
}
