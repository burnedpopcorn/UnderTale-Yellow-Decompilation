switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
            cutscene_advance();
        
        break;
    
    case 1:
        scr_cutscene_start();
        cutscene_advance();
        break;
    
    case 2:
        cutscene_sfx_play(snd_switch, 1);
        break;
    
    case 3:
        image_speed = 0.25;
        cutscene_advance();
        break;
    
    case 4:
        if (image_index >= (image_number - 1))
        {
            cutscene_advance();
            image_speed = 0;
        }
        
        break;
    
    case 5:
        cutscene_sfx_play(snd_undertale_thud, 1);
        break;
    
    case 6:
        cutscene_screenshake(1, 2);
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        obj_pl.direction = 0;
        cutscene_advance();
        break;
    
    case 9:
        layer_vspeed("ast_shortcut", 2);
        cutscene_advance();
        break;
    
    case 10:
        if (layer_get_y("ast_shortcut") >= 0)
        {
            cutscene_advance();
            layer_vspeed("ast_shortcut", 0);
            audio_play_sound(snd_elevator_start, 1, 0);
            layer_set_visible("ast_shortcut_railing", true);
            scr_screenshake(15, 2);
        }
        
        break;
    
    case 11:
        global.sworks_flag[19] = 1;
        cutscene_advance();
        break;
    
    case 12:
        instance_deactivate_layer("colliders_nobridge");
        instance_activate_layer("colliders_bridge");
        cutscene_advance();
        break;
    
    case 13:
        scene = -1;
        scr_cutscene_end();
        break;
}
