if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.x < 520)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_follower_into_actor();
        break;
    
    case 2:
        cutscene_npc_walk(obj_ceroba_npc, 450, obj_ceroba_npc.y, 3, "x", "up");
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Well, there we go.";
            message[1] = "* Definitely what I need#  after that madness.";
            prt[0] = spr_portrait_ceroba_snarky;
            prt[1] = spr_portrait_ceroba_smile;
        }
        
        break;
    
    case 4:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 5:
        cutscene_camera_move(405, 177, 3);
        cutscene_advance();
        break;
    
    case 6:
        cutscene_npc_walk(obj_ceroba_npc, 408, 160, 3, "y", "down");
        cutscene_advance();
        break;
    
    case 7:
        cutscene_npc_walk(obj_player_npc, 408, 210, 3, "x", "up");
        cutscene_advance();
        break;
    
    case 8:
        if (obj_camera.xx == obj_camera.x && obj_camera.yy == obj_camera.y && obj_player_npc.npc_arrived && obj_ceroba_npc.npc_arrived)
        {
            audio_play_sound(snd_playerjump, 1, 0);
            cutscene_advance();
        }
        
        break;
    
    case 9:
        obj_player_npc.x = 408;
        obj_player_npc.y = 196;
        obj_player_npc.npc_action_sprite = true;
        cutscene_npc_action_sprite(obj_player_npc, spr_steamworks_22_clover_sit, 1, true, 0);
        break;
    
    case 10:
        cutscene_audio_fade(obj_radio.current_song, 0, 500, 0.18, false, true);
        break;
    
    case 11:
        cutscene_wait(0.5);
        break;
    
    case 12:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* ...";
            message[1] = "* I wonder what Starlo's#  up to right now?";
            message[2] = "* Probably on some Feisty#  Five quest with a smile#  on his face.";
            message[3] = "* I do envy him... to be#  wrapped in optimism and#  fantasy.";
            message[4] = "* That's pretty rare#  amongst monsters.";
            message[4] = "* Most might act#  cheerful, but life down#  here...";
            message[5] = "* ...It's hopeless.";
            message[6] = "* That's why they look to#  the King for assurance.";
            message[7] = "* They believe once he#  gets seven SOULs and#  breaks the barrier...";
            message[8] = "* ...he'll easily be able#  to overthrow whatever#  awaits on the Surface.";
            message[9] = "* A rather foolish#  outlook if you ask me.";
            message[10] = "* Who knows how the humans#  have prepared for#  retaliation since then?";
            message[11] = "* But I digress... We#  should handle our own#  problems first.";
            message[12] = "* I can't imagine what#  Kanako's going through#  right now...";
            message[13] = "* ...";
            message[14] = "* You haven't seen my#  Kanako yet, have you?";
            message[15] = "* Here, take a look.";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_smile_alt;
            prt[3] = spr_portrait_ceroba_closed_eyes;
            prt[4] = spr_portrait_ceroba_closed_eyes;
            prt[5] = spr_portrait_ceroba_disapproving;
            prt[6] = spr_portrait_ceroba_neutral;
            prt[7] = spr_portrait_ceroba_neutral;
            prt[8] = spr_portrait_ceroba_closed_eyes;
            prt[9] = spr_portrait_ceroba_neutral;
            prt[10] = spr_portrait_ceroba_neutral;
            prt[11] = spr_portrait_ceroba_closed_eyes;
            prt[12] = spr_portrait_ceroba_disapproving;
            prt[13] = spr_portrait_ceroba_disapproving;
            prt[14] = spr_portrait_ceroba_neutral;
            prt[15] = spr_portrait_ceroba_neutral;
        }
        
        if (msg.message_current == 5 && !audio_is_playing(mus_kanako))
        {
            cutscene_music = audio_play_sound(mus_kanako, 20, 1);
            audio_sound_gain(cutscene_music, 1, 0);
        }
        
        break;
    
    case 13:
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_ceroba_kanako_picture, 1, true, 0);
        break;
    
    case 14:
        cutscene_wait(0.5);
        break;
    
    case 15:
        if (picture_alpha < 0.99)
        {
            picture_alpha = lerp(picture_alpha, 1, 0.05);
        }
        else
        {
            picture_alpha = 1;
            cutscene_advance();
        }
        
        break;
    
    case 16:
        cutscene_wait(1);
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Look at that smile.#  Definitely her father's.";
            message[1] = "* ...";
            message[2] = "* Gifted like her father#  too. She's a...";
            message[3] = "* ...";
            message[4] = "* ...She didn't deserve#  this life.";
            message[5] = "* I truly wish things#  could be different...";
            message[6] = "* ...But, that's not what#  \"fate\" had planned.";
            prt[0] = spr_portrait_ceroba_snarky;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_snarky;
            prt[3] = spr_portrait_ceroba_disapproving;
            prt[4] = spr_portrait_ceroba_neutral;
            prt[5] = spr_portrait_ceroba_disapproving;
            prt[6] = spr_portrait_ceroba_disapproving;
        }
        
        break;
    
    case 18:
        if (picture_alpha > 0.1)
        {
            picture_alpha = lerp(picture_alpha, 0, 0.05);
        }
        else
        {
            picture_alpha = 0;
            cutscene_advance();
        }
        
        break;
    
    case 19:
        cutscene_npc_action_sprite_reverse(obj_ceroba_npc, spr_ceroba_kanako_picture, 1, false);
        break;
    
    case 20:
        cutscene_wait(0.25);
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* I apologize for my#  vagueness.";
            message[1] = "* I prefer to keep the#  bad memories to myself.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_disapproving;
        }
        
        break;
    
    case 22:
        cutscene_audio_fade(cutscene_music, 0, 500, 0.2, false, true);
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Anyway, the Lab#  shouldn't be horribly#  far from here.";
            message[1] = "* We WILL get to the#  bottom of this, Clover.";
            message[2] = "* In the meantime, you#  can scout ahead. I'm#  gonna rest a bit longer.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_closed_eyes;
        }
        
        break;
    
    case 24:
        if (cutscene_npc_action_sprite_reverse(obj_player_npc, spr_steamworks_22_clover_sit, 0.5, false))
        {
            instance_destroy(obj_player_npc);
            obj_pl.x = 389;
            obj_pl.y = 204;
        }
        
        break;
    
    case 25:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 1);
        break;
    
    case 26:
        cutscene_advance();
        scr_cutscene_end();
        camera_set_view_target(view_camera[0], 1031);
        (104950).y = 240;
        global.sworks_flag[14] = 1;
        global.party_member = -4;
        scr_radio_restart();
        break;
    
    case 27:
        with (obj_ceroba_npc)
        {
            if (interact)
            {
                scr_text();
                
                with (msg)
                {
                    talker[0] = obj_ceroba_npc;
                    message[0] = "* Go on.";
                    message[1] = "* Just scream if#  something makes an#  attempt on your life.";
                    prt[0] = spr_portrait_ceroba_neutral;
                    prt[1] = spr_portrait_ceroba_closed_eyes;
                }
            }
        }
        
        break;
}
