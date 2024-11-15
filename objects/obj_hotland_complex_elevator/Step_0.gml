if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        image_speed = 1;
        
        if (image_index >= (image_number - 1))
        {
            image_index = image_number - 1;
            image_speed = 0;
            scene++;
        }
        
        break;
    
    case 1:
        obj_player_npc.image_alpha += 0.2;
        
        if (obj_player_npc.image_alpha >= 1)
            scene++;
        
        break;
    
    case 2:
        if (cutscene_npc_walk(1168, obj_player_npc.x, 250, 3, "y", "down"))
        {
            if (global.party_member != -4)
                scene = 3;
            else
                scene = 5;
        }
        
        break;
    
    case 3:
        obj_martlet_npc.image_alpha += 0.2;
        
        if (obj_martlet_npc.image_alpha >= 1)
            scene++;
        
        break;
    
    case 4:
        cutscene_npc_walk(1164, obj_player_npc.x, 230, 3, "y", "down");
        break;
    
    case 5:
        cutscene_actor_into_follower();
        break;
    
    case 6:
        image_speed = -1;
        
        if (image_index <= 1)
        {
            image_index = 0;
            image_speed = 0;
            scene++;
        }
        
        break;
    
    case 7:
        instance_destroy(obj_player_npc);
        scr_cutscene_end();
        scene = 8;
        break;
}

switch (scene)
{
    case 8:
        if (scr_interact() && keyboard_multicheck_pressed(0))
        {
            if (global.hotland_flag[1] < 1 && global.hotland_flag[9] < 3)
            {
                scr_text();
                
                with (msg)
                {
                    if (global.route == 3)
                        message[0] = "* (This is the wrong way.)";
                    else
                        message[0] = "* (The elevator is in use.)";
                }
            }
            else
            {
                image_speed = 1;
                scr_cutscene_start();
                cutscene_advance();
            }
        }
        
        break;
    
    case 9:
        if (image_index > (image_number - 1))
        {
            image_speed = 0;
            image_index = image_number - 1;
            cutscene_advance();
        }
        
        break;
    
    case 10:
        if (global.party_member != -4)
            scr_follower_into_actor();
        
        instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        cutscene_advance();
        break;
    
    case 11:
        if (cutscene_npc_walk(1168, 378, 200, 3, "x", "down"))
        {
            if (global.party_member != -4)
                scene = 12;
            else
                scene = 13;
        }
        
        if (obj_player_npc.y < 235 && obj_player_npc.image_alpha > 0)
            obj_player_npc.image_alpha -= 0.2;
        
        break;
    
    case 12:
        cutscene_npc_walk(1164, 378, 200, 3, "x", "down");
        
        if (obj_martlet_npc.y < 235 && obj_martlet_npc.image_alpha > 0)
            obj_martlet_npc.image_alpha -= 0.2;
        
        break;
    
    case 13:
        cutscene_change_room(259, 160, 220, 0.1);
        break;
}

if (image_index == 0 && image_speed == 1)
{
    if (!audio_is_playing(snd_sliding_door_open))
        audio_play_sound(snd_sliding_door_open, 1, 0);
}
