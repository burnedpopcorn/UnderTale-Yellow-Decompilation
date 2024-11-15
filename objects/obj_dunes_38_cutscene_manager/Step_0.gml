if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (!audio_is_playing(mus_gunshop))
        {
            audio_sound_gain(obj_radio.current_song, 0, 0);
            music = audio_play_sound(mus_gunshop, 20, 1);
        }
        
        if (!instance_exists(obj_starlo_npc))
        {
            starlo_npc = instance_create(40, 460, obj_starlo_npc);
            starlo_npc.npc_direction = "right";
            starlo_npc.image_alpha = 0;
            player_npc = instance_create(40, 460, obj_player_npc);
            player_npc.npc_direction = "right";
            player_npc.image_alpha = 0;
            blackjack_npc = instance_create(360, 350, obj_blackjack_npc);
            blackjack_npc.image_alpha = 0;
        }
        
        __view_set(e__VW.Object, 0, starlo_npc);
        
        with (starlo_npc)
        {
            if (image_alpha < 1)
            {
                image_alpha += 0.1;
            }
            else
            {
                x_dest[0] = 360;
                y_dest[0] = y;
                axis_override = "x";
                end_direction = "up";
                can_walk = true;
                actor_speed = 3;
                other.scene++;
                other.timer = 10;
            }
        }
        
        break;
    
    case 1:
        if (!scr_timer())
            exit;
        
        with (player_npc)
        {
            if (image_alpha < 1)
            {
                image_alpha += 0.1;
            }
            else
            {
                x_dest[0] = 320;
                y_dest[0] = y;
                axis_override = "x";
                end_direction = "up";
                can_walk = true;
                actor_speed = 3;
                other.scene++;
                other.timer = 10;
            }
        }
        
        break;
    
    case 2:
        if (player_npc.npc_arrived == false || !scr_timer())
            exit;
        
        with (starlo_npc)
        {
            npc_arrived = false;
            x_dest[0] = 360;
            y_dest[0] = 360;
            axis_override = "y";
            end_direction = "up";
            can_walk = true;
            actor_speed = 2;
        }
        
        scene++;
        timer = 20;
        break;
    
    case 3:
        if (!starlo_npc.npc_arrived || !scr_timer())
            exit;
        
        audio_play_sound(snd_locked_door, 1, 0);
        timer = 30;
        scene++;
        break;
    
    case 4:
        if (!scr_timer())
            exit;
        
        starlo_npc.npc_direction = "down";
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            talker[0] = other.starlo_npc;
            message[0] = "* Hehe, of course.";
            message[1] = "* Old Blackjack doesn't#  like doin' business#  with me.";
            message[2] = "* I often \"borrow\" his#  wares and uh... break or#  lose them.";
            prt[0] = 412;
            prt[1] = 407;
            prt[2] = 412;
        }
        
        if (!global.dialogue_open)
        {
            timer = 15;
            scene++;
        }
        
        break;
    
    case 5:
        if (!scr_timer())
            exit;
        
        starlo_npc.npc_direction = "up";
        audio_play_sound(snd_knock_beautiful, 1, 0);
        scene++;
        break;
    
    case 6:
        if (audio_is_playing(snd_knock_beautiful))
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            talker[0] = other.starlo_npc;
            message[0] = "* Open up, Blackjack!";
            message[1] = "* Don't make me use force!";
            message[2] = "* I make the law so I can#  legally shoot down your#  doors!";
            prt[0] = 421;
            prt[1] = 419;
            prt[2] = 419;
        }
        
        if (!global.dialogue_open)
        {
            timer = 45;
            scene++;
        }
        
        break;
    
    case 7:
        scr_text();
        
        with (msg)
        {
            if (talker[message_current] == other.starlo_npc)
                position = 0;
            
            if (talker[message_current] == other.blackjack_npc)
                position = 1;
            
            talker[0] = other.blackjack_npc;
            sndfnt_array[0] = 391;
            message[0] = "* Get off my property, North#  Star!";
            message[1] = "* I told you I wouldn't even sell#  you a gumball!";
            talker[2] = other.starlo_npc;
            sndfnt_array[2] = 107;
            message[2] = "* Aw, come on, partner.";
            message[3] = "* I don't even know what#  a \"gumball\" is!";
            message[4] = "* And those last#  transactions were ages#  ago!";
            message[5] = "* I'm a changed monster!";
            prt[2] = 406;
            prt[3] = 417;
            prt[4] = 413;
            prt[5] = 422;
            talker[6] = other.blackjack_npc;
            sndfnt_array[6] = 391;
            message[6] = "* You lost one of my premium#  revolvers last week!";
            message[7] = "* Frolicking in your sandstorm#  and whatnot.";
            talker[8] = other.starlo_npc;
            talker[9] = other.starlo_npc;
            sndfnt_array[8] = 107;
            message[8] = "* Look, I promise this is#  a different scenario,#  Jack.";
            message[9] = "* I won't even step#  inside. You can meet me#  out here.";
            prt[8] = 407;
            prt[9] = 421;
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            timer = 45;
        }
        
        break;
    
    case 8:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
            message[0] = "* ...";
        
        if (!global.dialogue_open)
        {
            scene++;
            timer = 10;
        }
        
        break;
    
    case 9:
        if (!scr_timer())
            exit;
        
        with (starlo_npc)
        {
            npc_arrived = false;
            x_dest[0] = x;
            y_dest[0] = 460;
            axis_override = "y";
            end_direction = "left";
            can_walk = true;
            actor_speed = 2;
        }
        
        scene++;
        break;
    
    case 10:
        if (!starlo_npc.npc_arrived)
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            talker[0] = other.starlo_npc;
            message[0] = "* Don't worry, Clover.#  He's comin'.";
            prt[0] = 417;
        }
        
        if (!global.dialogue_open)
        {
            audio_play_sound(snd_doorclose, 1, 0);
            scene++;
            starlo_npc.npc_direction = "up";
        }
        
        break;
    
    case 11:
        with (blackjack_npc)
        {
            if (image_alpha < 1)
            {
                image_alpha += 0.1;
            }
            else
            {
                x_dest[0] = x;
                y_dest[0] = y + 40;
                axis_override = "y";
                end_direction = "down";
                can_walk = true;
                actor_speed = 1;
                other.timer = 30;
                other.scene++;
            }
        }
        
        break;
    
    case 12:
        if (!blackjack_npc.npc_arrived || !scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt_array[0] = 391;
            message[0] = "* Make it speedy.";
            sndfnt_array[1] = 107;
            talker[1] = other.starlo_npc;
            message[1] = "* Of cooourse, sir!";
            message[2] = "* I was just gunna ask#  you to sell a gun to#  this child.";
            prt[1] = 415;
            prt[2] = 422;
        }
        
        if (!global.dialogue_open)
        {
            scr_music_sudden_stop(music, 3, 1);
            timer = 60;
            scene++;
        }
        
        break;
    
    case 13:
        if (!scr_timer())
            exit;
        
        with (blackjack_npc)
        {
            walk_direction_flip = true;
            npc_arrived = false;
            x_dest[0] = x;
            y_dest[0] = y - 40;
            axis_override = "y";
            end_direction = "up";
            can_walk = true;
            actor_speed = 3;
            other.scene++;
        }
        
        break;
    
    case 14:
        if (!blackjack_npc.npc_arrived)
            exit;
        
        with (blackjack_npc)
        {
            if (image_alpha > 0)
            {
                image_alpha -= 0.2;
            }
            else
            {
                audio_play_sound(snd_doorclose, 1, 0);
                other.scene++;
            }
        }
        
        break;
    
    case 15:
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            talker[0] = other.starlo_npc;
            message[0] = "* I worded that poorly,#  hold on!";
            message[1] = "* This ain't a child, you#  see. I was jokin'.";
            message[2] = "* They're just a very#  small, but VERY tough#  monster.";
            prt[0] = 428;
            prt[1] = 412;
            prt[2] = 417;
        }
        
        if (!global.dialogue_open)
        {
            timer = 45;
            scene++;
        }
        
        break;
    
    case 16:
        scr_text();
        
        with (msg)
        {
            sndfnt_array[0] = 391;
            message[0] = "* ...";
            sndfnt_array[1] = 107;
            talker[1] = other.starlo_npc;
            talker[2] = other.starlo_npc;
            message[1] = "* Sigh...";
            message[2] = "* I'll give ya 400G.";
            prt[1] = 407;
            prt[2] = 418;
        }
        
        if (!global.dialogue_open)
        {
            audio_play_sound(snd_doorclose, 1, 0);
            scr_music_sudden_stop(music, 5, 0);
            scene++;
        }
        
        break;
    
    case 17:
        with (blackjack_npc)
        {
            if (image_alpha < 1)
            {
                image_alpha += 0.1;
            }
            else
            {
                x_dest[0] = x;
                y_dest[0] = y + 40;
                can_walk = true;
                npc_arrived = false;
                end_direction = "down";
                walk_direction_flip = true;
                other.scene++;
            }
        }
        
        break;
    
    case 18:
        if (!blackjack_npc.npc_arrived)
            exit;
        
        scr_text();
        
        with (msg)
        {
            message[0] = "* Well why didn't you open with#  that, kind patron?";
            message[1] = "* Come inside with me and I'll#  fetch the paperwork.";
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 19:
        starlo_npc.npc_direction = "left";
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            talker[0] = other.starlo_npc;
            message[0] = "* See? I had it under#  control.";
            message[1] = "* Wait out here, Clover.";
            prt[0] = 417;
            prt[1] = 417;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 20:
        with (blackjack_npc)
        {
            x_dest[0] = x;
            y_dest[0] = y - 20;
            can_walk = true;
            npc_arrived = false;
            end_direction = "up";
        }
        
        with (starlo_npc)
        {
            x_dest[0] = other.blackjack_npc.x_dest[0];
            y_dest[0] = other.blackjack_npc.y_dest[0];
            can_walk = true;
            npc_arrived = false;
            end_direction = "up";
        }
        
        scene++;
        break;
    
    case 21:
        if (blackjack_npc.npc_arrived == true)
        {
            if (blackjack_npc.image_alpha > 0)
                blackjack_npc.image_alpha -= 0.1;
        }
        
        if (starlo_npc.npc_arrived == true)
        {
            if (starlo_npc.image_alpha > 0)
            {
                starlo_npc.image_alpha -= 0.1;
            }
            else
            {
                timer = 40;
                scene += 0.5;
            }
        }
        
        break;
    
    case 21.5:
        if (!scr_timer())
            exit;
        
        cutscene_sfx_play(59, 1);
        cutscene_advance(22);
        timer = 40;
        break;
    
    case 22:
        if (audio_is_playing(snd_starlo_buys_gun))
            exit;
        
        if (!scr_timer())
            exit;
        
        starlo_npc.npc_direction = "down";
        
        if (starlo_npc.image_alpha < 1)
        {
            starlo_npc.image_alpha += 0.1;
        }
        else
        {
            with (starlo_npc)
            {
                x_dest[0] = x;
                y_dest[0] = 420;
                can_walk = true;
                npc_arrived = false;
                end_direction = "down";
                other.scene++;
            }
        }
        
        break;
    
    case 23:
        if (!starlo_npc.npc_arrived)
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            talker[0] = other.starlo_npc;
            message[0] = "* Done and done.";
            message[1] = "* Can I get a#  yeehaw?";
            prt[0] = 417;
            prt[1] = 424;
        }
        
        if (!global.dialogue_open)
        {
            timer = 30;
            scene++;
        }
        
        break;
    
    case 24:
        cutscene_npc_action_sprite(1169, 202, 1/3, true, 0, 232, 4);
        break;
    
    case 25:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            talker[0] = other.starlo_npc;
            message[0] = "* ...";
            message[1] = "* Right. Movin' along.";
            prt[0] = 421;
            prt[1] = 407;
            
            if (message_current == 1)
                obj_starlo_npc.action_sprite = false;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 26:
        with (starlo_npc)
        {
            x_dest[0] = 110;
            y_dest[0] = 400;
            axis_override = "x";
            can_walk = true;
            actor_speed = 3;
            npc_arrived = false;
            end_direction = "right";
        }
        
        timer = 30;
        scene++;
        break;
    
    case 27:
        if (!scr_timer())
            exit;
        
        with (player_npc)
        {
            x_dest[0] = 160;
            y_dest[0] = 400;
            axis_override = "x";
            can_walk = true;
            actor_speed = 3;
            npc_arrived = false;
            end_direction = "left";
        }
        
        scene++;
        break;
    
    case 28:
        if ((!player_npc.npc_arrived || !starlo_npc.npc_arrived) || !scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt_array[0] = 107;
            talker[0] = other.starlo_npc;
            message[0] = "* Let's see what you got!";
            message[1] = "* Take this trusty#  six-shooter as a gift#  from me.";
            prt[0] = 419;
            prt[1] = 422;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 29:
        player_npc.npc_direction = "left";
        cutscene_npc_walk(starlo_npc, obj_pl.x - 20, obj_pl.y, 2, "y", "right");
        break;
    
    case 30:
        cutscene_wait(0.25);
        break;
    
    case 31:
        scr_text();
        
        with (msg)
        {
            sndfnt_array[0] = 391;
            talker[0] = -4;
            message[0] = "* (You got a Wild Revolver!)";
        }
        
        if (global.player_weapon != "Wild Revolver")
        {
            global.player_weapon = "Wild Revolver";
            audio_play_sound(snd_success, 1, 0);
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 32:
        cutscene_wait(0.25);
        break;
    
    case 33:
        player_npc.npc_direction = "up";
        cutscene_npc_walk(starlo_npc, 110, 400, 3, "x", "right");
        break;
    
    case 34:
        scr_audio_fade_out(music, 300);
        global.sound_carry_overworld = false;
        global.battle_enemy_name = "dummy training pacifist";
        global.battling_enemy = false;
        global.battling_boss = true;
        global.battle_start = true;
        global.current_room_overworld = room_get_name(room);
        instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle);
        obj_pl.direction = 90;
        obj_pl.sprite_index = spr_pl_up;
        obj_heart_initiate_battle.flash_delay = 6;
        scene++;
        break;
    
    case 35:
        if (room != rm_battle)
            exit;
        
        global.radio_pause = true;
        scene++;
        break;
    
    case 36:
        if (room == rm_battle)
            exit;
        
        global.radio_pause = false;
        obj_radio.music_position = 0;
        obj_pl.direction = 180;
        
        if (!instance_exists(obj_starlo_npc))
        {
            starlo_npc = instance_create(110, 400, obj_starlo_npc);
            starlo_npc.npc_direction = "right";
            player_npc = instance_create(160, 400, obj_player_npc);
        }
        
        if (!instance_exists(obj_overworld_fade_in_screen))
            exit;
        
        scr_audio_fade_out(music, 1000);
        timer = 50;
        scene++;
        break;
    
    case 37:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = 107;
            talker[0] = other.starlo_npc;
            message[0] = "* Ya definitely pass this#  part of trainin'!";
            message[1] = "* I gotta go tell Ceroba#  'bout this.";
            message[2] = "* She's a big doubter when#  it comes to you.";
            message[3] = "* Let's ride on!";
            prt[0] = 417;
            prt[1] = 422;
            prt[2] = 424;
            prt[3] = 417;
        }
        
        if (!global.dialogue_open)
        {
            timer = 30;
            scene++;
        }
        
        break;
    
    case 38:
        trn = instance_create(0, 0, obj_transition_clock);
        trn.newRoom = 128;
        trn.xx = 182;
        trn.yy = 195;
        instance_destroy();
        break;
}
