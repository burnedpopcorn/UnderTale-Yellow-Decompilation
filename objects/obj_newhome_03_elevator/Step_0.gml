if (live_call())
    return global.live_result;

if (global.route != 3 && global.hotland_flag[10] == 0)
{
    if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* I think this elevator#  goes to the Castle.";
            message[1] = "* Probably the last place#  Ceroba would run to.";
            message[2] = "* Let's keep searching#  this area for now.";
            prt[0] = spr_martlet_head_wondering;
            prt[1] = spr_martlet_head_disappointed;
            prt[2] = spr_martlet_head_moderate;
        }
    }
}
else
{
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
            if (cutscene_npc_walk(obj_player_npc, obj_player_npc.x, 140, 3, "y", "down"))
            {
                if (global.party_member != -4)
                    scene = 3;
                else
                    scene = 6;
            }
            
            break;
        
        case 3:
            obj_martlet_npc.image_alpha += 0.2;
            
            if (obj_martlet_npc.image_alpha >= 1)
                scene++;
            
            break;
        
        case 4:
            cutscene_npc_walk(obj_martlet_npc, obj_player_npc.x, obj_pl.y - 1, 3, "y", "down");
            break;
        
        case 5:
            obj_pl.direction = 270;
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
            if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
            {
                audio_play_sound(snd_sliding_door_open, 1, 0);
                image_speed = 1;
                scr_cutscene_start();
                cutscene_advance();
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
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            
            if (global.party_member != -4)
            {
                cutscene_follower_into_actor();
                obj_martlet_npc.x_dest = 0;
                obj_martlet_npc.y_dest = 0;
                obj_martlet_npc.x_dest[0] = 0;
                obj_martlet_npc.y_dest[0] = 0;
                obj_martlet_npc.can_walk = false;
            }
            else
            {
                cutscene_advance();
            }
            
            break;
        
        case 11:
            if (cutscene_npc_walk(obj_player_npc, 260, 100, 3, "x", "down"))
            {
                if (global.party_member != -4)
                    scene = 12;
                else
                    scene = 13;
            }
            
            if (obj_player_npc.y < 120 && obj_player_npc.image_alpha > 0)
                obj_player_npc.image_alpha -= 0.2;
            
            break;
        
        case 12:
            cutscene_npc_walk(obj_martlet_npc, obj_player_npc.x, 135, 3, "x", "up");
            
            if (obj_martlet_npc.y < 140 && obj_martlet_npc.image_alpha > 0)
                obj_martlet_npc.image_alpha -= 0.2;
            
            break;
        
        case 13:
            cutscene_change_room(rm_hotland_elevator, 160, 220, 0.1);
            break;
    }
}
