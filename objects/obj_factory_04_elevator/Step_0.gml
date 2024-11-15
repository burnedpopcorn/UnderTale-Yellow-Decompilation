switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(0) && global.sworks_flag[38] >= 3)
            cutscene_advance();
        
        break;
    
    case 1:
        scr_cutscene_start();
        audio_play_sound(snd_sliding_door_open, 1, 0);
        image_speed = 1;
        scene++;
        break;
    
    case 2:
        if (image_index > (image_number - 1))
        {
            image_speed = 0;
            image_index = image_number - 1;
            cutscene_advance();
        }
        
        break;
    
    case 3:
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        cutscene_follower_into_actor();
        break;
    
    case 4:
        cutscene_npc_walk(1168, 120, 340, 3, "x", "down");
        scene++;
        break;
    
    case 5:
        cutscene_wait(0.25);
        break;
    
    case 6:
        cutscene_npc_walk(1161, 120, 340, 3, "x", "up");
        scene++;
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        cutscene_change_room(209, 160, 108, 0.1);
        break;
}

if (scene >= 4)
{
    with (obj_actor_npc_base)
    {
        if (y < 365)
        {
            if (image_alpha > 0)
                image_alpha -= 0.2;
        }
    }
}
