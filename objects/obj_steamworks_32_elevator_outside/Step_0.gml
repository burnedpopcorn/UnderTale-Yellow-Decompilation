switch (scene)
{
    case 0:
        if (image_speed == 0 && image_index == 0)
        {
            image_speed = 1;
            audio_play_sound(snd_sliding_door_open, 1, 0);
        }
        
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
        if (cutscene_npc_walk(1168, 800, 290, 3, "y", "left"))
        {
            if (global.party_member != -4)
                scene = 3;
            else
                scene = 5;
        }
        
        break;
    
    case 3:
        actor_follower.image_alpha += 0.2;
        
        if (actor_follower.image_alpha >= 1)
            scene++;
        
        break;
    
    case 4:
        cutscene_npc_walk(actor_follower, 820, 290, 3, "y", "left");
        break;
    
    case 5:
        obj_pl.direction = 180;
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
            if (global.route == 2 || global.sworks_flag[41] == 1 || global.sworks_flag[61] == 1)
            {
                audio_play_sound(snd_sliding_door_open, 1, 0);
                image_speed = 1;
                scr_cutscene_start();
                cutscene_advance();
            }
            else
            {
                scr_text();
                
                with (msg)
                    message[0] = "* (The elevator is#  unresponsive.)";
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
        if (cutscene_npc_walk(1168, 840, 260, 3, "x", "up"))
        {
            if (global.party_member != -4)
                scene = 12;
            else
                scene = 13;
        }
        
        break;
    
    case 12:
        cutscene_npc_walk(actor_follower, 840, 260, 3, "x", "up");
        break;
    
    case 13:
        cutscene_change_room(209, 160, 220, 0.1);
        break;
}

if (scene > 10)
{
    if (obj_player_npc.y < 275 && obj_player_npc.image_alpha > 0)
        obj_player_npc.image_alpha -= 0.2;
    
    if (global.party_member != -4 && actor_follower.y < 275 && actor_follower.image_alpha > 0)
        actor_follower.image_alpha -= 0.2;
}
