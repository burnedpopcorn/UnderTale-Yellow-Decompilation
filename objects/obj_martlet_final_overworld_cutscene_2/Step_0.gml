if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (cutscene_wait(1))
            audio_play_sound(snd_sliding_door_open, 1, 0);
        
        break;
    
    case 1:
        if (cutscene_wait(2.5))
            audio_play_sound(snd_sliding_door_open, 1, 0);
        
        break;
    
    case 2:
        cutscene_wait(0.75);
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            talker[1] = 2588;
            message[0] = "* Where are you off to in such a#  hurry?";
            message[1] = "* O-Oh, me?";
            message[2] = "* Umm...";
        }
        
        break;
    
    case 4:
        draw_alpha = lerp(draw_alpha, 0, 0.1);
        
        if (draw_alpha <= 0.01)
            draw_alpha = 0;
        
        if (draw_alpha == 0)
            scene++;
        
        break;
    
    case 5:
        cutscene_wait(1);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 2588;
            talker[2] = 1164;
            talker[3] = 2588;
            talker[6] = 1164;
            message[0] = "* I'm still waiting on#  the new security budget#  so in the meantime...";
            message[1] = "* ...I decided to move#  the lab cameras to#  Waterfall.";
            message[2] = "* Waterfall?";
            message[3] = "* A-AND Snowdin!";
            message[4] = "* Yeah! So... ";
            message[5] = "* Keep watch while the#  lab surveillance is#  down, okay?";
            message[6] = "* Aye aye!";
            prt[0] = 1565;
            prt[1] = 1565;
            prt[2] = 311;
            prt[3] = 2591;
            prt[4] = 2629;
            prt[5] = 2591;
            prt[6] = 313;
        }
        
        break;
    
    case 7:
        cutscene_npc_walk(2588, -40, obj_alphys_npc.y, 3, "x", "left");
        break;
    
    case 8:
        cutscene_wait(1.5);
        break;
    
    case 9:
        cutscene_npc_action_sprite(1164, 1727, 1, true, 0);
        break;
    
    case 10:
        cutscene_wait(1.5);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* ...";
            prt[0] = 315;
        }
        
        break;
    
    case 12:
        draw_alpha = lerp(draw_alpha, 1, 0.1);
        
        if (draw_alpha >= 0.99)
            draw_alpha = 1;
        
        if (draw_alpha == 1)
            scene++;
        
        break;
    
    case 13:
        cutscene_wait(2);
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Deep breaths, Martlet.";
            message[1] = "* Deep breaths...";
        }
        
        break;
    
    case 15:
        cutscene_change_room(262, 0, 0, 0.1);
}
