var actor_starlo = 1169;
var actor_ed = 1162;
var actor_mooch = 1165;
var actor_moray = 1167;
var actor_ace = 1158;
var actor_clover = obj_player_npc;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_music_start(184, 0);
        break;
    
    case 1:
        if (cutscene_wait(1.5))
            cutscene_advance(6);
        
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            talker[0] = actor_starlo;
            message[0] = "* Group up, everyone!";
            prt[0] = spr_portrait_starlo_normal;
        }
        
        break;
    
    case 7:
        cutscene_npc_walk(actor_ace, 680, 440, 4, "x", "up");
        cutscene_npc_walk(actor_mooch, 760, 440, 4, "y", "up");
        cutscene_npc_walk(actor_ed, 640, 375, 4, "y", "right");
        cutscene_npc_walk(actor_moray, 800, 375, 4, "x", "left");
        cutscene_advance();
        break;
    
    case 8:
        if (actor_moray.npc_arrived && actor_ed.npc_arrived && actor_mooch.npc_arrived && actor_ace.npc_arrived)
            cutscene_advance();
        
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            message[0] = "* Gettin' a bit of deja#  vu here.";
            prt[0] = spr_portrait_ed_mutter;
            sndfnt_array[0] = snd_talk_ed;
            talker[0] = actor_ed;
            message[1] = "* As ya should, buddy.";
            message[2] = "* Thanks to Ace's keen#  eye for fashion, we#  took a lil detour.";
            message[3] = "* Great job there.";
            prt[1] = spr_portrait_starlo_serious;
            prt[2] = spr_portrait_starlo_distracted;
            prt[3] = spr_portrait_starlo_serious;
            sndfnt_array[1] = snd_talk_starlo;
            talker[1] = actor_starlo;
            message[4] = "* Thank you, Star.";
            message[5] = "* Clover looks much#  better now.";
            prt[4] = spr_portrait_ace_smile;
            prt[5] = spr_portrait_ace_stern;
            sndfnt_array[4] = snd_talk_ace;
            talker[4] = actor_ace;
            message[6] = "* I agree! Clover's#  looking like a real#  wrangler!";
            prt[6] = spr_portrait_moray_normal;
            sndfnt_array[6] = snd_talk_default;
            talker[6] = actor_moray;
            message[7] = "* For sure!";
            message[8] = "* That new gun is...#  awfully shiny.";
            prt[7] = spr_portrait_mooch_happy;
            prt[8] = spr_portrait_mooch_smirk;
            sndfnt_array[7] = snd_talk_mooch;
            talker[7] = actor_mooch;
            message[9] = "* Had to shake Mr.#  Blackjack down for it.";
            message[10] = "* I was real tough, too.";
            message[11] = "* Put ol' Jack in his#  place, I did.";
            prt[9] = spr_portrait_starlo_normal;
            prt[10] = spr_portrait_starlo_smirk;
            prt[11] = spr_portrait_starlo_smirk;
            sndfnt_array[9] = snd_talk_starlo;
            talker[9] = actor_starlo;
            message[12] = "* You coulda' sent me in#  to get it.";
            message[13] = "* You know I'm the best#  negotiator.";
            prt[12] = spr_portrait_mooch_normal;
            prt[13] = spr_portrait_mooch_smirk;
            sndfnt_array[12] = snd_talk_mooch;
            talker[12] = actor_mooch;
            message[14] = "* We might bend the rules#  a bit but we ain't#  bandits.";
            prt[14] = spr_portrait_starlo_point;
            sndfnt_array[14] = snd_talk_starlo;
            talker[14] = actor_starlo;
            message[15] = "* Mhm, totally.";
            prt[15] = spr_portrait_mooch_happy;
            sndfnt_array[15] = snd_talk_mooch;
            talker[15] = actor_mooch;
            message[16] = "* Let's get to the#  mission already.";
            prt[16] = spr_portrait_ed_mutter;
            sndfnt_array[16] = snd_talk_ed;
            talker[16] = actor_ed;
            message[17] = "* Right ya are, Ed.";
            message[18] = "* What other mission#  would it be than the#  one we skipped before?";
            message[19] = "* Get ready, Clover!";
            prt[17] = spr_portrait_starlo_normal;
            prt[18] = spr_portrait_starlo_normal;
            prt[19] = spr_portrait_starlo_hidden;
            sndfnt_array[17] = snd_talk_starlo;
            talker[17] = actor_starlo;
        }
        
        break;
    
    case 10:
        cutscene_wait(1);
        break;
    
    case 11:
        cutscene_audio_fade(cutscene_music, 0, 300, 0.25, false);
        break;
    
    case 12:
        cutscene_event_wildeast_stamp(1260, 253, 150, 10, 50);
        break;
    
    case 13:
        cutscene_audio_fade(cutscene_music, 1, 300, 0.75, true);
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            message[0] = "* It's time for us to#  dual!";
            prt[0] = spr_portrait_starlo_smile;
            talker[0] = actor_starlo;
        }
        
        break;
    
    case 15:
        scr_music_sudden_stop(cutscene_music, 5, 1);
        cutscene_advance();
        break;
    
    case 16:
        cutscene_wait(2);
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            message[0] = "* You mean \"duel.\"";
            prt[0] = spr_portrait_moray_disbelief;
            talker[0] = actor_moray;
        }
        
        break;
    
    case 18:
        cutscene_wait(1);
        break;
    
    case 19:
        cutscene_npc_direction(actor_starlo, "right");
        break;
    
    case 20:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            message[0] = "* That's what I said.";
            message[1] = "* No, you pronounced it#  with a \"UA\" sound#  instead of a \"OO\" sound.";
            message[2] = "* Boss, have you been#  skippin' Cowboy Grammar#  Class?";
            message[3] = "* Dual, duel, who cares?#  Tomato potato and all#  that.";
            message[4] = "* Y'all need to quit#  interrupin' me so often.";
            message[5] = "* Upsets my frontier zen.";
            prt[0] = spr_portrait_starlo_flustered;
            prt[1] = spr_portrait_ace_concealed;
            prt[2] = spr_portrait_ed_mad;
            prt[3] = spr_portrait_starlo_embarassed;
            prt[4] = spr_portrait_starlo_embarassed;
            prt[5] = spr_portrait_starlo_embarassed;
            talker[0] = actor_starlo;
            talker[1] = actor_ace;
            talker[2] = actor_ed;
            talker[3] = actor_starlo;
            
            if (message_current == 3)
            {
                with (actor_starlo)
                    npc_direction = "down";
            }
        }
        
        break;
    
    case 21:
        scr_music_sudden_stop(cutscene_music, 5, false);
        cutscene_advance();
    
    case 22:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            message[0] = "* Where was I?";
            message[1] = "* Oh yeah, it's time to#  d...";
            message[2] = "* Participate in a#  carefully timed#  shootin' competition.";
            message[3] = "* Mooch! Provide Clover#  with the designated#  tool.";
            prt[0] = spr_portrait_starlo_serious;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_serious;
            prt[3] = spr_portrait_starlo_normal;
            talker[0] = actor_starlo;
        }
        
        break;
    
    case 23:
        cutscene_npc_walk(actor_mooch, obj_pl.x, obj_pl.y + 20, 3, "x", "up");
        break;
    
    case 24:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            message[0] = "* Here's a BB gun for the#  duel!";
            message[1] = "* I'll uh... take that#  sixshooter off your#  hands for now.";
            message[2] = "* Mooooch? Bring the gun#  here.";
            message[3] = "* That's what I was gonna#  do, Moray.";
            message[4] = "* Get off my back, will#  ya?";
            prt[0] = spr_portrait_mooch_happy;
            prt[1] = spr_portrait_mooch_smile;
            prt[2] = spr_portrait_moray_normal;
            prt[3] = spr_portrait_mooch_nervous;
            prt[4] = spr_portrait_mooch_nervous;
            talker[0] = actor_mooch;
            talker[2] = actor_moray;
            talker[3] = actor_mooch;
        }
        
        break;
    
    case 25:
        cutscene_npc_walk(actor_mooch, actor_moray.x, actor_moray.y + 20, 3, "y", "up");
        break;
    
    case 26:
        cutscene_wait(1);
        break;
    
    case 27:
        cutscene_npc_walk(actor_mooch, 760, 440, 3, "x", "up");
        break;
    
    case 28:
        cutscene_wait(0.5);
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            message[0] = "* Alright. It's finally#  time to go head to hea-";
            message[1] = "* Wait.";
            message[2] = "* What is it, Ace?";
            message[3] = "* What could possibly be#  so pressin' to interrupt#  the mission again?";
            message[4] = "* You forgot the safety#  glasses.";
            message[5] = "* Gee, boss. You coulda#  hurt Clover.";
            message[6] = "* Right...";
            message[7] = "* I take responsibility#  and apologize for the#  oversight.";
            message[8] = "* Bring the glasses here.";
            prt[0] = spr_portrait_starlo_smile;
            prt[1] = spr_portrait_ace_hand;
            prt[2] = spr_portrait_starlo_hurt;
            prt[3] = spr_portrait_starlo_hurt;
            prt[4] = spr_portrait_ace_stern;
            prt[5] = spr_portrait_ed_mutter;
            prt[6] = spr_portrait_starlo_embarassed_smile;
            prt[7] = spr_portrait_starlo_embarassed_smile;
            prt[8] = spr_portrait_starlo_normal;
            talker[0] = actor_starlo;
            talker[1] = actor_ace;
            talker[2] = actor_starlo;
            talker[4] = actor_ace;
            talker[5] = actor_ed;
            talker[6] = actor_starlo;
            
            if (message_current == 1 && counter == 0)
                scr_music_sudden_stop(other.cutscene_music, 5, true);
        }
        
        break;
    
    case 30:
        scr_music_sudden_stop(other.cutscene_music, 5, false);
        cutscene_advance();
        break;
    
    case 31:
        cutscene_npc_walk(actor_ace, actor_starlo.x, actor_starlo.y + 20, 3, "x", "up");
        break;
    
    case 32:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            message[0] = "* (I want the pair with#  the blue flames.)";
            message[1] = "* (Red flames clash with#  my uniform.)";
            message[2] = "* Here.";
            prt[0] = spr_portrait_starlo_distracted;
            prt[1] = spr_portrait_starlo_distracted;
            prt[2] = spr_portrait_ace_normal;
            talker[0] = actor_starlo;
            talker[2] = actor_ace;
        }
        
        break;
    
    case 33:
        cutscene_npc_action_sprite(actor_ace, actor_ace.up_sprite, 0.2, true);
        break;
    
    case 34:
        cutscene_wait(0.5);
        break;
    
    case 35:
        cutscene_npc_reset_sprite(actor_ace, "up");
        break;
    
    case 36:
        cutscene_npc_set_sprites(actor_starlo, spr_starlo_goggles_up_walk, spr_starlo_goggles_right_walk, spr_starlo_goggles_down_walk, spr_starlo_goggles_left_walk, spr_starlo_goggles_up_walk, spr_starlo_goggles_right_talk, spr_starlo_goggles_down_talk, spr_starlo_goggles_left_talk);
        break;
    
    case 37:
        cutscene_npc_walk(actor_ace, actor_clover.x, actor_clover.y + 20, 3, "x", "up");
        break;
    
    case 38:
        cutscene_npc_action_sprite(actor_ace, actor_ace.up_sprite, 0.2, true);
        break;
    
    case 39:
        cutscene_wait(0.5);
        break;
    
    case 40:
        cutscene_npc_reset_sprite(actor_ace, "up");
        break;
    
    case 41:
        cutscene_npc_set_sprites(actor_clover, spr_pl_goggles_up, spr_pl_goggles_right, spr_pl_goggles_down, spr_pl_goggles_left, spr_pl_goggles_up, spr_pl_goggles_right, spr_pl_goggles_down, spr_pl_goggles_left);
        break;
    
    case 42:
        cutscene_wait(0.5);
        break;
    
    case 43:
        cutscene_npc_walk(actor_ace, 680, 440, 3, "y", "up");
        break;
    
    case 44:
        cutscene_wait(0.5);
        break;
    
    case 45:
        cutscene_npc_direction(actor_starlo, "left");
        break;
    
    case 46:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 1;
            message[0] = "* Now we're in business!";
            message[1] = "* Alllrighty, Clover!";
            message[2] = "* We're gonna take ten#  paces and turn to face#  each other.";
            message[3] = "* When you hear the#  \"draw\" sound...";
            message[4] = "* Grab yer gun and shoot#  me as fast as you can!";
            message[5] = "* Here we go!";
            prt[0] = spr_portrait_starlo_smile;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_normal;
            prt[3] = spr_portrait_starlo_normal;
            prt[4] = spr_portrait_starlo_point;
            prt[5] = spr_portrait_starlo_smile;
            talker[0] = actor_starlo;
            
            if (message_current == 1)
                actor_clover.npc_direction = "right";
        }
        
        break;
    
    case 47:
        cutscene_audio_fade(cutscene_music, 0, 500, 1, false, true);
        break;
    
    case 48:
        cutscene_sfx_play(mus_dual, 1);
        cutscene_npc_walk(actor_starlo, 700, 490, 2, "x", "right");
        cutscene_npc_walk(actor_clover, 740, 490, 2, "x", "left");
        cutscene_npc_walk(actor_ace, 700, 378, 3, "x", "down");
        cutscene_npc_walk(actor_mooch, 740, 375, 3, "y", "down");
        cutscene_npc_direction(actor_ed, "down");
        cutscene_npc_direction(actor_moray, "down");
        cutscene_camera_move(720, 440, 1);
        cutscene_advance(49);
        break;
    
    case 49:
        if (actor_clover.npc_arrived && actor_starlo.npc_arrived)
            cutscene_advance();
        
        break;
    
    case 50:
        cutscene_wait(1);
        break;
    
    case 51:
        cutscene_npc_walk(actor_starlo, 580, 490, 1, "x", "right");
        cutscene_npc_walk(actor_clover, 860, 490, 1, "x", "left");
        cutscene_advance(52);
        break;
    
    case 52:
        if (actor_clover.npc_arrived && actor_starlo.npc_arrived)
            cutscene_advance();
        
        break;
    
    case 53:
        cutscene_npc_action_sprite(actor_starlo, spr_starlo_goggles_shoot, 0, true);
        actor_starlo.image_index = 0;
        cutscene_npc_action_sprite(actor_clover, spr_pl_goggles_shoot, 0, true);
        cutscene_advance(54);
        break;
    
    case 54:
        if (cutscene_duel_timer == 0)
            cutscene_duel_timer = irandom_range(1, 5);
        
        cutscene_wait(cutscene_duel_timer);
        
        if (cutscene_key_prompt())
        {
            audio_play_sound(snd_fail, 1, 0);
            cutscene_advance(61);
        }
        
        break;
    
    case 55:
        cutscene_duel_timer = 0;
        cutscene_duel_delay = 10;
        instance_create(160, 90, obj_duel_mark);
        cutscene_advance();
        break;
    
    case 56:
        if (cutscene_key_prompt())
        {
            if (actor_clover.image_speed == 0)
                actor_clover.image_speed = 0.5;
        }
        
        if (actor_starlo.image_speed == 0)
        {
            if (cutscene_duel_delay > 0)
                cutscene_duel_delay -= 1;
            
            if (cutscene_duel_delay == 0)
                actor_starlo.image_speed = 0.5;
        }
        
        cutscene_sfx_play_at_frame(actor_clover, 6, snd_duel_shot);
        
        if (!audio_is_playing(snd_duel_shot))
            cutscene_sfx_play_at_frame(actor_starlo, 6, snd_shotweak);
        
        if (actor_clover.image_index >= 6)
            cutscene_advance(63);
        else
            cutscene_animation_end(actor_starlo, true);
        
        break;
    
    case 57:
        cutscene_npc_action_sprite(actor_clover, spr_pl_goggles_hit, 0.5, true, 0);
    
    case 58:
        cutscene_wait(1);
        break;
    
    case 59:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Awww, too bad!";
            message[1] = "* Let's try one more time!";
            prt[0] = spr_portrait_starlo_disappointed;
            prt[1] = spr_portrait_starlo_normal;
            talker[0] = actor_starlo;
        }
        
        break;
    
    case 60:
        cutscene_sfx_play(mus_dual_short, 1);
        cutscene_advance(53);
        break;
    
    case 61:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Whoa, whoa, whoa!";
            message[1] = "* You gotta wait for#  the signal, or it#  ain't fair!";
            message[2] = "* Let's try one more time!";
            prt[0] = spr_portrait_starlo_surprised;
            prt[1] = spr_portrait_starlo_point;
            prt[2] = spr_portrait_starlo_normal;
            talker[0] = actor_starlo;
        }
        
        break;
    
    case 62:
        cutscene_advance(53);
        break;
    
    case 63:
        cutscene_npc_action_sprite(actor_starlo, spr_starlo_goggles_hit, 0, true, 0);
        cutscene_advance(64);
        break;
    
    case 64:
        cutscene_camera_move(480, 440, 3, true);
        cutscene_advance(65);
        break;
    
    case 65:
        if (cutscene_npc_path_start(actor_starlo, 56, 2))
        {
            actor_starlo.image_index = 1;
            scr_screenshake(30, 3);
            cutscene_sfx_play(snd_rock_break, 1);
            cutscene_music_start(193);
        }
        
        break;
    
    case 66:
        cutscene_wait(2);
        break;
    
    case 67:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Ah... Clover got me...";
            prt[0] = spr_portrait_starlo_hurt;
            sndfnt_array[0] = snd_talk_starlo;
        }
        
        break;
    
    case 68:
        cutscene_npc_walk(actor_ace, 430, 445, 4, "y", "down");
        cutscene_npc_walk(actor_mooch, 470, 445, 4, "y", "down");
        cutscene_npc_walk(actor_ed, 390, 465, 3, "y", "down");
        cutscene_npc_walk(actor_moray, 510, 465, 4, "y", "down");
        cutscene_npc_walk(actor_clover, 520, 485, 4, "y", "left");
        cutscene_advance();
        break;
    
    case 69:
        if (actor_moray.npc_arrived && actor_ed.npc_arrived && actor_mooch.npc_arrived && actor_ace.npc_arrived && actor_clover.npc_arrived)
            cutscene_advance();
        
        break;
    
    case 70:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Star! Star! Are you#  okay?";
            message[1] = "* Pretty much... the#  opposite of that...";
            message[2] = "* Oh, Star... I'm so#  sorry...";
            message[3] = "* Who... who will you#  give your inheritance#  to?";
            message[4] = "* Not... you...";
            message[5] = "* Heck.";
            message[6] = "* Clover... this was...#  your...";
            message[7] = "* Emotional trauma test!";
            prt[0] = spr_portrait_moray_sweat;
            prt[1] = spr_portrait_starlo_hurt;
            prt[2] = spr_portrait_mooch_crying;
            prt[3] = spr_portrait_mooch_normal;
            prt[4] = spr_portrait_starlo_hurt;
            prt[5] = spr_portrait_mooch_nervous;
            prt[6] = spr_portrait_starlo_hurt;
            prt[7] = spr_portrait_starlo_hidden;
            talker[0] = actor_moray;
            talker[1] = -4;
            talker[2] = actor_mooch;
            talker[4] = -4;
            talker[5] = actor_mooch;
            talker[6] = -4;
            sndfnt_array[1] = snd_talk_starlo;
            sndfnt_array[4] = snd_talk_starlo;
            sndfnt_array[6] = snd_talk_starlo;
        }
        
        break;
    
    case 71:
        cutscene_music_start(184);
        break;
    
    case 72:
        if (cutscene_npc_reset_sprite(actor_starlo, "right"))
            audio_play_sound(snd_playerjump, 1, 0);
        
        break;
    
    case 73:
        cutscene_npc_path_start(actor_starlo, 58, 3);
        break;
    
    case 74:
        cutscene_wait(1);
        break;
    
    case 75:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* This job ain't all#  swelterstones and#  rainbows, ya understand?";
            message[1] = "* Ya might end up hurtin'#  someone and must carry#  that weight on yer back.";
            message[2] = "* Hope I didn't scar ya!";
            message[3] = "* Anyway, you pass!";
            message[4] = "* I'll be waitin' in the#  Saloon again when ye're#  ready for mission three!";
            message[5] = "* I'm seein' good things#  in ya, kid!";
            prt[0] = spr_portrait_starlo_point;
            prt[1] = spr_portrait_starlo_serious;
            prt[2] = spr_portrait_starlo_normal;
            prt[3] = spr_portrait_starlo_smile;
            prt[4] = spr_portrait_starlo_normal;
            prt[5] = spr_portrait_starlo_normal;
            talker[0] = actor_starlo;
        }
        
        break;
    
    case 76:
        cutscene_npc_walk(actor_starlo, 700, 180, 3, "x", "up", 1872);
        cutscene_advance();
        break;
    
    case 77:
        cutscene_wait(2);
        break;
    
    case 78:
        if (cutscene_npc_walk(actor_ace, actor_clover.x, actor_clover.y + 20, 3, "y", "up"))
            cutscene_advance(79);
        
        cutscene_npc_walk(actor_mooch, 160, 380, 3, "x", "up");
        cutscene_npc_walk(actor_ed, 160, 380, 3, "x", "right");
        cutscene_npc_walk(actor_moray, 160, 380, 3, "y", "left");
        break;
    
    case 79:
        if (cutscene_dialogue())
            instance_destroy(actor_clover);
        
        with (msg)
        {
            message[0] = "* Here's your iron. Also,#  I'll be needing those#  glasses.";
            prt[0] = spr_portrait_ace_stern;
            talker[0] = actor_ace;
        }
        
        break;
    
    case 80:
        cutscene_npc_walk(actor_ace, __view_get(e__VW.XView, 0) - 20, actor_ace.y, 3, "x", "up");
        break;
    
    case 81:
        cutscene_camera_move(520, 485, 3, false);
        break;
    
    case 82:
        cutscene_audio_fade(cutscene_music, 0, 300, 0.35, false, true);
        break;
    
    case 83:
        scr_cutscene_end();
        instance_destroy(actor_starlo);
        instance_destroy(actor_ed);
        instance_destroy(actor_moray);
        instance_destroy(actor_mooch);
        instance_destroy(actor_ace);
        __view_set(e__VW.Object, 0, obj_pl);
        global.dunes_flag[20] = 5;
        instance_destroy();
        instance_create(720, 380, obj_determination);
        audio_stop_sound(cutscene_music);
        scr_radio_restart();
        scr_radio_fade(1, 0);
        break;
}
