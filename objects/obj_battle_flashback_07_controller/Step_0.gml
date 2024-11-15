if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.y <= 980)
        {
            obj_pl.direction = 90;
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            scr_audio_fade_out(obj_radio.bgm, 1000);
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(1168, 1140, obj_player_npc.y, 3, "x", "up");
        break;
    
    case 2:
        cutscene_camera_move(actor_martlet.x, 930, 2);
        break;
    
    case 3:
        cutscene_instance_create(actor_martlet.x, actor_martlet.y - 45, obj_cutscene_ex);
        break;
    
    case 4:
        cutscene_wait(1);
        break;
    
    case 5:
        instance_destroy(obj_cutscene_ex);
        cutscene_npc_direction(actor_martlet, "down");
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* ...Clover?";
            message[1] = "* Clover!!! It is you!";
            message[2] = "* I can't believe it!";
            message[3] = "* Come here!";
            position = 0;
        }
        
        break;
    
    case 8:
        cutscene_npc_walk(actor_martlet, 1140, obj_pl.y - 12, 3, "y", "down");
        break;
    
    case 9:
        obj_player_npc.image_alpha = 0;
        
        if (cutscene_npc_action_sprite(actor_martlet, 1465, 1, false))
            obj_player_npc.image_alpha = 1;
        
        break;
    
    case 10:
        cutscene_wait(1.5);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* I was so scared! ";
            message[1] = "* This place...";
            message[2] = "* It's Snowdin right? Sure looks#  like it.";
            message[3] = "* I haven't the slightest clue#  what's going on here.";
            message[4] = "* The last thing I remember was#  us talking on that rooftop...";
            message[5] = "* Oh yeah! We were going to my#  house!";
            message[6] = "* I don't quite know where it is#  from here but we'll search#  together!";
            message[7] = "* I'm so happy I found you!";
            message[8] = "* So happy I found you.";
            message[9] = "* I found you.";
        }
        
        break;
    
    case 12:
        cutscene_npc_action_sprite(actor_martlet, 3743, 1, true, 0);
        break;
    
    case 13:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = 102;
            message[0] = "* I  F O U N D  Y O U . ";
            skippable = false;
            
            if (cutoff >= string_length(message[message_current]))
            {
                with (obj_martlet_npc)
                {
                    action_sprite = true;
                    audio_play_sound(snd_flowey_martlet_melt, 1, 0);
                    sprite_index = spr_martlet_flowey_melt;
                    image_speed = 1;
                    image_index = 0;
                    obj_battle_flashback_07_controller.scene++;
                }
            }
        }
        
        break;
    
    case 14:
        with (obj_martlet_npc)
        {
            if (image_index >= (image_number - 1))
            {
                image_index = image_number - 1;
                image_speed = 0;
                global.dialogue_open = false;
                other.scene++;
            }
        }
        
        break;
    
    case 15:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 1);
        break;
    
    case 16:
        global.player_can_run = true;
        instance_destroy(obj_player_npc);
        camera_set_view_target(view_camera[0], 1031);
        scr_cutscene_end();
        scr_radio_restart();
        scene++;
        break;
    
    case 17:
        break;
}
