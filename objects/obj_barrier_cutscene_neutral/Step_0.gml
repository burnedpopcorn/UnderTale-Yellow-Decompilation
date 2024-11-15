if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_wait(3);
        break;
    
    case 1:
        cutscene_dialogue();
        
        with (msg)
        {
            text_speed = 0.5;
            talker[0] = 959;
            message[0] = "* This is the barrier.";
            message[1] = "* This is what keeps us trapped#  underground.";
            message[2] = "* . .";
        }
        
        break;
    
    case 2:
        cutscene_wait(0.25);
        break;
    
    case 3:
        cutscene_npc_direction(959, "right");
        break;
    
    case 4:
        cutscene_wait(0.25);
        break;
    
    case 5:
        cutscene_npc_direction(959, "down");
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            text_speed = 0.5;
            talker[0] = 959;
            message[0] = "* I feel it is important#  I show you something.";
            prt[0] = 1803;
        }
        
        break;
    
    case 8:
        with (obj_barrier_container)
            image_speed = 1;
        
        audio_play_sound(snd_undertale_appear, 1, 0);
        cutscene_advance();
        break;
    
    case 9:
        cutscene_wait(4);
        break;
    
    case 10:
        cutscene_npc_action_sprite(1168, 2751, 1, false);
        break;
    
    case 11:
        cutscene_wait(0.5);
        obj_player_npc.xstart = obj_player_npc.x;
        obj_player_npc.ystart = obj_player_npc.y;
        break;
    
    case 12:
        with (obj_player_npc)
        {
            x = xstart;
            y = ystart;
            y += random_range(-0.3, 0.3);
            x += random_range(-0.3, 0.3);
        }
        
        if (cutscene_wait(1.5))
        {
            with (obj_player_npc)
            {
                x = xstart;
                y = ystart;
            }
        }
        
        break;
    
    case 13:
        cutscene_npc_action_sprite(1168, 3313, 1, false, 0, 634, 2);
        
        if (obj_player_npc.image_index >= 6)
        {
            obj_player_npc.image_speed = 0;
            obj_player_npc.image_index = 6;
            scr_audio_fade_out(obj_radio.current_song, 1500);
            scene = 14;
        }
        
        break;
    
    case 14:
        cutscene_wait(2.5);
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            text_speed = 0.5;
            talker[0] = 959;
            message[0] = "* How tense...";
            message[1] = "* . .";
            message[2] = "* The feeling you are#  experiencing at this#  moment.";
            message[3] = "* I know it well.";
            message[4] = "* The world can be a#  cruel place.";
            message[5] = "* It takes and gives as#  it chooses.";
            message[6] = "* But...";
            prt[0] = 1923;
            prt[1] = 1923;
            prt[2] = 3107;
            prt[3] = 3557;
            prt[4] = 3597;
            prt[5] = 3557;
            prt[6] = 1923;
            skippable = false;
            message_timer = 30;
            
            if (message_current == 4 && !audio_is_playing(mus_asgoreop))
                audio_play_sound(mus_asgoreop, 1, 0);
        }
        
        break;
    
    case 16:
        cutscene_wait(2);
        break;
    
    case 17:
        cutscene_advance();
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            text_speed = 0.5;
            talker[0] = 959;
            message[0] = "* I suppose I have talked#  long enough.";
            message[1] = "* . .";
            message[2] = "* I will make this quick.";
            message[3] = "* No need to worry.";
            prt[0] = 1923;
            prt[1] = 3597;
            prt[2] = 1703;
            prt[3] = 1703;
            skippable = false;
            message_timer = 35;
        }
        
        break;
    
    case 19:
        cutscene_wait(1);
        break;
    
    case 20:
        cutscene_battle_initiate("asgore", true, false);
        break;
}

depth = obj_pl.depth + 1;
