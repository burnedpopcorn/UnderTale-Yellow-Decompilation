var doorway;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(0) && obj_pl.direction == 90)
        {
            scr_cutscene_start();
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            cutscene_follower_into_actor();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(1164, 130, 200, 2, "y", "up");
        break;
    
    case 2:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* This must be where they#  ate their meals...";
            prt[0] = 329;
        }
        
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        cutscene_npc_direction(1164, "right");
        break;
    
    case 5:
        cutscene_npc_walk(1168, 195, 200, 3, "y", "up");
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
            talker[0] = 1164;
            message[0] = "* What do you see?";
            prt[0] = 321;
        }
        
        break;
    
    case 11:
        cutscene_npc_walk(1168, 160, 200, 3, "x", "up");
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
            talker[0] = 1164;
            message[0] = "* Hey uh...";
            prt[0] = 311;
        }
        
        break;
    
    case 15:
        cutscene_npc_direction(1168, "left");
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
            talker[0] = 1164;
            message[0] = "* ...";
            message[1] = "* You think something's#  under there?";
            message[2] = "* Alright then...";
            prt[0] = 311;
            prt[1] = 321;
            prt[2] = 338;
        }
        
        break;
    
    case 18:
        cutscene_npc_direction(1168, "up");
        break;
    
    case 19:
        cutscene_npc_walk(1164, 116, 200, 3, "y", "down", -4, 160, 130);
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
            talker[0] = 1164;
            message[0] = "* On \"three.\"";
            message[1] = "* One...";
            message[2] = "* Two...";
            message[3] = "* Three!";
            prt[0] = 321;
            prt[1] = 321;
            prt[2] = 321;
            prt[3] = 328;
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
        instance_destroy(106768);
        instance_destroy(106767);
        cutscene_advance();
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Whoa...";
            prt[0] = 333;
        }
        
        break;
    
    case 26:
        cutscene_screen_fade_in(0.1);
        break;
    
    case 27:
        cutscene_wait(0.5);
        break;
    
    case 28:
        cutscene_npc_direction(1164, "left");
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Good eye, Clover.";
            prt[0] = 312;
        }
        
        break;
    
    case 30:
        cutscene_npc_direction(1164, "up");
        break;
    
    case 31:
        cutscene_wait(0.5);
        break;
    
    case 32:
        cutscene_npc_walk(1168, 160, 190, 3, "y", "up");
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
        cutscene_npc_direction(1168, "down");
        break;
    
    case 37:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Spooky...";
            message[1] = "* Well, uh... After you.";
            prt[0] = 321;
            prt[1] = 320;
        }
        
        break;
    
    case 38:
        cutscene_npc_direction(1168, "up");
        break;
    
    case 39:
        cutscene_npc_walk(1164, obj_player_npc.x, obj_player_npc.y + 20, 3, "y", "up");
        break;
    
    case 40:
        doorway = instance_create(136, 150, obj_doorway_secret_study);
        
        with (doorway)
        {
            image_xscale = 2.8125;
            image_yscale = 2.3125;
            xx = 135;
            yy = 420;
            nextroom = 250;
        }
        
        scr_radio_restart();
        instance_destroy(obj_player_npc);
        cutscene_actor_into_follower();
        scr_cutscene_end();
        break;
}
