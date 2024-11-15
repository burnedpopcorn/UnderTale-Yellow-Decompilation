var actor_starlo, actor_ceroba, goggles, gun, hat;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_screen_fade_in(0.04);
        break;
    
    case 1:
        cutscene_wait(2.5);
        break;
    
    case 2:
        cutscene_npc_action_sprite(1164, 297, 1, true, 0);
        break;
    
    case 3:
        cutscene_wait(2);
        break;
    
    case 4:
        cutscene_npc_action_sprite(1164, 2883, 1, true, 0);
        break;
    
    case 5:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* ...";
            message[1] = "* I've been thinking#  about that day.";
            message[2] = "* A lot.";
            message[3] = "* Time is a funny thing,#  you know?";
            message[4] = "* I guess in the big#  picture of my life, you#  were only a blip.";
            message[5] = "* But oftentimes, those#  \"blips\" make the biggest#  impacts.";
            message[6] = "* ...";
            message[7] = "* The King offered me a#  promotion.";
            message[8] = "* A guard post in New#  Home.";
            message[9] = "* But after experiencing#  the worst the job had to#  offer...";
            message[10] = "* I declined. ";
            message[11] = "* Not only that, I put in#  my two weeks, heh.";
            message[12] = "* I... felt that there#  are much better causes#  to pour myself into.";
            prt[0] = 315;
            prt[1] = 315;
            prt[2] = 315;
            prt[3] = 317;
            prt[4] = 329;
            prt[5] = 329;
            prt[6] = 329;
            prt[7] = 317;
            prt[8] = 315;
            prt[9] = 315;
            prt[10] = 329;
            prt[11] = 320;
            prt[12] = 321;
        }
        
        break;
    
    case 6:
        cutscene_wait(1);
        break;
    
    case 7:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "* Anyways...";
            message[1] = "* Sorry that I'm putting#  you on one of my rafts#  again.";
            message[2] = "* Might not be the most#  appropriate sendoff#  after that last ride...";
            message[3] = "* But it's the best#  tribute I could think#  of.";
            prt[0] = 338;
            prt[1] = 329;
            prt[2] = 320;
            prt[3] = 320;
        }
        
        break;
    
    case 8:
        cutscene_wait(0.5);
        break;
    
    case 9:
        cutscene_npc_action_sprite(1164, 3730, 1, true, 0);
        break;
    
    case 10:
        cutscene_wait(1);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            message[0] = "...";
            prt[0] = 317;
        }
        
        break;
    
    case 12:
        cutscene_wait(0.5);
        break;
    
    case 13:
        actor_starlo = instance_create_depth(-10, obj_martlet_npc.y - 10, 0, obj_starlo_npc);
        actor_ceroba = instance_create_depth(-40, obj_martlet_npc.y + 10, 0, obj_ceroba_npc);
        cutscene_npc_set_sprites(actor_starlo, 207, 237, 240, 236, 206, 235, 230, 232);
        cutscene_npc_walk(actor_starlo, obj_martlet_npc.x - 50, obj_martlet_npc.y - 10, 2, "x", "right");
        cutscene_npc_walk(actor_ceroba, obj_martlet_npc.x - 80, obj_martlet_npc.y + 10, 2, "x", "right");
        cutscene_advance(14);
        break;
    
    case 14:
        if (obj_starlo_npc.npc_arrived && obj_ceroba_npc.npc_arrived)
            cutscene_advance();
        
        break;
    
    case 15:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[1] = 1169;
            message[0] = "* It's nice.";
            message[1] = "* It is.";
            message[2] = "* Thanks for doing this.";
            prt[0] = 370;
            prt[1] = 416;
            prt[2] = 418;
        }
        
        break;
    
    case 16:
        cutscene_wait(0.5);
        break;
    
    case 17:
        cutscene_npc_action_sprite(1164, 2919, 1, true, 0);
        break;
    
    case 18:
        cutscene_wait(0.5);
        break;
    
    case 19:
        cutscene_npc_reset_sprite(1164, "left");
        instance_create_depth(obj_martlet_npc.x + 24, obj_martlet_npc.y + 16, obj_martlet_npc.depth - 1, obj_intermission_raft);
        obj_intermission_raft.image_index = 1;
    
    case 20:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            talker[2] = 1169;
            message[0] = "* Felt good to craft#  something with meaning#  again.";
            message[1] = "* You got your gift?";
            message[2] = "* Yeah, here you go.";
            prt[0] = 338;
            prt[1] = 321;
            prt[2] = 421;
        }
        
        break;
    
    case 21:
        cutscene_npc_walk(1169, obj_martlet_npc.x + 50, obj_martlet_npc.y + 2, 2, "x", "left", -4);
        
        if (obj_starlo_npc.x > obj_martlet_npc.x)
            obj_martlet_npc.npc_direction = "right";
        
        break;
    
    case 22:
        cutscene_wait(0.5);
        break;
    
    case 23:
        cutscene_npc_action_sprite(1169, 3534, 1, true, 0);
        break;
    
    case 24:
        cutscene_wait(1);
        break;
    
    case 25:
        cutscene_npc_reset_sprite(1169, "left");
        obj_intermission_raft.image_index = 2;
        break;
    
    case 26:
        cutscene_npc_direction(1164, "left");
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[2] = 1164;
            message[0] = "* Oh, I almost forgot.";
            message[1] = "* There's someone I#  invited who was a friend#  of Clover's.";
            message[2] = "* A friend?";
            prt[0] = 370;
            prt[1] = 370;
            prt[2] = 321;
        }
        
        break;
    
    case 28:
        cutscene_wait(0.5);
        break;
    
    case 29:
        cutscene_npc_direction(1161, "left");
        break;
    
    case 30:
        cutscene_instance_create(-20, obj_ceroba_npc.y - 7, obj_dalv_npc);
        break;
    
    case 31:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3110;
            message[0] = "* H-Hello?";
            message[1] = "* Is this the right place?";
        }
        
        break;
    
    case 32:
        cutscene_npc_walk(3110, obj_ceroba_npc.x - 20, obj_ceroba_npc.y - 7, 2, "x", "right");
        break;
    
    case 33:
        cutscene_npc_walk(1161, obj_ceroba_npc.x, obj_dalv_npc.y - 25, 2, "y", "down");
        break;
    
    case 34:
        if (cutscene_npc_walk(3110, obj_martlet_npc.x - 80, obj_dalv_npc.y, 2, "x", "right"))
            cutscene_advance(34.5);
        
        break;
    
    case 34.5:
        if (cutscene_npc_walk(1164, obj_martlet_npc.x, obj_dalv_npc.y + 8, 2, "y", "left"))
            cutscene_advance(35);
        
        break;
    
    case 35:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            talker[1] = 1169;
            talker[2] = 3110;
            talker[5] = 1169;
            talker[6] = 3110;
            talker[9] = 1164;
            talker[10] = 3110;
            talker[13] = 1161;
            talker[14] = 3110;
            talker[16] = 1164;
            message[0] = "* Oh, hello.";
            message[1] = "* Howdy.";
            message[2] = "* Sorry if I'm#  intruding...";
            message[3] = "* My name is Dalv and I#  um...";
            message[4] = "* I was living in the#  Ruins when Clover first#  entered the Underground.";
            message[5] = "* So you were the first#  to meet ‘em?";
            message[6] = "* One of the first, I#  suppose...";
            message[7] = "* A-Anyway, when we met,#  I acted foolish and... ";
            message[8] = "* ...attacked Clover.";
            message[9] = "* I think we all did at#  one point...";
            message[10] = "* I promise it didn't#  last long, though!";
            message[11] = "* And I held back a#  little. Um...";
            message[12] = "* Where was I going with#  this?";
            message[13] = "* Clover helped you out#  of your situation.";
            message[14] = "* Yes.";
            message[15] = "* All in all, Clover was#  very kind to me.";
            message[16] = "* That checks out.";
            message[17] = "* It's nice to meet you,#  Dalv.";
            message[18] = "* Thanks for coming.";
            prt[0] = 333;
            prt[1] = 417;
            prt[2] = 1763;
            prt[3] = 1780;
            prt[4] = 1768;
            prt[5] = 417;
            prt[6] = 1780;
            prt[7] = 1781;
            prt[8] = 1786;
            prt[9] = 317;
            prt[10] = 1764;
            prt[11] = 1780;
            prt[12] = 1776;
            prt[13] = 377;
            prt[14] = 1776;
            prt[15] = 1755;
            prt[16] = 320;
            prt[17] = 312;
            prt[18] = 328;
            
            if (message_current == 5)
                obj_ceroba_npc.npc_direction = "right";
            
            if (message_current == 6)
                obj_ceroba_npc.npc_direction = "down";
            
            if (message_current == 13)
                obj_dalv_npc.npc_direction = "up";
            
            if (message_current == 15)
                obj_dalv_npc.npc_direction = "right";
            
            if (message_current == 16)
                obj_ceroba_npc.npc_direction = "right";
        }
        
        break;
    
    case 36:
        obj_martlet_npc.y = obj_dalv_npc.y + 7;
        cutscene_npc_walk(1164, obj_dalv_npc.x + 27, obj_dalv_npc.y + 7, 2, "y", "left");
        break;
    
    case 37:
        obj_martlet_npc.image_alpha = 0;
        cutscene_npc_action_sprite(3110, 3480, 1, false);
        
        if (obj_dalv_npc.image_index >= 18)
        {
            obj_dalv_npc.action_sprite = false;
            obj_dalv_npc.right_sprite_idle = spr_credits_intermission_dalv_handshake_talk;
            cutscene_advance();
        }
        
        break;
    
    case 38:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 3110;
            message[0] = "* Of course.";
            prt[0] = 1773;
        }
        
        break;
    
    case 39:
        if (cutscene_npc_action_sprite(3110, 3480, 1, false))
        {
            obj_martlet_npc.image_alpha = 1;
            obj_dalv_npc.right_sprite_idle = cdalv_rightt;
        }
        
        if (obj_dalv_npc.image_index < 18)
            obj_dalv_npc.image_index = 18;
        
        break;
    
    case 40:
        obj_martlet_npc.npc_direction = "right";
        cutscene_advance();
        break;
    
    case 41:
        cutscene_wait(1);
        break;
    
    case 42:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            talker[3] = 1161;
            talker[4] = 1169;
            message[0] = "* Well...";
            message[1] = "* No more stalling.";
            message[2] = "* Everyone ready?";
            message[3] = "* I believe so.";
            message[4] = "* Oh, wait a second.";
            message[5] = "* I want to place one#  more thing.";
            prt[0] = 317;
            prt[1] = 329;
            prt[2] = 321;
            prt[3] = 394;
            prt[4] = 419;
            prt[5] = 421;
        }
        
        break;
    
    case 43:
        cutscene_npc_walk(1169, obj_intermission_raft.x, obj_intermission_raft.y - 2, 2, "y", "up");
        break;
    
    case 44:
        cutscene_wait(0.5);
        break;
    
    case 45:
        cutscene_npc_action_sprite(1169, 716, 1, false);
        break;
    
    case 46:
        obj_intermission_raft.image_index = 3;
        cutscene_wait(0.5);
        break;
    
    case 47:
        cutscene_npc_walk(1169, 180, 132, 2, "x", "left");
        break;
    
    case 48:
        cutscene_wait(0.5);
        break;
    
    case 49:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[1] = 1169;
            talker[3] = 1161;
            message[0] = "* Safety glasses?";
            message[1] = "* I want Clover to stay#  safe on their journey.";
            message[2] = "* Can't forget 'em,#  right?";
            message[3] = "* No, you can't.";
            prt[0] = 370;
            prt[1] = 415;
            prt[2] = 417;
            prt[3] = 395;
        }
        
        break;
    
    case 50:
        cutscene_npc_walk(1164, obj_intermission_raft.x - 1, obj_intermission_raft.y - 29, 2, "y", "down");
        break;
    
    case 51:
        obj_starlo_npc.npc_direction = "up";
        cutscene_wait(0.5);
        break;
    
    case 52:
        obj_intermission_raft.image_alpha = 0;
        cutscene_npc_action_sprite(1164, 387, 1, true, 0);
        break;
    
    case 53:
        cutscene_npc_set_sprites(1164, 273, 3059, 3085, 272, 273, 3059, 3085, 272);
        break;
    
    case 54:
        cutscene_npc_reset_sprite(1164, "down");
        break;
    
    case 55:
        cutscene_npc_walk(1169, 270, 137, 2, "x", "left");
        break;
    
    case 56:
        cutscene_npc_walk(1164, 241, 145, 2, "x", "down");
        cutscene_camera_move(241, 120, 2, true);
        break;
    
    case 57:
        cutscene_wait(0.5);
        break;
    
    case 58:
        obj_starlo_npc.npc_direction = "down";
        cutscene_npc_walk(1161, 215, 137, 3, "y", "down");
        cutscene_advance();
        break;
    
    case 59:
        cutscene_wait(0.5);
        break;
    
    case 60:
        cutscene_npc_walk(3110, 190, 130, 3, "y", "down");
        cutscene_advance();
        break;
    
    case 61:
        if (obj_dalv_npc.npc_arrived && obj_ceroba_npc.npc_arrived)
            cutscene_wait(1);
        
        break;
    
    case 62:
        if (cutscene_npc_action_sprite(1164, 3765, 1, false))
        {
            obj_intermission_raft.x = 242;
            obj_intermission_raft.y = 176;
            obj_intermission_raft.image_alpha = 1;
            obj_intermission_raft.depth = obj_martlet_npc.depth - 1;
        }
        
        obj_martlet_npc.down_sprite = spr_martlet_down;
        obj_martlet_npc.down_sprite_idle = spr_martlet_down_talk;
        obj_martlet_npc.right_sprite = spr_martlet_right;
        obj_martlet_npc.right_sprite_idle = spr_martlet_right_talk;
        break;
    
    case 63:
        obj_martlet_npc.up_sprite = spr_martlet_down;
        cutscene_npc_walk(1164, 241, 137, 1, "y", "down");
        cutscene_advance(64);
        break;
    
    case 64:
        if (obj_intermission_raft.y < 181)
        {
            obj_intermission_raft.vspeed = 0.1;
        }
        else
        {
            obj_intermission_raft.sprite_index = spr_credits_intermission_raft_idle;
            obj_intermission_raft.image_speed = 1;
            obj_intermission_raft.vspeed = 0;
            audio_play_sound(snd_splash, 1, 0);
            cutscene_advance();
        }
        
        break;
    
    case 65:
        cutscene_wait(1);
        break;
    
    case 66:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1164;
            talker[1] = 3110;
            talker[3] = 1161;
            talker[4] = 1169;
            talker[5] = 1164;
            message[0] = "* There you go...";
            message[1] = "* ...";
            message[2] = "* Goodbye, friend.";
            message[3] = "* Thanks for all you've#  done.";
            message[4] = "* See you around, kid.";
            message[5] = "* ...";
            message[6] = "* Take care, Clover.";
            prt[0] = 320;
            prt[1] = 1777;
            prt[2] = 1786;
            prt[3] = 394;
            prt[4] = 416;
            prt[5] = 317;
            prt[6] = 317;
            position = 1;
        }
        
        break;
    
    case 67:
        if (cutscene_camera_move(obj_camera.x, obj_intermission_raft.y, 0.5))
        {
            scr_audio_fade_out(river_ambience, 1000);
            cutscene_music = audio_play_sound(mus_a_place_to_rest, 1, 0);
            obj_intermission_raft.sprite_index = spr_credits_raft_water_start;
            instance_create_depth(obj_intermission_raft.x, obj_intermission_raft.y, obj_intermission_raft.depth - 1, obj_intermission_raft_flag);
        }
        
        break;
    
    case 68:
        obj_camera.y = obj_intermission_raft.y;
        
        if (obj_intermission_raft.image_index >= (obj_intermission_raft.image_number - 1))
        {
            if (obj_intermission_raft.sprite_index != spr_credits_raft_water)
            {
                obj_intermission_raft.sprite_index = spr_credits_raft_water;
                obj_intermission_raft.image_index = 0;
            }
        }
        
        if (obj_intermission_raft.vspeed < 2)
            obj_intermission_raft.vspeed += 0.015;
        
        if (obj_intermission_raft.y >= 600)
        {
            with (obj_waterfall_water_ripples_north_overworld_yellow)
                can_move = true;
        }
        
        if (obj_intermission_raft.y >= 620)
        {
            obj_intermission_raft.vspeed = 0;
            scene++;
        }
        
        break;
    
    case 69:
        obj_camera.y = obj_intermission_raft.y;
        
        if (obj_camera.x < 300)
            obj_camera.x += 1;
        else
            cutscene_advance();
        
        break;
    
    case 70:
        cutscene_advance();
        break;
    
    case 71:
        if (credits_y_offset >= 1400)
            cutscene_advance(73);
        
        break;
    
    case 72:
        cutscene_advance();
        break;
    
    case 73:
        obj_camera.y = obj_intermission_raft.y;
        obj_intermission_raft.vspeed = 1;
        
        with (obj_waterfall_water_ripples_north_overworld_yellow)
            wrap_around = false;
        
        if (obj_intermission_raft.y > 900)
        {
            credits_final_alpha_fade = true;
            cutscene_advance();
        }
        
        break;
    
    case 74:
        obj_camera.y = obj_intermission_raft.y;
        
        if (obj_intermission_raft.y >= 1100)
        {
            credits_final_alpha_fade = false;
            
            if (obj_intermission_raft.vspeed > 0)
            {
                obj_intermission_raft.vspeed -= 0.1;
            }
            else
            {
                obj_intermission_raft.vspeed = 0;
                obj_intermission_raft.sprite_index = spr_credits_intermission_raft_tip;
                obj_intermission_raft.image_speed = 0.5;
                instance_destroy(obj_intermission_raft_flag);
                cutscene_advance();
            }
        }
        
        break;
    
    case 75:
        cutscene_camera_move(obj_camera.x, 1220, 1, true);
        
        if (obj_intermission_raft.image_index >= (obj_intermission_raft.image_number - 1))
        {
            audio_play_sound(snd_fall2, 1, 0);
            obj_intermission_raft.sprite_index = spr_credits_intermission_raft_fall;
            obj_intermission_raft.vspeed = 3;
            
            with (obj_intermission_raft)
            {
                goggles = instance_create_depth(x - 4, y - 3, -1303, obj_intermission_goggles);
                gun = instance_create_depth(x + 5, y - 6, -1302, obj_intermission_gun);
                hat = instance_create_depth(x, y - 11, -1301, obj_intermission_hat);
            }
            
            goggles.vspeed = 2;
            goggles.hspeed = -1;
            goggles.gravity = 0.2;
            gun.vspeed = 2;
            gun.hspeed = 2;
            gun.gravity = 0.2;
            hat.hspeed = 0;
            hat.vspeed = 2;
            hat.gravity = 0.2;
            cutscene_advance();
        }
        
        break;
    
    case 76:
        if (obj_intermission_hat.y > 1216)
        {
            obj_intermission_hat.vspeed = 0;
            obj_intermission_hat.gravity = 0;
            obj_intermission_hat.y = 1216;
        }
        
        if (obj_intermission_gun.y > 1216)
        {
            obj_intermission_gun.vspeed = 0;
            obj_intermission_gun.gravity = 0;
            obj_intermission_gun.y = 1216;
        }
        
        if (obj_intermission_gun.hspeed > 0)
            obj_intermission_gun.hspeed -= 0.1;
        else
            obj_intermission_gun.hspeed = 0;
        
        if (obj_intermission_goggles.hspeed < 0)
            obj_intermission_goggles.hspeed += 0.1;
        else
            obj_intermission_goggles.hspeed = 0;
        
        if (instance_exists(obj_intermission_raft) && obj_intermission_raft.y > 1180)
        {
            audio_play_sound(snd_splash, 1, 0);
            instance_destroy(obj_intermission_raft);
            scr_screenshake(3, 3);
        }
        
        cutscene_wait(5);
        break;
    
    case 77:
        cutscene_wait(3);
        break;
    
    case 78:
        if (cutscene_screen_fade_out(0, 0.005))
            audio_play_sound(mus_a_call_to_action, 1, 0);
        
        break;
    
    case 79:
        cutscene_wait(5);
        break;
    
    case 80:
        if (!instance_exists(obj_dialogue_call_for_help))
            msg = instance_create_depth(0, 0, -1000, obj_dialogue_call_for_help);
        
        with (msg)
        {
            message[0] = "* Somebody calls for help...";
            message[1] = "   * You answer the call.";
            skippable = false;
            message_timer = 60;
            
            if (message_current == 1)
            {
                message_timer = -1;
                other.scene++;
            }
        }
        
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 81:
        cutscene_wait(6.3);
        break;
    
    case 82:
        cutscene_advance();
        break;
    
    case 83:
        draw_alpha_white += 0.03;
        
        if (draw_alpha_white >= 1)
        {
            if (cutscene_wait(2))
            {
                instance_destroy(obj_dialogue_call_for_help);
                draw_alpha_white = 0;
            }
        }
        
        break;
    
    case 84:
        audio_play_sound(mus_intronoise, 1, 0);
        cutscene_advance();
        draw_end_card = true;
        depth = -200;
        break;
    
    case 85:
        cutscene_wait(12);
        break;
    
    case 86:
        if (end_card_alpha > 0)
            end_card_alpha -= 0.1;
        else
            cutscene_advance();
        
        break;
    
    case 87:
        global.game_finished_pacifist = true;
        scr_savegame_meta();
        cutscene_advance();
        break;
    
    case 88:
        cutscene_wait(3);
        break;
    
    case 89:
        cutscene_music = audio_play_sound(mus_ajourned, 1, 0);
        cutscene_advance();
        break;
    
    case 90:
        if (hat_card_alpha < 1)
        {
            hat_card_alpha += 0.007;
        }
        else
        {
            if (!audio_is_playing(mus_ajourned) || keyboard_multicheck_pressed(0))
                cutscene_advance();
            
            if (audio_sound_get_track_position(cutscene_music) > 8)
            {
                if (the_end_text_alpha < 1)
                    the_end_text_alpha += 0.015;
            }
        }
        
        break;
    
    case 91:
        if (hat_card_alpha > 0)
            hat_card_alpha -= 0.01;
        
        the_end_text_alpha = hat_card_alpha;
        
        if (audio_is_playing(mus_ajourned))
            scr_audio_fade_out(645, 1500);
        else if (hat_card_alpha <= 0)
            cutscene_wait(1.5);
        
        break;
    
    case 92:
        game_end();
        break;
}

if (credits_final_alpha_fade == true)
{
    if (credits_final_alpha < 1)
        credits_final_alpha += 0.015;
}
else if (credits_final_alpha > 0)
{
    credits_final_alpha -= 0.025;
}

credits_entry_three[0] = "Based on the world\nof UNDERTALE,\ncreated by:";
credits_entry_three[1] = "";
credits_entry_three[2] = "Toby Fox\n&\nTemmie Chang";

if (scene >= 71)
    credits_y_offset += 0.5;
