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
            talker[0] = obj_martlet_npc;
            talker[1] = obj_alphys_npc;
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
            talker[0] = obj_alphys_npc;
            talker[2] = obj_martlet_npc;
            talker[3] = obj_alphys_npc;
            talker[6] = obj_martlet_npc;
            message[0] = "* I'm still waiting on#  the new security budget#  so in the meantime...";
            message[1] = "* ...I decided to move#  the lab cameras to#  Waterfall.";
            message[2] = "* Waterfall?";
            message[3] = "* A-AND Snowdin!";
            message[4] = "* Yeah! So... ";
            message[5] = "* Keep watch while the#  lab surveillance is#  down, okay?";
            message[6] = "* Aye aye!";
            prt[0] = spr_portrait_alphys_default;
            prt[1] = spr_portrait_alphys_default;
            prt[2] = spr_martlet_head_confused;
            prt[3] = spr_portrait_alphys_determined;
            prt[4] = spr_portrait_alphys_nervous;
            prt[5] = spr_portrait_alphys_determined;
            prt[6] = spr_martlet_head_determined;
        }
        
        break;
    
    case 7:
        cutscene_npc_walk(obj_alphys_npc, -40, obj_alphys_npc.y, 3, "x", "left");
        break;
    
    case 8:
        cutscene_wait(1.5);
        break;
    
    case 9:
        cutscene_npc_action_sprite(obj_martlet_npc, spr_martlet_left_turn, 1, true, 0);
        break;
    
    case 10:
        cutscene_wait(1.5);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* ...";
            prt[0] = spr_martlet_head_disappointed;
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
            talker[0] = obj_martlet_npc;
            message[0] = "* Deep breaths, Martlet.";
            message[1] = "* Deep breaths...";
        }
        
        break;
    
    case 15:
        cutscene_change_room(rm_hotland_lab, 0, 0, 0.1);
}
