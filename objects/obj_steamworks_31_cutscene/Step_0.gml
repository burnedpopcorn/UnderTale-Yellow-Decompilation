if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.x < 420)
        {
            scr_cutscene_start();
            audio_sound_gain(obj_radio.current_song, 0, 600);
            instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, obj_player_npc);
            cutscene_follower_into_actor();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(obj_ceroba_npc, 330, 310, 2, "x", "up");
        cutscene_npc_walk(obj_player_npc, 370, 310, 2, "x", "up");
        cutscene_advance(2);
        break;
    
    case 2:
        if (obj_ceroba_npc.npc_arrived && obj_player_npc.npc_arrived)
        {
            obj_ceroba_npc.can_walk = false;
            obj_ceroba_npc.npc_arrived = false;
            obj_player_npc.can_walk = false;
            obj_player_npc.npc_arrived = false;
            cutscene_advance();
        }
        
        break;
    
    case 3:
        cutscene_wait(1.5);
        break;
    
    case 4:
        cutscene_npc_direction(obj_ceroba_npc, "left");
        break;
    
    case 5:
        cutscene_wait(1.5);
        break;
    
    case 6:
        cutscene_npc_direction(obj_ceroba_npc, "up");
        break;
    
    case 7:
        cutscene_wait(0.5);
        break;
    
    case 8:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Two paths...";
            prt[0] = spr_portrait_ceroba_alt;
        }
        
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Hold on...";
            prt[0] = spr_portrait_ceroba_neutral;
        }
        
        obj_player_npc.npc_direction = "left";
        obj_ceroba_npc.npc_direction = "left";
        break;
    
    case 11:
        cutscene_npc_walk(obj_ceroba_npc, 250, 310, 3, "x", "left");
        cutscene_npc_walk(obj_player_npc, 280, 310, 3, "x", "left");
        cutscene_advance();
        break;
    
    case 12:
        if (obj_ceroba_npc.npc_arrived && obj_player_npc.npc_arrived)
        {
            obj_ceroba_npc.can_walk = false;
            obj_ceroba_npc.npc_arrived = false;
            obj_player_npc.can_walk = false;
            obj_player_npc.npc_arrived = false;
            cutscene_advance();
        }
        
        break;
    
    case 13:
        cutscene_camera_move(150, obj_player_npc.y, 2);
        break;
    
    case 14:
        cutscene_wait(0.75);
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            talker[0] = obj_ceroba_npc;
            message[0] = "* That symbol, I've seen#  it on Chujin's work#  uniform.";
            message[1] = "* Lemme try one of his#  codes...";
            prt[0] = spr_portrait_ceroba_surprised;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 16:
        cutscene_npc_walk(obj_ceroba_npc, 140, 320, 3, "x", "left");
        break;
    
    case 17:
        cutscene_wait(0.5);
        break;
    
    case 18:
        cutscene_sfx_play(snd_beep, 1);
        audio_sound_pitch(snd_beep, random_range(0.7, 1.3));
        break;
    
    case 19:
        cutscene_wait(0.2);
        break;
    
    case 20:
        cutscene_sfx_play(snd_beep, 1);
        audio_sound_pitch(snd_beep, random_range(0.7, 1.3));
        break;
    
    case 21:
        cutscene_wait(0.2);
        break;
    
    case 22:
        cutscene_sfx_play(snd_beep, 1);
        audio_sound_pitch(snd_beep, random_range(0.7, 1.3));
        break;
    
    case 23:
        cutscene_wait(0.2);
        break;
    
    case 24:
        cutscene_sfx_play(snd_fail, 1);
        audio_sound_pitch(snd_fail, 0.5);
        break;
    
    case 25:
        cutscene_wait(0.5);
        break;
    
    case 26:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            talker[0] = obj_ceroba_npc;
            message[0] = "* Nope.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
        }
        
        break;
    
    case 27:
        cutscene_wait(0.15);
        break;
    
    case 28:
        cutscene_sfx_play(snd_beep, 1);
        audio_sound_pitch(snd_beep, random_range(0.7, 1.3));
        break;
    
    case 29:
        cutscene_wait(0.2);
        break;
    
    case 30:
        cutscene_sfx_play(snd_beep, 1);
        audio_sound_pitch(snd_beep, random_range(0.7, 1.3));
        break;
    
    case 31:
        cutscene_wait(0.2);
        break;
    
    case 32:
        cutscene_sfx_play(snd_beep, 1);
        audio_sound_pitch(snd_beep, random_range(0.7, 1.3));
        break;
    
    case 33:
        cutscene_wait(0.2);
        break;
    
    case 34:
        cutscene_sfx_play(snd_fail, 1);
        audio_sound_pitch(snd_fail, 0.5);
        break;
    
    case 35:
        cutscene_wait(0.5);
        break;
    
    case 36:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            talker[0] = obj_ceroba_npc;
            message[0] = "* Ugh.";
            message[1] = "* Well, I only have one#  left but I've already#  used it. ";
            message[2] = "* Here goes!";
            prt[0] = spr_portrait_ceroba_angry;
            prt[1] = spr_portrait_ceroba_closed_eyes;
            prt[2] = spr_portrait_ceroba_disapproving;
            
            if (message_current == 1)
                obj_ceroba_npc.npc_direction = "right";
        }
        
        break;
    
    case 37:
        cutscene_wait(0.2);
        obj_ceroba_npc.npc_direction = "left";
        break;
    
    case 38:
        cutscene_sfx_play(snd_beep, 1);
        audio_sound_pitch(snd_beep, random_range(0.7, 1.3));
        break;
    
    case 39:
        cutscene_wait(0.2);
        break;
    
    case 40:
        cutscene_sfx_play(snd_beep, 1);
        audio_sound_pitch(snd_beep, random_range(0.7, 1.3));
        break;
    
    case 41:
        cutscene_wait(0.2);
        break;
    
    case 42:
        cutscene_sfx_play(snd_beep, 1);
        audio_sound_pitch(snd_beep, random_range(0.7, 1.3));
        break;
    
    case 43:
        cutscene_wait(0.2);
        break;
    
    case 44:
        cutscene_sfx_play(snd_success, 1);
        break;
    
    case 45:
        cutscene_wait(0.75);
        break;
    
    case 46:
        obj_steamworks_31_door_left.image_speed = 1;
        
        if (obj_steamworks_31_door_left.image_index >= 16)
        {
            audio_play_sound(snd_sliding_door_open, 1, 0);
            cutscene_advance();
        }
        
        break;
    
    case 47:
        if (obj_steamworks_31_door_left.image_index >= (obj_steamworks_31_door_left.image_number - 1))
            cutscene_wait(1.5);
        
        break;
    
    case 48:
        cutscene_npc_direction(obj_ceroba_npc, "right");
        break;
    
    case 49:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            talker[0] = obj_ceroba_npc;
            message[0] = "* Seriously? Same code as#  the Dunes gate?";
            message[1] = "* With this kinda#  security, no wonder Axis#  is so vigilant.";
            message[2] = "* After you.";
            prt[0] = spr_portrait_ceroba_unamused;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_snarky;
        }
        
        break;
    
    case 50:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 3, true);
        cutscene_npc_walk(obj_ceroba_npc, obj_player_npc.x + 30, obj_player_npc.y, 3, "x", "left");
        break;
    
    case 51:
        cutscene_actor_into_follower();
        cutscene_camera_reset(true);
        audio_sound_gain(obj_radio.current_song, 1, 800);
        cutscene_end();
        global.sworks_flag[21] = 1;
        
        with (obj_determination)
            image_alpha = 1;
        
        var doorway = instance_create_depth(120, 300, 300, obj_doorway);
        
        with (doorway)
        {
            nextroom = rm_steamworks_factory_01;
            xx = 720;
            yy = 470;
            image_xscale = 3;
            image_yscale = 1.687;
        }
        
        break;
}
