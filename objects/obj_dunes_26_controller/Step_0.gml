switch (scene)
{
    case 0:
        cutscene_instance_position(1031, "x", ">", 2000);
        break;
    
    case 1:
        cutscene_initialize();
        break;
    
    case 2:
        cutscene_audio_fade(obj_radio.current_song, 0, 500, 0.25, false);
    
    case 3:
        cutscene_sfx_play(snd_confirm, 1);
        break;
    
    case 4:
        cutscene_wait(2);
        break;
    
    case 5:
        cutscene_sfx_play(snd_undertale_thud, 1);
        break;
    
    case 6:
        cutscene_instance_create(2100, __view_get(e__VW.YView, 0), obj_dunes_26_spotlight);
        break;
    
    case 7:
        cutscene_wait(2);
        break;
    
    case 8:
        cutscene_instance_create(2100, 245, obj_dunes_26_bailador);
        break;
    
    case 9:
        cutscene_npc_action_sprite(obj_dunes_26_bailador, spr_dunes_26_bailador_entrance, 0.25, true, 0, snd_undertale_swoosh, 2);
        
        if (cutscene_sfx_play_at_frame(obj_dunes_26_bailador, 8, snd_mart_impact_2))
            scr_screenshake(10, 3);
        
        break;
    
    case 10:
        cutscene_wait(2);
        break;
    
    case 11:
        cutscene_music_start(175);
        break;
    
    case 12:
        cutscene_npc_reset_sprite(obj_dunes_26_bailador, "left");
        break;
    
    case 13:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_dunes_26_bailador;
            
            if (global.route != 3)
            {
                message[0] = "* Halt!";
                message[1] = "* I, El Bailador, have tasked#  myself with confrontation!";
                message[2] = "* The air is much too quiet!#  Much too dreary!";
                message[3] = "* You make no noise when you#  move!";
                message[4] = "* You lack RHYTHM! FEELING!#  FERVOR!";
                message[5] = "* If I did not know any better,#  I might have mistaken you for#  a Sentinel of Silence!";
                message[6] = "* No no... this will not do!";
                message[7] = "* You must prove to me that you#  have what it takes!";
                message[8] = "* What it takes to live a life#  of richness!";
                message[9] = "* I challenge you... to DANCE!";
                
                if (message_current == 6)
                    obj_dunes_26_bailador.npc_direction = "down";
                else if (message_current == 9)
                    obj_dunes_26_bailador.npc_direction = "left";
            }
            else
            {
                message[0] = "* Halt!";
                message[1] = "* I, El Bailador, have tasked#  myself with confrontation!";
                message[2] = "* The air is much too quiet!#  Much too dreary!";
                message[3] = "* You make no noise when you#  move!";
                message[4] = "* And your eyes - they tell a#  woeful tale!";
                message[5] = "* No no... this will not do!";
                message[6] = "* We must liven up this dismal#  atmosphere!";
                message[7] = "* It is time... to DANCE!";
                
                if (message_current == 5)
                    obj_dunes_26_bailador.npc_direction = "down";
                else if (message_current == 7)
                    obj_dunes_26_bailador.npc_direction = "left";
            }
        }
        
        break;
    
    case 14:
        cutscene_sfx_play(snd_undertale_thud, 1);
        break;
    
    case 15:
        obj_shadow_master.reverse = false;
        cutscene_instance_create(obj_pl.x, __view_get(e__VW.YView, 0), obj_dunes_26_spotlight);
        break;
    
    case 16:
        cutscene_wait(1);
        break;
    
    case 17:
        cutscene_sfx_play(snd_undertale_appear, 1);
        break;
    
    case 18:
        cutscene_instance_create(obj_dunes_26_bailador.x, obj_dunes_26_bailador.y + 12, obj_dunes_26_dancepad);
        break;
    
    case 19:
        cutscene_instance_create(obj_pl.x, obj_dunes_26_bailador.y + 12, obj_dunes_26_dancepad);
        break;
    
    case 20:
        cutscene_wait(3);
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_dunes_26_bailador;
            message[0] = "* To truly find oneself,#  they must ignite a#  passion within!";
            message[1] = "* Let us duel!";
        }
        
        break;
    
    case 22:
        cutscene_audio_fade(cutscene_music, 0, 500, 0.25, false, true);
        break;
    
    case 23:
        cutscene_battle_initiate("el bailador", true, false);
        cutscene_advance(23.5);
        break;
    
    case 24:
        cutscene_wait(1);
        global.cutscene = true;
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_dunes_26_bailador;
            
            if (global.dunes_flag[52] == 0)
            {
                message[0] = "* Huff... huff...";
                message[1] = "* You have proven your passion,#  little one!";
                message[2] = "* I apologize if the dance was#  strenuous on your health!";
                message[3] = "* Sometimes having fun means a#  few doctor's visits!";
                message[4] = "* However, it seems that you do#  not love dance as much as I.";
                message[5] = "* Perhaps you find happiness#  through other means?";
                message[6] = "* I have never considered that#  for quiet monsters such as#  you.";
                message[7] = "* Ah, well, I at least hope#  your day has been brightened!";
                message[8] = "* I wish you a fulfilling#  journey!";
                message[9] = "* Farewell!";
            }
            else
            {
                message[0] = "* ...";
                message[1] = "* Ahem.";
                message[2] = "* This is rather awkward...";
                message[3] = "* ...";
                message[4] = "* I am inclined to make my exit.";
                message[5] = "* Farewell.";
            }
        }
        
        break;
    
    case 26:
        cutscene_npc_action_sprite(obj_dunes_26_bailador, spr_dunes_26_bailador_leave, 0.25, true, 0, snd_undertale_swoosh, 2);
        break;
    
    case 27:
        instance_destroy(obj_dunes_26_bailador);
    
    case 28:
        cutscene_wait(1);
        break;
    
    case 29:
        instance_destroy(obj_dunes_26_spotlight);
        cutscene_sfx_play(snd_undertale_thud, 1);
        break;
    
    case 30:
        global.dunes_flag[26] = 2;
        instance_destroy();
        cutscene_end();
        break;
}
