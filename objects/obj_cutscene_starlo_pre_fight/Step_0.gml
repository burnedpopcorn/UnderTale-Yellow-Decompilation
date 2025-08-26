var actor_starlo;

if (instance_exists(obj_starlo_npc))
    actor_starlo = 1169;

var actor_ceroba;

if (instance_exists(obj_ceroba_npc))
    actor_ceroba = obj_ceroba_npc;

switch (scene)
{
    case 0:
        if (obj_pl.y < (actor_starlo.y + 160))
        {
            scr_cutscene_start();
            actor_clover = instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            
            with (other)
                cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(actor_clover, actor_starlo.x, actor_starlo.y + 80, 1, "x", "up");
        break;
    
    case 2:
        cutscene_wait(1);
        break;
    
    case 3:
        cutscene_camera_move(actor_starlo.x, actor_starlo.y, 1);
        break;
    
    case 4:
        cutscene_wait(1);
        break;
    
    case 5:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = make_color_rgb(203, 67, 112);
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* Why did this happen?";
            message[1] = "* I did everything in my#  power to entertain...";
            message[2] = "* ...So monsters wouldn't#  have to worry about#  being stuck down here.";
            message[3] = "* At every turn I tried to#  cheer Ceroba up...";
            message[4] = "* I just wanted Kanako off#  of her mind.";
            message_col[4][0] = "                Kanako                   ";
            message[5] = "* I'm trying my best to#  honor her memory.";
            message[6] = "* Aren't distractions#  what's best for all#  of that?";
            message[7] = "* ?";
            prt[0] = spr_portrait_starlo_hurt;
            prt[1] = spr_portrait_starlo_hurt;
            prt[2] = spr_portrait_starlo_hurt;
            prt[3] = spr_portrait_starlo_hurt;
            prt[4] = spr_portrait_starlo_hurt;
            prt[5] = spr_portrait_starlo_hurt;
            prt[6] = spr_portrait_starlo_hurt;
            prt[7] = spr_portrait_starlo_plain;
        }
        
        break;
    
    case 6:
        cutscene_wait(1.5);
        break;
    
    case 7:
        if (cutscene_npc_reset_sprite(actor_starlo, "left"))
            scene = 7.2;
        
        break;
    
    case 7.2:
        if (cutscene_wait(0.3))
            scene = 7.4;
        
        break;
    
    case 7.4:
        cutscene_npc_direction(actor_starlo, "down");
        scene = 7.6;
        break;
    
    case 7.6:
        if (cutscene_wait(1))
            scene = 8;
        
        break;
    
    case 8:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* You...";
            message[1] = "* Why'd you follow me?";
            message[2] = "* Are you still my friend?";
            message[3] = "* ...";
            message[4] = "* Hold on...";
            message[5] = "* This all happened after#  you showed up!";
            message[6] = "* Ed specifically#  mentioned YOU as the#  problem!";
            message[7] = "* That's right! I was just#  bein' a good friend.";
            message[8] = "* I made you who you are#  yet this is what I get?";
            message[9] = "* ...";
            message[10] = "* Let's face facts. I#  couldn't keep you here#  forever, kid.";
            message[11] = "* Word would've gotten out#  that Feathers hadn't#  clocked in, eventually.";
            message[12] = "* Feathers...#  Wait a minute...";
            message[13] = "* Royal Guards like her#  have a ton of status.";
            message[14] = "* They gain that status by#  doin' the King's work.";
            message[15] = "* I'm sure... I'm sure#  everyone would come back#  if I did the same.";
            message[16] = "* I'd be revered not only#  in the Wild East but the#  entire Underground!!";
            message[17] = "* I'd...";
            prt[0] = spr_portrait_starlo_hurt;
            prt[1] = spr_portrait_starlo_hurt;
            prt[2] = spr_portrait_starlo_plain;
            prt[3] = spr_portrait_starlo_hurt;
            prt[4] = spr_portrait_starlo_plain;
            prt[5] = spr_portrait_starlo_serious;
            prt[6] = spr_portrait_starlo_serious;
            prt[7] = spr_portrait_starlo_plain;
            prt[8] = spr_portrait_starlo_hurt;
            prt[9] = spr_portrait_starlo_hurt;
            prt[10] = spr_portrait_starlo_serious;
            prt[11] = spr_portrait_starlo_serious;
            prt[12] = spr_portrait_starlo_plain;
            prt[13] = spr_portrait_starlo_plain;
            prt[14] = spr_portrait_starlo_plain;
            prt[15] = spr_portrait_starlo_serious;
            prt[16] = spr_portrait_starlo_normal;
            prt[17] = spr_portrait_starlo_plain;
        }
        
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        cutscene_npc_direction(actor_starlo, "right");
        scr_audio_fade_out(wind_sound, 1000);
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* ...";
            prt[0] = spr_portrait_starlo_hurt;
        }
        
        break;
    
    case 12:
        cutscene_npc_direction(actor_starlo, "down");
        break;
    
    case 13:
        cutscene_wait(1);
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* Clover, you've been an#  excellent deputy but...";
            message[1] = "* As a lawman, what I'm#  about to do is embedded#  in my SOUL.";
            message[2] = "* My true duty.";
            message[3] = "* Don't... Don't make this#  difficult for me.";
            message[4] = "* Just hold...";
            message[5] = "* STILL!";
            prt[0] = spr_portrait_starlo_hurt;
            prt[1] = spr_portrait_starlo_serious;
            prt[2] = spr_portrait_starlo_serious;
            prt[3] = spr_portrait_starlo_plain;
            prt[4] = spr_portrait_starlo_hurt;
            prt[5] = spr_portrait_starlo_serious;
        }
        
        break;
    
    case 15:
        cutscene_npc_action_sprite(actor_starlo, spr_starlo_whip, 1/3, true, 0);
        break;
    
    case 16:
        cutscene_battle_initiate("starlo", true, true);
        instance_destroy();
        break;
    
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
        }
        
        break;
    
    case 19:
        cutscene_npc_direction(actor_clover, "down");
        break;
    
    case 20:
        cutscene_npc_walk(actor_ceroba, actor_starlo.x, actor_clover.y + 20, 1, "x", "up");
        break;
    
    case 21:
        cutscene_npc_walk_relative(actor_clover, -30, 0, 3, "x", "right");
        break;
    
    case 22:
        cutscene_npc_walk(actor_ceroba, actor_ceroba.x, actor_starlo.y + 60, 1, "y", "up");
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
            prt[9] = spr_portrait_ceroba_disapproving;
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
            message[4] = "* You're the best#  sheriff I've ever#  known!";
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
            prt[2] = spr_portrait_ceroba_snarky;
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
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* This whole show wasn't#  only for some personal#  power trip.";
            prt[0] = spr_portrait_starlo_serious;
            talker[1] = actor_ceroba;
            message[1] = "* Hm?";
            prt[1] = spr_portrait_ceroba_neutral;
            talker[2] = actor_starlo;
            message[2] = "* I also did it to...#  cheer you up.";
            message[3] = "* You might've wanted#  the old me but I also#  wanted the old you.";
            message[4] = "* Because of...";
            message[5] = "* ...Kanako...";
            prt[2] = spr_portrait_starlo_plain;
            prt[3] = spr_portrait_starlo_plain;
            prt[4] = spr_portrait_starlo_hurt;
            prt[5] = spr_portrait_starlo_disappointed;
            talker[6] = actor_ceroba;
            message[6] = "* ...";
            prt[6] = spr_portrait_ceroba_surprised;
        }
        
        break;
    
    case 46:
        cutscene_wait(0.25);
        break;
    
    case 47:
        cutscene_npc_direction(actor_ceroba, "down");
        break;
    
    case 48:
        cutscene_wait(0.5);
        break;
    
    case 49:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_ceroba;
            message[0] = "* I... Um... Appreciate#  that, Star.";
            message[1] = "* I...";
            message[2] = "* I believe I have#  business to take care#  of relating to her...";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_alt;
            prt[2] = spr_portrait_ceroba_neutral;
            talker[3] = actor_starlo;
            message[3] = "* What do you mean?";
            prt[3] = spr_portrait_starlo_serious;
            talker[4] = actor_ceroba;
            message[4] = "* I must tell you#  something.";
            message[5] = "* I suppose Clover#  should know as well.";
            message[6] = "* As much fun it is to#  have duels and catch#  bandits...";
            message[7] = "* There's a pressing#  matter looming over#  me.";
            message[8] = "* ...";
            message[9] = "* Let's go to the old#  Steamworks gate.";
            message[10] = "* We'll speak there.";
            prt[4] = spr_portrait_ceroba_disapproving;
            prt[5] = spr_portrait_ceroba_disapproving;
            prt[6] = spr_portrait_ceroba_neutral;
            prt[7] = spr_portrait_ceroba_alt;
            prt[8] = spr_portrait_ceroba_closed_eyes;
            prt[9] = spr_portrait_ceroba_neutral;
            prt[10] = spr_portrait_ceroba_neutral;
            talker[11] = actor_starlo;
            message[11] = "* Ceroba...";
            prt[11] = spr_portrait_starlo_disappointed;
            talker[12] = actor_ceroba;
            message[12] = "* Come on.";
            prt[12] = spr_portrait_ceroba_disapproving;
            
            if (message_current == 2)
                actor_ceroba.npc_direction = "up";
        }
        
        break;
    
    case 50:
        cutscene_npc_walk(actor_ceroba, actor_ceroba.x, actor_starlo.y + 30, 3, "x", "up");
        break;
    
    case 51:
        cutscene_npc_walk_relative(actor_starlo, -40, 0, 3, "x", "right");
        break;
    
    case 52:
        cutscene_npc_walk(actor_ceroba, actor_ceroba.x, -40, 4, "x", "up");
        
        if (actor_ceroba.y < (actor_starlo.y - 60))
            actor_starlo.npc_direction = "up";
        
        break;
    
    case 53:
        cutscene_dialogue();
        
        with (msg)
        {
            position = 0;
            talker[0] = actor_starlo;
            message[0] = "* I guess you're really#  part of the team now,#  Clover.";
            message[1] = "* You heard her.";
            prt[0] = spr_portrait_starlo_serious;
            prt[1] = spr_portrait_starlo_normal;
        }
        
        actor_starlo.npc_direction = "down";
        break;
    
    case 54:
        cutscene_npc_walk(actor_starlo, actor_starlo.x, -60, 3, "x", "up");
        break;
    
    case 55:
        cutscene_audio_fade(cutscene_music, 0, 1200, 0.15, false, true);
        break;
    
    case 56:
        cutscene_wait(1);
        break;
    
    case 57:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* Clover! Clover!";
            prt[0] = spr_martlet_head_happy;
        }
        
        break;
    
    case 58:
        cutscene_instance_create(obj_pl.x, __view_get(e__VW.YView, 0) + __view_get(e__VW.WView, 0) + 50, obj_martlet_npc);
        break;
    
    case 59:
        cutscene_npc_direction(actor_clover, "down");
        break;
    
    case 60:
        cutscene_npc_walk(obj_martlet_npc, 160, 220, 3, "x", "up");
        break;
    
    case 61:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* So I have good news#  and bad news.";
            message[1] = "* I'll start with the#  good:";
            message[2] = "* Turns out, the wife of#  that old friend I told#  you about is here!";
            message[3] = "* Her name is Ceroba!";
            message[4] = "* You... probably met her#  already now that I#  think about it.";
            message[5] = "* She broke my cell lock#  with a sick magic staff#  and let me go!";
            message[6] = "* I also made sure she#  knew I wouldn't tell#  ASGORE about this.";
            message[7] = "* So now that that's#  taken care of... the bad#  news.";
            message[8] = "* I'm about to go back#  on my word, sadly.";
            message[9] = "* I know I JUST said I#  wouldn't leave your side#  but then... ya know... ";
            message[10] = "* ...This crazy detour#  happened.";
            message[11] = "* I also realize I threw#  my job to the wind to#  travel with you but...";
            message[12] = "* Since the imprisonment#  took up so much time, I#  have to go back.";
            message[13] = "* If I don't at LEAST#  clock in...";
            message[14] = "* ...the Royal Guard#  will grow suspicious!";
            message[15] = "* Plus, Ava is totalled.#  It was their property.";
            message[16] = "* I'll only be gone for#  a moment to fix my#  mistakes!";
            message[17] = "* Ceroba encouraged this#  decision, so don't#  worry.\t";
            message[18] = "* She told me she would#  accompany you on the#  journey to Hotland.";
            message[19] = "* So hey, it all works#  out!";
            message[20] = "* Again, I'm so-so-so-SO#  sorry about this but#  I'll cya later!";
            prt[0] = spr_martlet_head_moderate;
            prt[1] = spr_martlet_head_content;
            prt[2] = spr_martlet_head_happy;
            prt[3] = spr_martlet_head_content;
            prt[4] = spr_martlet_head_melancholic;
            prt[5] = spr_martlet_head_regular;
            prt[6] = spr_martlet_head_wink;
            prt[7] = spr_martlet_head_wondering;
            prt[8] = spr_martlet_head_downer;
            prt[9] = spr_martlet_head_melancholic;
            prt[10] = spr_martlet_head_surprised;
            prt[11] = spr_martlet_head_moderate;
            prt[12] = spr_martlet_head_sad;
            prt[13] = spr_martlet_head_moderate;
            prt[14] = spr_martlet_head_moderate;
            prt[15] = spr_martlet_head_nervous_smile;
            prt[16] = spr_martlet_head_moderate;
            prt[17] = spr_martlet_head_regular;
            prt[18] = spr_martlet_head_regular;
            prt[19] = spr_martlet_head_content;
            prt[20] = spr_martlet_head_nervous_smile;
        }
        
        break;
    
    case 62:
        cutscene_npc_walk(obj_martlet_npc, obj_martlet_npc.x, __view_get(e__VW.YView, 0) + __view_get(e__VW.WView, 0) + 50, 4, "x", "down");
        break;
    
    case 63:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 1);
        break;
    
    case 64:
        scr_cutscene_end();
        camera_set_view_target(view_camera[0], 1031);
        global.dunes_flag[39] = 1;
        scene = -1;
        instance_destroy(actor_clover);
        instance_destroy(actor_starlo);
        instance_destroy(obj_martlet_npc);
        instance_destroy(actor_ceroba);
        break;
}
