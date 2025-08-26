if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_screen_fade_in(0.05);
        break;
    
    case 1:
        if (cutscene_wait(1))
        {
            cutscene_camera_freeze();
            cutscene_advance(2);
        }
        
        break;
    
    case 2:
        obj_player_npc.x = obj_player_npc.xstart;
        obj_player_npc.y = obj_player_npc.ystart;
        obj_player_npc.x += random_range(-2, 2);
        obj_player_npc.y += random_range(-2, 2);
        
        if (cutscene_wait(1.5))
        {
            obj_player_npc.x = obj_player_npc.xstart;
            obj_player_npc.y = obj_player_npc.ystart;
        }
        
        break;
    
    case 3:
        obj_player_npc.sprite_index = spr_pl_run_right;
        obj_player_npc.image_index = 2;
        audio_play_sound(snd_playerjump, 1, 0);
        
        with (obj_player_npc)
            path_start(pt_pljump, 2, path_action_stop, false);
        
        scene++;
        break;
    
    case 4:
        with (obj_player_npc)
        {
            if (path_position >= 1)
            {
                if (global.sworks_flag[50] == 1)
                {
                    other.scene++;
                    npc_direction = "left";
                }
                else
                {
                    other.scene = 10;
                    npc_direction = "down";
                }
                
                action_sprite = false;
            }
        }
        
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Clover? You okay?";
            message[1] = "* Did you faint or#  something?";
            message[2] = "* Hey, we can take a#  break soon, alright?\t";
            message[3] = "* (That was strange...)";
            prt[0] = spr_portrait_ceroba_nervous;
            prt[1] = spr_portrait_ceroba_nervous;
            prt[2] = spr_portrait_ceroba_closed_eyes;
            prt[3] = spr_portrait_ceroba_alt;
        }
        
        break;
    
    case 7:
        obj_player_npc.npc_direction = "right";
        cutscene_npc_walk(obj_ceroba_npc, obj_player_npc.x - 20, obj_player_npc.y, 3, "y", "right");
        break;
    
    case 8:
        actor_follower = obj_ceroba_npc;
        obj_pl.direction = 0;
        cutscene_actor_into_follower();
        cutscene_camera_reset(true);
        global.sworks_flag[46] = 3;
        cutscene_end();
        break;
    
    case 10:
        cutscene_camera_reset(true);
        global.sworks_flag[46] = 3;
        cutscene_end();
        break;
}
