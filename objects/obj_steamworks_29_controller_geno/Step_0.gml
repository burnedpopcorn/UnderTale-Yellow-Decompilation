if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.y <= 440)
        {
            scr_cutscene_start();
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        }
        
        break;
    
    case 1:
        cutscene_camera_move(170, 300, 3);
        break;
    
    case 2:
        obj_player_npc.x = 170;
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* ST4Y pUT, OK?";
            message[1] = "* YoUR'E s-SAFE.";
            prt[0] = 3282;
            prt[1] = 3282;
            position = 0;
        }
        
        break;
    
    case 3:
        cutscene_npc_walk(1166, obj_axis_npc.x, 0, 4, "y", "up");
        cutscene_advance();
        break;
    
    case 4:
        cutscene_wait(0.5);
        break;
    
    case 5:
        cutscene_npc_walk(1168, obj_player_npc.x, 380, 2, "y", "up");
        break;
    
    case 6:
        audio_play_sound(snd_encounter, 1, 0);
        instance_create(170, obj_steamworks_29_gardener_bot.y - 30, obj_cutscene_ex);
        cutscene_advance();
        break;
    
    case 7:
        cutscene_wait(0.7);
        break;
    
    case 8:
        instance_destroy(obj_cutscene_ex);
        obj_steamworks_29_gardener_bot.image_speed = 1;
        
        if (obj_steamworks_29_gardener_bot.image_index >= (obj_steamworks_29_gardener_bot.image_number - 1))
        {
            obj_steamworks_29_gardener_bot.image_index = obj_steamworks_29_gardener_bot.image_number - 1;
            obj_steamworks_29_gardener_bot.image_speed = 0;
            cutscene_advance();
        }
        
        break;
    
    case 9:
        cutscene_wait(1);
        break;
    
    case 10:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 11:
        cutscene_camera_reset();
        cutscene_end();
        instance_destroy(obj_steamworks_29_gardener_bot);
        instance_destroy(obj_axis_npc);
        global.sworks_flag[20] = 1;
        break;
}
