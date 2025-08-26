if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(vk_nokey) && obj_pl.direction == 90)
        {
            scr_cutscene_start();
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_follower_into_actor();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(obj_martlet_npc, 130, 200, 2, "y", "up");
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* This must be where they#  ate their meals...";
            prt[0] = spr_martlet_head_sad;
        }
        
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        cutscene_npc_direction(obj_martlet_npc, "right");
        break;
    
    case 5:
        cutscene_npc_walk(obj_player_npc, 195, 200, 3, "y", "up");
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_instance_create(obj_pl.x, obj_pl.y - 20, obj_cutscene_ex);
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        instance_destroy(obj_cutscene_ex);
        cutscene_advance();
        break;
    
    case 10:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* What do you see?";
            prt[0] = spr_martlet_head_moderate;
        }
        
        break;
    
    case 11:
        cutscene_npc_walk(obj_player_npc, 160, 200, 3, "x", "up");
        break;
    
    case 12:
        if (cutscene_wait(0.75))
        {
            cutscene_camera_freeze();
            cutscene_advance(13);
        }
        
        break;
    
    case 13:
        with (obj_player_npc)
        {
            if (!variable_instance_exists(1168, "x_original"))
            {
                x_original = x;
                y_original = y;
            }
            else
            {
                x = x_original;
                y = y_original;
                x += random_range(-1, 1);
                y += random_range(-1, 1);
            }
        }
        
        if (cutscene_wait(1))
        {
            cutscene_camera_reset();
            cutscene_advance(14);
            
            with (obj_player_npc)
            {
                x = x_original;
                y = y_original;
            }
        }
        
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Hey uh...";
            prt[0] = spr_martlet_head_confused;
        }
        
        break;
    
    case 15:
        cutscene_npc_direction(obj_player_npc, "left");
        break;
    
    case 16:
        cutscene_wait(0.5);
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            ch_msg = 0;
            ch[1] = "I need your help";
            talker[0] = obj_martlet_npc;
            message[0] = "* ...";
            message[1] = "* You think something's#  under there?";
            message[2] = "* Alright then...";
            prt[0] = spr_martlet_head_confused;
            prt[1] = spr_martlet_head_moderate;
            prt[2] = spr_martlet_head_wondering;
        }
        
        break;
    
    case 18:
        cutscene_npc_direction(obj_player_npc, "up");
        break;
    
    case 19:
        cutscene_npc_walk(obj_martlet_npc, 116, 200, 3, "y", "down", -4, 160, 130);
        break;
    
    case 20:
        cutscene_wait(0.5);
        break;
    
    case 21:
        if (cutscene_dialogue())
        {
            if (!audio_is_playing(snd_mansion_kotatsu_move))
                audio_play_sound(snd_mansion_kotatsu_move, 1, 0);
        }
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* On \"three.\"";
            message[1] = "* One...";
            message[2] = "* Two...";
            message[3] = "* Three!";
            prt[0] = spr_martlet_head_moderate;
            prt[1] = spr_martlet_head_moderate;
            prt[2] = spr_martlet_head_moderate;
            prt[3] = spr_martlet_head_regular;
        }
        
        break;
    
    case 22:
        cutscene_screen_fade_out(0, 0.1);
        scr_audio_fade_out(obj_radio.current_song, 1000);
        break;
    
    case 23:
        if (!audio_is_playing(snd_mansion_kotatsu_move))
            cutscene_wait(1.5);
        
        break;
    
    case 24:
        global.dunes_flag[42] = 1;
        sprite_index = spr_mansion_kotatsu_moved;
        x = 199;
        y = 171;
        obj_player_npc.x = 140;
        obj_player_npc.y = 200;
        obj_martlet_npc.x = 180;
        obj_martlet_npc.y = 200;
        obj_martlet_npc.npc_direction = "up";
        obj_player_npc.npc_direction = "up";
        layer_set_visible("chairs", false);
        instance_destroy(106769);
        instance_destroy(106768);
        cutscene_advance();
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Whoa...";
            prt[0] = spr_martlet_head_surprised;
        }
        
        break;
    
    case 26:
        cutscene_screen_fade_in(0.1);
        break;
    
    case 27:
        cutscene_wait(0.5);
        break;
    
    case 28:
        cutscene_npc_direction(obj_martlet_npc, "left");
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Good eye, Clover.";
            prt[0] = spr_martlet_head_content;
        }
        
        break;
    
    case 30:
        cutscene_npc_direction(obj_martlet_npc, "up");
        break;
    
    case 31:
        cutscene_wait(0.5);
        break;
    
    case 32:
        cutscene_npc_walk(obj_player_npc, 160, 190, 3, "y", "up");
        break;
    
    case 33:
        if (cutscene_wait(1))
            audio_play_sound(snd_mansion_trapdoor_open, 1, 0);
        
        break;
    
    case 34:
        with (obj_mansion_trapdoor)
        {
            image_speed = 1;
            
            if (image_index >= (image_number - 1))
            {
                other.scene++;
                image_index = image_number - 1;
                image_speed = 0;
            }
        }
        
        break;
    
    case 35:
        cutscene_wait(1);
        break;
    
    case 36:
        cutscene_npc_direction(obj_player_npc, "down");
        break;
    
    case 37:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_martlet_npc;
            message[0] = "* Spooky...";
            message[1] = "* Well, uh... After you.";
            prt[0] = spr_martlet_head_moderate;
            prt[1] = spr_martlet_head_melancholic;
        }
        
        break;
    
    case 38:
        cutscene_npc_direction(obj_player_npc, "up");
        break;
    
    case 39:
        cutscene_npc_walk(obj_martlet_npc, obj_player_npc.x, obj_player_npc.y + 20, 3, "y", "up");
        break;
    
    case 40:
        var doorway = instance_create(136, 150, obj_doorway_secret_study);
        
        with (doorway)
        {
            image_xscale = 2.8125;
            image_yscale = 2.3125;
            xx = 135;
            yy = 420;
            nextroom = rm_mansion_study;
        }
        
        scr_radio_restart();
        instance_destroy(obj_player_npc);
        cutscene_actor_into_follower();
        scr_cutscene_end();
        break;
}
