var actor_starlo = 1169;
var actor_ed = 1162;
var actor_ace = 1158;
var actor_mooch = 1165;
var actor_moray = 1167;
var actor_ceroba = obj_ceroba_npc;
var actor_clover = obj_player_npc;

switch (scene)
{
    case 0:
        if (cutscene_wait(1.5))
            cutscene_advance(6);
        
        break;
    
    case 1:
        cutscene_fade_in(actor_starlo, 2);
        break;
    
    case 2:
        cutscene_npc_walk(actor_starlo, actor_starlo.x, 270, 3, "y", "down", "nothing", 640, 270, 720, 375);
        cutscene_advance();
        break;
    
    case 3:
        cutscene_wait(0.4);
        break;
    
    case 4:
        cutscene_fade_in(actor_clover, 2);
        break;
    
    case 5:
        cutscene_npc_walk(actor_clover, actor_clover.x, 270, 3, "y", "down", "nothing", 640, 270, 700, 375);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            talker[0] = actor_starlo;
            message[0] = "* You know the drill,#  team!";
            message[1] = "* Ain't no time to be#  lazin' 'round.";
            prt[0] = spr_portrait_starlo_hidden;
            prt[1] = spr_portrait_starlo_normal;
        }
        
        break;
    
    case 7:
        cutscene_audio_fade(cutscene_music, 0, 500, 0.25, false);
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        instance_create(900, 440, obj_wild_east_tumbleweed);
        cutscene_advance();
        break;
    
    case 10:
        cutscene_wait(4);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Uh, hellooo?";
            message[1] = "* Where is everyone?";
            prt[0] = spr_portrait_starlo_surprised;
            prt[1] = spr_portrait_starlo_sweat;
            talker[0] = actor_starlo;
        }
        
        break;
    
    case 12:
        cutscene_npc_direction(actor_starlo, "up");
        break;
    
    case 13:
        audio_play_sound(snd_wild_east_bell, 1, 0);
        
        with (obj_wild_east_bell)
        {
            image_speed = 1/3;
            alarm[0] = 75;
        }
        
        cutscene_advance();
        break;
    
    case 14:
        if (!audio_is_playing(snd_wild_east_bell))
            cutscene_advance();
        
        break;
    
    case 15:
        cutscene_npc_direction(actor_starlo, "down");
        break;
    
    case 16:
        cutscene_wait(0.5);
        break;
    
    case 17:
        cutscene_npc_direction(actor_starlo, "left");
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Sorry 'bout this,#  Clover. They should be#  here any second no-   ";
            prt[0] = spr_portrait_starlo_plain;
            talker[0] = actor_starlo;
            skippable = false;
            
            if (cutoff == string_length(message[message_current]))
            {
                with (other)
                    cutscene_advance();
                
                global.dialogue_open = false;
            }
        }
        
        break;
    
    case 19:
        if (cutscene_dialogue())
        {
            cutscene_music_start(202);
            cutscene_advance(20);
        }
        
        with (msg)
        {
            message[0] = "* Star, what is happening#  on the west end of town?";
            prt[0] = spr_portrait_ceroba_neutral;
            talker[0] = actor_ceroba;
        }
        
        break;
    
    case 20:
        cutscene_npc_walk(actor_ceroba, 620, 400, 2, "y", "right");
        actor_clover.npc_direction = "left";
        break;
    
    case 21:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Would you care to#  explain?";
            message[1] = "* WHAT???";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_starlo_blush;
            talker[0] = actor_ceroba;
            talker[1] = actor_starlo;
        }
        
        break;
    
    case 22:
        cutscene_npc_walk(actor_starlo, actor_ceroba.x + 60, actor_ceroba.y, 4, "y", "left");
        break;
    
    case 23:
        if (cutscene_dialogue())
            scr_audio_fade_out(cutscene_music, 300);
        
        with (msg)
        {
            message[0] = "* Is anyone in danger???";
            message[1] = "* Well... no probably not-";
            message[2] = "* THEY ARE????";
            message[3] = "* By George! This must be#  an attack from Vengeful#  Virgil!";
            message[4] = "* Vengeful... Virgil?";
            message[5] = "* Who is that?";
            message[6] = "* Ceroba, come on!";
            message[7] = "* We drew his wanted#  poster last month!";
            message[8] = "* It's on the news#  board...";
            message[9] = "* You helped me find the#  thumb tacks and#  everythin'...";
            message[10] = "* Um...";
            message[11] = "* Oh yeah!";
            message[12] = "* Well, you better go#  stop him then!";
            message[13] = "* What are you waiting#  for?";
            message[14] = "* That's the spirit!";
            message[15] = "* Let's put a stop to#  this, Clover!";
            prt[0] = spr_portrait_starlo_serious;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_starlo_blush;
            prt[3] = spr_portrait_starlo_normal;
            prt[4] = spr_portrait_ceroba_surprised;
            prt[5] = spr_portrait_ceroba_alt;
            prt[6] = spr_portrait_starlo_embarassed;
            prt[7] = spr_portrait_starlo_embarassed;
            prt[8] = spr_portrait_starlo_disappointed;
            prt[9] = spr_portrait_starlo_disappointed;
            prt[10] = spr_portrait_ceroba_confounded;
            prt[11] = spr_portrait_ceroba_surprised;
            prt[12] = spr_portrait_ceroba_nervous_smile;
            prt[13] = spr_portrait_ceroba_nervous_smile;
            prt[14] = spr_portrait_starlo_normal;
            prt[15] = spr_portrait_starlo_normal;
            talker[0] = actor_starlo;
            talker[1] = actor_ceroba;
            talker[2] = actor_starlo;
            talker[4] = actor_ceroba;
            talker[6] = actor_starlo;
            talker[10] = actor_ceroba;
            talker[14] = actor_starlo;
            
            if (message_current == 1)
            {
                skippable = false;
                
                if (cutoff == string_length(message[message_current]))
                {
                    message_current += 1;
                    cutoff = 0;
                }
            }
            else
            {
                skippable = true;
            }
        }
        
        break;
    
    case 24:
        cutscene_event_wildeast_stamp(1262, 253, 150, 2, 50);
        break;
    
    case 25:
        cutscene_npc_walk(actor_starlo, 120, 480, 4, "y", "left", false);
        cutscene_music_start(203);
        break;
    
    case 26:
        if (actor_clover.x > (actor_starlo.x - 40))
        {
            cutscene_npc_walk(actor_clover, 120, 500, 4, "y", "left", false);
            cutscene_advance();
        }
        
        break;
    
    case 27:
        if (actor_ceroba.x > (actor_clover.x - 40))
        {
            cutscene_npc_walk(actor_ceroba, 120, 440, 4, "y", "left", false);
            cutscene_advance();
        }
        
        break;
    
    case 28:
        if (actor_ceroba.npc_arrived && actor_clover.npc_arrived && actor_starlo.npc_arrived)
            cutscene_advance();
        
        break;
    
    case 29:
        cutscene_wait(2);
        break;
    
    case 30:
        cutscene_npc_direction(actor_starlo, "up");
        break;
    
    case 31:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Huh.";
            message[1] = "* You sure you saw#  somethin' troublin'#  here?";
            message[2] = "* Look down.";
            prt[0] = spr_portrait_starlo_serious;
            prt[1] = spr_portrait_starlo_distracted;
            prt[2] = spr_portrait_ceroba_muttering;
            talker[0] = actor_starlo;
            talker[2] = actor_ceroba;
        }
        
        break;
    
    case 32:
        cutscene_npc_direction(actor_starlo, "left");
        break;
    
    case 33:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* GASP!";
            prt[0] = spr_portrait_starlo_blush;
            talker[0] = actor_starlo;
        }
        
        break;
    
    case 34:
        if (cutscene_move_all(false, 5, 160, 1000001, 1000004, true, false))
            audio_play_sound(snd_wild_east_shocking_sound, 1, 0);
        
        break;
    
    case 35:
        cutscene_wait(2);
        break;
    
    case 36:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Hey! I did not sign up#  for this!";
            message[1] = "* Get me out of here!";
            message[2] = "* Ed! Keep it down! I#  need to focus!";
            message[3] = "* How in the heck will I#  solve this colossal#  conundrum?";
            message[4] = "* Just untie them.";
            message[5] = "* And risk being tricked#  into a booby trap?";
            message[6] = "* Touching those ropes is#  exactly what Virgil#  wants!";
            message[7] = "* ...What?";
            message[8] = "* This is scary, Star!";
            message[9] = "* I'm afraid you must#  choose which track the#  train travels on!";
            message[10] = "* Yeah! Choose Ed!";
            message[11] = "* Mooch, you are dead to#  me.";
            message[12] = "* Unless Star chooses you#  instead.";
            message[13] = "* ...That's cold.";
            message[14] = "* This is all too#  overwhelmin'! I can't#  do it!";
            message[15] = "* Then have Clover choose.";
            message[16] = "* Of course!";
            message[17] = "* Clover don't have no#  emotional attachment to#  y'all!";
            message[18] = "* Should be simple!";
            message[19] = "* Don't you think this is#  a bit much?";
            message[20] = "* Nah, it's easy!";
            message[21] = "* Choose to leave the#  track as is...";
            message[22] = "* It won't be yer fault#  but many monsters get#  hit.";
            message[23] = "* Choose to change the#  track...";
            message[24] = "* It'll be by yer hand#  but only Ed gets hit.";
            message[25] = "* Not as much of a#  sacrifice.";
            message[26] = "* What did I do to#  deserve this?";
            prt[0] = spr_portrait_ed_mad;
            prt[1] = spr_portrait_ed_mad;
            prt[2] = spr_portrait_starlo_point;
            prt[3] = spr_portrait_starlo_serious;
            prt[4] = spr_portrait_ceroba_unamused;
            prt[5] = spr_portrait_starlo_flustered;
            prt[6] = spr_portrait_starlo_point;
            prt[7] = spr_portrait_ceroba_alt;
            prt[8] = spr_portrait_moray_sweat;
            prt[9] = spr_portrait_moray_downer;
            prt[10] = spr_portrait_mooch_smirk;
            prt[11] = spr_portrait_ed_mutter;
            prt[12] = spr_portrait_mooch_happy;
            prt[13] = spr_portrait_ed_mutter;
            prt[14] = spr_portrait_starlo_plain;
            prt[15] = spr_portrait_ace_stern;
            prt[16] = spr_portrait_starlo_point;
            prt[17] = spr_portrait_starlo_smirk;
            prt[18] = spr_portrait_starlo_normal;
            prt[19] = spr_portrait_ceroba_nervous;
            prt[20] = spr_portrait_starlo_smile;
            prt[21] = spr_portrait_starlo_point;
            prt[22] = spr_portrait_starlo_serious;
            prt[23] = spr_portrait_starlo_distracted;
            prt[24] = spr_portrait_starlo_serious;
            prt[25] = spr_portrait_starlo_serious;
            prt[26] = spr_portrait_ed_mutter;
            talker[0] = actor_ed;
            talker[2] = actor_starlo;
            talker[4] = actor_ceroba;
            talker[5] = actor_starlo;
            talker[7] = actor_ceroba;
            talker[8] = actor_moray;
            talker[10] = actor_mooch;
            talker[11] = actor_ed;
            talker[12] = actor_mooch;
            talker[13] = actor_ed;
            talker[14] = actor_starlo;
            talker[15] = actor_ace;
            talker[16] = actor_starlo;
            talker[17] = actor_starlo;
            talker[19] = actor_ceroba;
            talker[20] = actor_starlo;
            talker[26] = actor_ed;
        }
        
        break;
    
    case 37:
        cutscene_sfx_play(snd_wild_east_train_horn, 0.65);
        break;
    
    case 38:
        if (audio_is_playing(snd_wild_east_train_horn))
            exit;
        
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* We're out of time!";
            message[1] = "* If only we coulda#  untied everyone!";
            message[2] = "* If only.";
            message[3] = "* You gotta choose now,#  Clover!";
            prt[0] = spr_portrait_starlo_point;
            prt[1] = spr_portrait_starlo_plain;
            prt[2] = spr_portrait_ceroba_unamused;
            prt[3] = spr_portrait_starlo_point;
            talker[0] = actor_starlo;
            talker[2] = actor_ceroba;
            talker[3] = actor_starlo;
        }
        
        break;
    
    case 39:
        if (!instance_exists(obj_wild_east_train_lever))
        {
            prop_lever = instance_create(__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) + 35, actor_clover.y + 40, obj_wild_east_train_lever);
            prop_lever.hspeed = (((__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) + 40) - actor_clover.x) / 60) * -2;
            audio_play_sound(snd_slide_whistle, 1, 0);
        }
        
        if (prop_lever.hspeed < 0)
        {
            prop_lever.hspeed += 0.05;
        }
        else
        {
            cutscene_advance(40);
            prop_lever.hspeed = 0;
        }
        
        break;
    
    case 40:
        instance_create(0, 0, obj_train_choice);
        cutscene_advance();
        break;
    
    case 41:
        if (obj_train_choice.selection_confirmed == true)
        {
            if (obj_train_choice.selection == 0)
                cutscene_advance(42);
            
            if (obj_train_choice.selection == 1)
            {
                prop_lever.image_speed = 0.2;
                cutscene_advance(49);
            }
        }
        
        break;
    
    case 42:
        cutscene_sfx_play(snd_wild_east_train_horn, 1);
        break;
    
    case 43:
        if (audio_is_playing(snd_wild_east_train_horn))
            exit;
        
        if (!instance_exists(obj_wild_east_npc_train))
            actor_train = instance_create(actor_mooch.x, 310, obj_wild_east_npc_train);
        
        cutscene_advance();
        break;
    
    case 44:
        cutscene_camera_move(obj_camera.x, 400, 2, false);
        break;
    
    case 45:
        if (cutscene_npc_walk(actor_train, actor_train.x, actor_mooch.y - 30, 1, "y", "down"))
        {
            audio_play_sound(snd_mo_kick, 1, 0);
            scr_screenshake(3, 2);
        }
        
        scr_audio_fade_out(cutscene_music, 100);
        break;
    
    case 46:
        cutscene_npc_action_sprite(actor_train, spr_npc_train_fall, 0.3, true, 0, snd_mart_impact_3, 3);
        break;
    
    case 47:
        cutscene_wait(1);
        break;
    
    case 48:
        if (cutscene_dialogue())
        {
            cutscene_advance(55);
            global.dunes_flag[23] = 1;
        }
        
        with (msg)
        {
            message[0] = "* Ouch!";
            message[1] = "* You owe me for this.";
            message[2] = "* Clover... I thought we#  were friends.";
            message[3] = "* Eh, I'm okay with it.";
            message[4] = "* Ha! Clover likes me#  more!";
            message[5] = "* Now, now.";
            message[6] = "* This decision was a#  tough'n.";
            message[7] = "* Having the casualty be#  on your hands is a lot#  to handle, mentally.";
            message[8] = "* There's a lot more to#  it than that, Star.";
            message[9] = "* This is a deep scenario#  that requires a lot of#  thinking.";
            message[10] = "* We don't have time fer#  thinkin'!";
            message[11] = "* This was a test of#  judgment and Clover#  passed!";
            message[12] = "* Passed? How exactly?";
            message[13] = "* Aah, quit bein' so#  technical 'bout#  everythin', Moray.";
            message[14] = "* Clover saved Ed.#  That's... pretty good.";
            message[15] = "* I can't tell if that#  was an insult.";
            message[16] = "* Anywho. I'll see ya at#  the usual spot, kid.";
            message[17] = "* Come to me when ye're#  ready for the final#  mission!";
            prt[0] = spr_portrait_mooch_surprised;
            prt[1] = spr_portrait_mooch_nervous;
            prt[2] = spr_portrait_moray_downer;
            prt[3] = spr_portrait_ace_smile;
            prt[4] = spr_portrait_ed_smile;
            prt[5] = spr_portrait_starlo_serious;
            prt[6] = spr_portrait_starlo_point;
            prt[7] = spr_portrait_starlo_distracted;
            prt[8] = spr_portrait_ceroba_closed_eyes;
            prt[9] = spr_portrait_ceroba_alt;
            prt[10] = spr_portrait_starlo_point;
            prt[11] = spr_portrait_starlo_serious;
            prt[12] = spr_portrait_moray_disbelief;
            prt[13] = spr_portrait_starlo_embarassed;
            prt[14] = spr_portrait_starlo_distracted;
            prt[15] = spr_portrait_ed_mutter;
            prt[16] = spr_portrait_starlo_normal;
            prt[17] = spr_portrait_starlo_normal;
            talker[0] = actor_mooch;
            talker[2] = actor_moray;
            talker[3] = actor_ace;
            talker[4] = actor_ed;
            talker[5] = actor_starlo;
            talker[8] = actor_ceroba;
            talker[10] = actor_starlo;
            talker[12] = actor_moray;
            talker[13] = actor_starlo;
            talker[15] = actor_ed;
            talker[16] = actor_starlo;
        }
        
        break;
    
    case 49:
        if (audio_is_playing(snd_wild_east_train_horn))
            exit;
        
        if (!instance_exists(obj_wild_east_npc_train))
            actor_train = instance_create(actor_ed.x, 310, obj_wild_east_npc_train);
        
        cutscene_advance();
        break;
    
    case 50:
        cutscene_camera_move(obj_camera.x, 400, 2, false);
        break;
    
    case 51:
        scr_audio_fade_out(cutscene_music, 100);
        
        if (cutscene_npc_walk(actor_train, actor_train.x, actor_ed.y - 30, 1, "y", "down"))
        {
            audio_play_sound(snd_mo_kick, 1, 0);
            scr_screenshake(3, 2);
        }
        
        break;
    
    case 52:
        cutscene_wait(1);
        break;
    
    case 53:
        cutscene_npc_action_sprite(actor_train, spr_npc_train_fall, 0.3, true, 0, snd_mart_impact_3, 3);
        break;
    
    case 54:
        if (cutscene_dialogue())
        {
            cutscene_advance(55);
            global.dunes_flag[23] = 0;
        }
        
        with (msg)
        {
            message[0] = "* Oof!";
            message[1] = "* Clover! How could you!?";
            message[2] = "* Is this about me#  carrying ya earlier?#  Did I hurt ya?";
            message[3] = "* Now, now!";
            message[4] = "* In defense of Clover,#  they just saved many#  lives.";
            message[5] = "* I guess that's true...";
            message[6] = "* Clover proved that they#  were willing to#  sacrifice to be a hero.";
            message[7] = "* Quite noble, don'tcha#  think, Ceroba?";
            message[8] = "* There's a lot of layers#  to this scenario.";
            message[9] = "* I believe it's more of#  a gray are-  ";
            message[10] = "* Quite noble indeed.";
            message[11] = "* This was a test of yer#  judgment.";
            message[12] = "* I'd say you passed,#  buddy!";
            message[13] = "* I'll be in the usual#  spot for yer final task!";
            prt[0] = spr_portrait_ed_mutter;
            prt[1] = spr_portrait_ed_normal;
            prt[2] = spr_portrait_ed_mutter;
            prt[3] = spr_portrait_starlo_hidden;
            prt[4] = spr_portrait_starlo_point;
            prt[5] = spr_portrait_ed_mutter;
            prt[6] = spr_portrait_starlo_point;
            prt[7] = spr_portrait_starlo_distracted;
            prt[8] = spr_portrait_ceroba_neutral;
            prt[9] = spr_portrait_ceroba_closed_eyes;
            prt[10] = spr_portrait_starlo_hidden;
            prt[11] = spr_portrait_starlo_normal;
            prt[12] = spr_portrait_starlo_smile;
            prt[13] = spr_portrait_starlo_normal;
            talker[0] = actor_ed;
            talker[3] = actor_starlo;
            talker[5] = actor_ed;
            talker[6] = actor_starlo;
            talker[8] = actor_ceroba;
            talker[10] = actor_starlo;
            
            if (message_current == 9)
            {
                skippable = false;
                
                if (cutoff == string_length(message[message_current]))
                {
                    message_current += 1;
                    cutoff = 0;
                }
            }
            else
            {
                skippable = true;
            }
        }
        
        break;
    
    case 55:
        cutscene_npc_walk(actor_starlo, 420, actor_starlo.y, 3, "x", "right");
        break;
    
    case 56:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Sigh...";
            message[1] = "* See you around.";
            prt[0] = spr_portrait_ceroba_unamused;
            prt[1] = spr_portrait_ceroba_muttering;
            talker[0] = actor_ceroba;
        }
        
        break;
    
    case 57:
        cutscene_npc_walk(actor_ceroba, 420, actor_ceroba.y, 3, "x", "right");
        break;
    
    case 58:
        cutscene_sfx_play(snd_doorclose, 1);
        instance_destroy(actor_ceroba);
        instance_destroy(actor_starlo);
        break;
    
    case 59:
        cutscene_wait(1);
        break;
    
    case 60:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Hey! Is anyone gonna#  untie us?";
            prt[0] = spr_portrait_moray_sweat;
            talker[0] = actor_moray;
        }
        
        break;
    
    case 61:
        cutscene_move_all(false, -5, 160, 1000001, 1000004, true, false);
        break;
    
    case 62:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 5);
        break;
    
    case 63:
        scr_cutscene_end();
        instance_create(720, 380, obj_determination);
        instance_destroy(actor_clover);
        __view_set(e__VW.Object, 0, obj_pl);
        instance_destroy();
        global.dunes_flag[20] = 7;
        scr_radio_restart();
        break;
}
