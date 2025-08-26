var actor_starlo;

if (instance_exists(obj_starlo_npc))
    actor_starlo = 1169;

var actor_ceroba;

if (instance_exists(obj_ceroba_npc))
    actor_ceroba = obj_ceroba_npc;

switch (scene)
{
    case 17:
        cutscene_wait(1);
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_ceroba;
            message[0] = "* Who have you become?";
            message[1] = "* Because this sure as#  hell isn't the Starlo#  I grew up with!";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_disapproving;
            position = 0;
        }
        
        break;
    
    case 19:
        cutscene_npc_direction(actor_clover, "down");
        break;
    
    case 20:
        cutscene_npc_walk(actor_ceroba, actor_starlo.x, actor_clover.y + 20, 1, "x", "up");
        break;
    
    case 21:
        cutscene_npc_walk_relative(actor_clover, -35, 0, 3, "x", "right");
        break;
    
    case 22:
        if (cutscene_npc_walk(actor_ceroba, actor_ceroba.x, actor_clover.y, 1, "y", "up"))
            cutscene_advance(22.5);
        
        break;
    
    case 22.5:
        if (cutscene_camera_move(actor_starlo.x, actor_starlo.y + ((actor_ceroba.y - actor_starlo.y) / 2), 2))
            cutscene_advance(23);
        
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* Ceroba...";
            message[1] = "* Now's not a good time#  for this.";
            message[2] = "* Don't kick me while#  I'm down, please.";
            prt[0] = spr_portrait_starlo_serious;
            prt[1] = spr_portrait_starlo_hurt;
            prt[2] = spr_portrait_starlo_hurt;
            
            if (message_current == 1)
                actor_starlo.npc_direction = "up";
        }
        
        actor_clover.npc_direction = "up";
        break;
    
    case 24:
        cutscene_wait(0.5);
        break;
    
    case 25:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_ceroba;
            message[0] = "* I'm... I'm sorry, Star.";
            message[1] = "* I know this is#  weighing heavily on you#  but listen...";
            message[2] = "* None of us hate you.#  The REAL you.";
            message[3] = "* We adore you!";
            message[4] = "* What we hate is this#  false, reckless persona#  you've created.";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_neutral;
            prt[2] = spr_portrait_ceroba_neutral;
            prt[3] = spr_portrait_ceroba_smile;
            prt[4] = spr_portrait_ceroba_disapproving;
            talker[5] = actor_starlo;
            message[5] = "* ...";
            prt[5] = spr_portrait_starlo_disappointed;
            talker[6] = actor_ceroba;
            message[6] = "* I have my own baggage.#  We all do.";
            message[7] = "* I don't even know if I#  have room to say this#  but...";
            message[8] = "* Bring him back.";
            message[9] = "* Bring back the#  innocent farmer I once#  knew.";
            prt[6] = spr_portrait_ceroba_closed_eyes;
            prt[7] = spr_portrait_ceroba_alt;
            prt[8] = spr_portrait_ceroba_neutral;
            prt[9] = spr_portrait_ceroba_smile;
            talker[10] = actor_starlo;
            message[10] = "* I just... wanted to be#  appreciated. Revered by#  all.";
            message[11] = "* I was trying to provide#  a slice of the Surface#  where we have none.";
            prt[10] = spr_portrait_starlo_disappointed;
            prt[11] = spr_portrait_starlo_disappointed;
            talker[12] = actor_ceroba;
            message[12] = "* There's nothing wrong#  with that.";
            message[13] = "* I'm not even telling#  you to quit running the#  town.";
            message[14] = "* Just don't let this#  identity consume you.#  It isn't healthy.";
            prt[12] = spr_portrait_ceroba_neutral;
            prt[13] = spr_portrait_ceroba_neutral;
            prt[14] = spr_portrait_ceroba_disapproving;
        }
        
        break;
    
    case 26:
        cutscene_wait(0.5);
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* ...";
            prt[0] = spr_portrait_starlo_hurt;
        }
        
        break;
    
    case 28:
        cutscene_wait(0.45);
        break;
    
    case 29:
        cutscene_npc_direction(actor_starlo, "right");
        break;
    
    case 30:
        cutscene_wait(0.45);
        break;
    
    case 31:
        cutscene_npc_direction(actor_starlo, "down");
        break;
    
    case 32:
        cutscene_music_start(192, 500);
        break;
    
    case 33:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* ...Very well.";
            message[1] = "* Clover, I'm terribly#  sorry for attacking#  you.";
            message[2] = "* I do value your#  friendship and the time#  we've spent together.";
            message[3] = "* You have every right#  to make fun but...";
            prt[0] = spr_portrait_starlo_disappointed;
            prt[1] = spr_portrait_starlo_disappointed;
            prt[2] = spr_portrait_starlo_plain;
            prt[3] = spr_portrait_starlo_hurt;
        }
        
        break;
    
    case 34:
        cutscene_npc_action_sprite(actor_starlo, spr_starlo_hat, 0.25, true, 0);
        break;
    
    case 35:
        cutscene_npc_set_sprites(actor_starlo, spr_starlo_up_walk, spr_starlo_right_walk, spr_starlo_down_walk, spr_starlo_left_walk, spr_starlo_up_talk, spr_starlo_right_talk, spr_starlo_down_talk_hat, spr_starlo_left_talk);
        break;
    
    case 36:
        cutscene_npc_reset_sprite(actor_starlo, "down");
        break;
    
    case 37:
        cutscene_wait(0.25);
        break;
    
    case 38:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* This is who I really#  am.";
            message[1] = "* I'm not a real#  sheriff... just some#  nobody farmer.";
            prt[0] = spr_portrait_starlo_nohat_sad;
            prt[1] = spr_portrait_starlo_nohat_sad;
            talker[2] = actor_ceroba;
            message[2] = "* Don't say that, Star.";
            message[3] = "* You may not be a real#  sheriff but...";
            message[4] = "* You're certainly the#  best sheriff I'VE ever#  known!";
            prt[2] = spr_portrait_ceroba_neutral;
            prt[3] = spr_portrait_ceroba_closed_eyes;
            prt[4] = spr_portrait_ceroba_snarky;
        }
        
        break;
    
    case 39:
        cutscene_wait(0.25);
        break;
    
    case 40:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* Yeah...";
            message[1] = "* I suppose I am KINDA#  cool.";
            prt[0] = spr_portrait_starlo_nohat_happy;
            prt[1] = spr_portrait_starlo_nohat_smile;
            talker[2] = actor_ceroba;
            message[2] = "* Darn right!";
            prt[2] = spr_portrait_ceroba_happy;
            talker[3] = actor_starlo;
            message[3] = "* But...";
            prt[3] = spr_portrait_starlo_nohat_normal;
        }
        
        break;
    
    case 41:
        cutscene_npc_action_sprite(actor_starlo, actor_starlo.up_sprite, 0.2, true, 0.2, snd_tarpdrop, 0);
        break;
    
    case 42:
        cutscene_wait(0.25);
        break;
    
    case 43:
        cutscene_npc_set_sprites(actor_starlo, spr_starlo_up_walk, spr_starlo_sad_right_walk, spr_starlo_sad_down_walk, spr_starlo_sad_left_walk, spr_starlo_up_talk, spr_starlo_sad_right_talk, spr_starlo_sad_down_talk, spr_starlo_sad_left_talk);
        break;
    
    case 44:
        cutscene_npc_reset_sprite(actor_starlo, "down");
    
    case 45:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_ceroba;
            talker[1] = actor_starlo;
            talker[3] = actor_ceroba;
            talker[4] = actor_starlo;
            talker[5] = actor_ceroba;
            talker[11] = actor_starlo;
            talker[12] = actor_ceroba;
            talker[16] = actor_starlo;
            talker[17] = actor_ceroba;
            message[0] = "* Save it. We have a#  posse to reunite!";
            message[1] = "* Oh yeah! Ed and the#  others deserve an#  apology.";
            message[2] = "* I feel really bad for#  hurting them...";
            message[3] = "* I'm sure they'll#  forgive you.";
            message[4] = "* I hope so...";
            message[5] = "* ...";
            message[6] = "* Clover, I... wish you#  luck on your journey.";
            message[7] = "* I can tell you've#  fought your fair share#  of battles.";
            message[8] = "* Your skill is almost...#  intimidating.";
            message[9] = "* I had a plan for us to#  travel together but you#  don't need me.";
            message[10] = "* After all, I have a#  sheriff on my side.";
            message[11] = "* Heh, that's right,#  missy!";
            message[12] = "* Don't push your luck,#  Star.";
            message[13] = "* Anyway, just head north#  and you'll find a#  shortcut to Hotland.";
            message[14] = "* I...";
            message[15] = "* ...Nevermind.";
            message[16] = "* ...You okay?";
            message[17] = "* Me? I'm fine.";
            message[18] = "* ...";
            message[19] = "* I uh... had something#  in Oasis Valley to#  attend. I gotta go.";
            message[20] = "* Goodbye, Clover.";
            prt[0] = spr_portrait_ceroba_snarky;
            prt[1] = spr_portrait_starlo_sweat;
            prt[2] = spr_portrait_starlo_disappointed;
            prt[3] = spr_portrait_ceroba_smile;
            prt[4] = spr_portrait_starlo_disappointed;
            prt[5] = spr_portrait_ceroba_neutral;
            prt[6] = spr_portrait_ceroba_neutral;
            prt[7] = spr_portrait_ceroba_smile;
            prt[8] = spr_portrait_ceroba_snarky;
            prt[9] = spr_portrait_ceroba_neutral;
            prt[10] = spr_portrait_ceroba_smile;
            prt[11] = spr_portrait_starlo_smirk;
            prt[12] = spr_portrait_ceroba_closed_eyes;
            prt[13] = spr_portrait_ceroba_neutral;
            prt[14] = spr_portrait_ceroba_disapproving;
            prt[15] = spr_portrait_ceroba_neutral;
            prt[16] = spr_portrait_starlo_serious;
            prt[17] = spr_portrait_ceroba_surprised;
            prt[18] = spr_portrait_ceroba_disapproving;
            prt[19] = spr_portrait_ceroba_neutral;
            prt[20] = spr_portrait_ceroba_smile;
            
            switch (message_current)
            {
                case 0:
                    position = 0;
                    break;
                
                case 4:
                    actor_starlo.npc_direction = "right";
                    break;
                
                case 5:
                    actor_starlo.npc_direction = "down";
                    break;
                
                case 6:
                    actor_ceroba.npc_direction = "left";
                    other.actor_clover.npc_direction = "right";
                    position = 1;
                    break;
                
                case 10:
                    actor_ceroba.npc_direction = "up";
                    break;
                
                case 11:
                    position = 0;
                    break;
                
                case 13:
                    actor_ceroba.npc_direction = "left";
                    break;
                
                case 17:
                    actor_ceroba.npc_direction = "up";
                    break;
                
                case 20:
                    actor_ceroba.npc_direction = "left";
                    break;
            }
        }
        
        break;
    
    case 46:
        cutscene_wait(0.25);
        scr_audio_fade_out(mus_renewed, 500);
        break;
    
    case 47:
        cutscene_npc_walk(actor_ceroba, actor_ceroba.x, __view_get(e__VW.WView, 0) + 50, 3, "y", "down");
        
        if (actor_ceroba.y > (actor_clover.y + 20))
            actor_clover.npc_direction = "down";
        
        break;
    
    case 48:
        cutscene_wait(0.5);
        no_loop_badge = false;
        break;
    
    case 49:
        cutscene_dialogue();
        actor_clover.npc_direction = "up";
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* That was strange... but#  it's not your problem. ";
            message[1] = "* You need to get a move#  on.\t";
            message[2] = "* Oh! I almost forgot#  something very#  important!\t";
            message[3] = "* Here!";
            prt[0] = spr_portrait_starlo_serious;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_surprised;
            prt[3] = spr_portrait_starlo_normal;
        }
        
        actor_starlo.npc_direction = "down";
        break;
    
    case 50:
        cutscene_npc_set_sprites(actor_starlo, spr_starlo_up_walk, spr_starlo_right_walk, spr_starlo_down_walk, spr_starlo_left_walk, spr_starlo_up_talk, spr_starlo_right_talk, spr_starlo_down_talk, spr_starlo_left_talk);
        break;
        cutscene_npc_walk(actor_starlo, actor_starlo.x, actor_clover.y - 30, 2, "y", "down");
        cutscene_advance(51);
        break;
    
    case 51:
        cutscene_npc_walk(actor_clover, actor_starlo.x, actor_clover.y, 2, "x", "up");
        break;
    
    case 52:
        cutscene_wait(0.25);
        break;
    
    case 53:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = -4;
            talker[1] = obj_starlo_npc;
            sndfnt_array[0] = snd_talk_default;
            sndfnt_array[1] = snd_talk_starlo;
            message[0] = "* (You got the Deputy#  Badge!)";
            message[1] = "* Despite a few hiccups,#  our little adventure was#  a blast.";
            message[2] = "* I'll be seein' ya#  around, partner!";
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_smile;
            
            if (message_current == 0 && other.no_loop_badge == false)
            {
                audio_play_sound(snd_success, 1, 0);
                other.no_loop_badge = true;
            }
        }
        
        break;
    
    case 54:
        cutscene_npc_action_sprite(actor_starlo, spr_starlo_pose, 1/3, true, 0, snd_shotstrong, 5);
        break;
    
    case 55:
        cutscene_wait(1);
        break;
    
    case 56:
        cutscene_npc_action_sprite(actor_clover, spr_dunes_43_clover_pose, 1/3, true, 0, snd_achoo, 6);
        break;
    
    case 57:
        cutscene_wait(1);
        break;
    
    case 58:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_starlo;
            message[0] = "* I'm so proud!";
            prt[0] = spr_portrait_starlo_flustered;
            position = 0;
        }
        
        break;
    
    case 59:
        cutscene_wait(1);
        actor_clover.action_sprite = false;
        break;
    
    case 60:
        cutscene_npc_walk(obj_player_npc, actor_starlo.x - 30, actor_clover.y, 3, "x", "right");
        break;
    
    case 61:
        cutscene_wait(0.25);
        break;
    
    case 62:
        cutscene_npc_walk(actor_starlo, actor_starlo.x, __view_get(e__VW.WView, 0) + 50, 3, "y", "down");
        
        if (actor_starlo.y > (actor_clover.y + 20))
            actor_clover.npc_direction = "down";
        
        break;
    
    case 63:
        cutscene_npc_walk(actor_clover, actor_starlo.x, actor_clover.y, 2, "x", "down");
        break;
    
    case 64:
        cutscene_wait(0.5);
        break;
    
    case 65:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* Clover! Clover!";
            prt[0] = spr_martlet_head_happy;
        }
        
        break;
    
    case 66:
        cutscene_instance_create(actor_clover.x, actor_clover.y + 220, obj_martlet_npc);
        break;
    
    case 67:
        cutscene_npc_walk(obj_martlet_npc, 160, 220, 3, "x", "up");
        break;
    
    case 68:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* I just passed Ceroba#  and that North Star#  fella.";
            message[1] = "* Did you all patch#  everything up?";
            message[2] = "* -Oh yeah, hi!";
            message[3] = "* So I have good news and#  bad news.";
            message[4] = "* I'll start with the#  good:";
            message[5] = "* Ceroba was kind enough#  to free me!";
            message[6] = "* She's an old#  acquaintance of mine so#  it was a nice surprise.";
            message[7] = "* She knows I won't tell#  ASGORE about this, so no#  worries!";
            message[8] = "* Now that that's taken#  care of... the bad news.";
            message[9] = "* I'm about to go back on#  my word, sadly.";
            message[10] = "* I know I JUST said I#  wouldn't leave your side#  but then... ya know... \t";
            message[11] = "* ...This crazy detour#  happened.";
            message[12] = "* I also realize I threw#  my job to the wind to#  travel with you but...";
            message[13] = "* Since the imprisonment#  took up so much time, I#  have to go back.";
            message[14] = "* If I don't at LEAST#  clock in,";
            message[15] = "* the Royal Guard#  will grow suspicious!";
            message[16] = "* Plus, Ava is totalled.#  It was their property.";
            message[17] = "* I'll only be gone for a#  moment to fix my#  mistakes!";
            message[18] = "* Trust me, this will#  help you in the long#  run!";
            message[19] = "* And I know you're tough#  enough to handle#  yourself.\t";
            message[20] = "* I'll send ya a message#  where to meet back up,#  alright?";
            message[21] = "* Again, I'm so-so-SO#  sorry about this but#  I'll cya later!";
            prt[0] = spr_martlet_head_questioning;
            prt[1] = spr_martlet_head_regular;
            prt[2] = spr_martlet_head_surprised;
            prt[3] = spr_martlet_head_nervous_smile;
            prt[4] = spr_martlet_head_regular;
            prt[5] = spr_martlet_head_content;
            prt[6] = spr_martlet_head_regular;
            prt[7] = spr_martlet_head_wink;
            prt[8] = spr_martlet_head_sad;
            prt[9] = spr_martlet_head_nervous;
            prt[10] = spr_martlet_head_downer;
            prt[11] = spr_martlet_head_surprised;
            prt[12] = spr_martlet_head_downer;
            prt[13] = spr_martlet_head_downer;
            prt[14] = spr_martlet_head_moderate;
            prt[15] = spr_martlet_head_moderate;
            prt[16] = spr_martlet_head_spook;
            prt[17] = spr_martlet_head_moderate;
            prt[18] = spr_martlet_head_regular;
            prt[19] = spr_martlet_head_content;
            prt[20] = spr_martlet_head_wink;
            prt[21] = spr_martlet_head_melancholic;
        }
        
        break;
    
    case 69:
        cutscene_npc_walk(obj_martlet_npc, obj_martlet_npc.x, __view_get(e__VW.YView, 0) + __view_get(e__VW.WView, 0) + 50, 4, "x", "down");
        break;
    
    case 70:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 1);
        break;
    
    case 71:
        scr_cutscene_end();
        camera_set_view_target(view_camera[0], 1031);
        global.dunes_flag[39] = 1;
        ds_list_clear(global.encounter_list);
        scene = -1;
        instance_destroy(actor_clover);
        instance_destroy(actor_starlo);
        instance_destroy(obj_martlet_npc);
        instance_destroy(actor_ceroba);
        break;
}
