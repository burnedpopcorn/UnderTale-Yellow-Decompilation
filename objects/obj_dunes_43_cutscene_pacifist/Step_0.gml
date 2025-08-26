var actor_ceroba = obj_ceroba_npc;
var actor_starlo = 1169;
var actor_clover = obj_player_npc;

switch (scene)
{
    case 0:
        if (obj_pl.y < 280)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        cutscene_npc_direction(actor_starlo, "down");
        break;
    
    case 3:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_fuchsia;
            talker[0] = actor_starlo;
            message[0] = "* There you are!";
            message[1] = "* I was about to come#  looking for you.";
            message[2] = "* So... The Steamworks.";
            message_col[2][0] = "        The Steamworks ";
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_serious;
        }
        
        break;
    
    case 4:
        cutscene_npc_direction(actor_starlo, "up");
        break;
    
    case 5:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 6:
        cutscene_npc_walk(actor_clover, 220, 205, 3, "y", "up");
        break;
    
    case 7:
        cutscene_camera_move(220, 160, 1, false);
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_starlo;
            message[0] = "* May I ask why we are#  here?";
            prt[0] = spr_portrait_starlo_serious;
        }
        
        break;
    
    case 10:
        cutscene_npc_direction(actor_ceroba, "down");
        break;
    
    case 11:
        cutscene_wait(0.5);
        break;
    
    case 12:
        cutscene_npc_action_sprite(actor_ceroba, spr_ceroba_show_mask, 1/3, true, 0);
        break;
    
    case 13:
        cutscene_music_start(191, 600);
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            color = true;
            col_modif[0] = make_color_rgb(203, 67, 112);
            talker[0] = actor_ceroba;
            talker[1] = actor_starlo;
            talker[2] = actor_ceroba;
            message[0] = "* Because of this.";
            message[1] = "* The mask Kanako made#  for you...";
            message_col[1][0] = "           Kanako                  ";
            message[2] = "* Yes.";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_starlo_sad;
            prt[2] = spr_portrait_ceroba_closed_eyes;
        }
        
        break;
    
    case 15:
        cutscene_npc_action_sprite_reverse(actor_ceroba, spr_ceroba_show_mask, 1/3, false, 0);
        break;
    
    case 16:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_ceroba;
            message[0] = "* You see, Clover, Kanako#  is me and Chujin's only#  child.";
            message[1] = "* You haven't seen her#  around because she...";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_disapproving;
        }
        
        break;
    
    case 17:
        cutscene_wait(0.35);
        break;
    
    case 18:
        cutscene_npc_walk_relative(actor_starlo, 0, -30, 1, "y", "right");
        break;
    
    case 19:
        cutscene_wait(0.5);
        break;
    
    case 20:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_starlo;
            talker[2] = actor_ceroba;
            talker[4] = actor_starlo;
            talker[5] = actor_ceroba;
            message[0] = "* Hey, everything will#  be okay.";
            message[1] = "* I know how tough you#  are. You can move past#  this, I'm positive.";
            message[2] = "* There's no need,#  because she's alive.";
            message[3] = "* I feel her presence as#  we speak.";
            message[4] = "* The Lab...";
            message[5] = "* Precisely.";
            message[6] = "* Clover, you may not#  know this, but there is#  a Lab in Hotland.";
            message[7] = "* An inquiry for the#  \"fallen down\" was sent#  out some time ago.";
            message[8] = "* I didn't know what#  else to do...";
            message[9] = "* In my time of despair,#  I sent Kanako with them.";
            message[10] = "* It's been far too#  long and I haven't#  heard anything.";
            message[11] = "* I must travel to the#  Lab to find out where#  my daughter is.";
            prt[0] = spr_portrait_starlo_disappointed;
            prt[1] = spr_portrait_starlo_disappointed;
            prt[2] = spr_portrait_ceroba_neutral;
            prt[3] = spr_portrait_ceroba_alt;
            prt[4] = spr_portrait_starlo_plain;
            prt[5] = spr_portrait_ceroba_closed_eyes;
            prt[6] = spr_portrait_ceroba_neutral;
            prt[7] = spr_portrait_ceroba_closed_eyes;
            prt[8] = spr_portrait_ceroba_disapproving;
            prt[9] = spr_portrait_ceroba_neutral;
            prt[10] = spr_portrait_ceroba_disapproving;
            prt[11] = spr_portrait_ceroba_neutral;
            
            if (message_current == 2)
                actor_ceroba.npc_direction = "left";
            
            if (message_current == 6)
                actor_ceroba.npc_direction = "down";
        }
        
        break;
    
    case 21:
        cutscene_wait(0.5);
        break;
    
    case 22:
        cutscene_audio_fade(cutscene_music, 0, 500, 0.25, false, true);
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_starlo;
            message[0] = "* I'm proud of you,#  Ceroba. Stepping out and#  taking charge.";
            message[1] = "* You've been in a rut#  lately. It was tough#  to watch.";
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_starlo_sad;
        }
        
        break;
    
    case 24:
        cutscene_wait(0.2);
        break;
    
    case 25:
        cutscene_npc_direction(actor_ceroba, "up");
        break;
    
    case 26:
        cutscene_wait(0.35);
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_ceroba;
            message[0] = "* ...";
            prt[0] = spr_portrait_ceroba_disapproving;
        }
        
        break;
    
    case 28:
        cutscene_wait(0.45);
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_starlo;
            message[0] = "* S-so, why travel#  through the Steamworks#  particularly?";
            prt[0] = spr_portrait_starlo_sweat;
        }
        
        break;
    
    case 30:
        cutscene_npc_direction(actor_ceroba, "down");
        break;
    
    case 31:
        cutscene_music_start(190);
        break;
    
    case 32:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_ceroba;
            talker[3] = actor_starlo;
            talker[5] = actor_ceroba;
            talker[8] = actor_starlo;
            talker[9] = actor_ceroba;
            talker[11] = actor_starlo;
            talker[12] = actor_ceroba;
            message[0] = "* It's the quickest route#  to Hotland from here.";
            message[1] = "* Nothing but abandoned#  rooms as far as I know.";
            message[2] = "* I have Chujin's old#  passcodes for any#  locked doors as well.";
            message[3] = "* Solid plan.";
            message[4] = "* If you need me, I would#  be happy to accompany#  you!";
            message[5] = "* I don't know how ugly#  things at the Lab may#  get.";
            message[6] = "* You need to stay here#  and take care of the#  town.";
            message[7] = "* ...I believe you owe#  your posse an#  apology.";
            message[8] = "* You're right...";
            message[9] = "* I'll take Clover with#  me.";
            message[10] = "* They've proven to be#  skilled on several#  fronts.";
            message[11] = "* An excellent choice. I#  trust Clover to deliver#  justice out there!";
            message[12] = "* Alright, we've#  discussed enough. Let's#  get moving.";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_closed_eyes;
            prt[2] = spr_portrait_ceroba_neutral;
            prt[3] = spr_portrait_starlo_normal;
            prt[4] = spr_portrait_starlo_smile;
            prt[5] = spr_portrait_ceroba_closed_eyes;
            prt[6] = spr_portrait_ceroba_neutral;
            prt[7] = spr_portrait_ceroba_alt;
            prt[8] = spr_portrait_starlo_disappointed;
            prt[9] = spr_portrait_ceroba_closed_eyes;
            prt[10] = spr_portrait_ceroba_smile;
            prt[11] = spr_portrait_starlo_smile;
            prt[12] = spr_portrait_ceroba_closed_eyes;
        }
        
        break;
    
    case 33:
        cutscene_npc_walk_relative(actor_starlo, 0, 30, 2, "y", "up");
        break;
    
    case 34:
        cutscene_npc_walk(actor_ceroba, 146, 148, 2, "x", "up");
        break;
    
    case 35:
        cutscene_wait(0.5);
        break;
    
    case 36:
        cutscene_sfx_play(snd_dunes_43_code, 1);
        break;
    
    case 37:
        cutscene_wait(1.5);
        break;
    
    case 38:
        cutscene_sfx_play(snd_elevator_start, 2);
        cutscene_npc_direction(actor_ceroba, "right");
        cutscene_advance(39);
        break;
    
    case 39:
        cutscene_screenshake(1, 2);
        break;
    
    case 40:
        cutscene_action_sprite(obj_dunes_43_gate, spr_dunes_43_gate, 1/3, true, 0, snd_dunes_43_gate, 0);
        break;
    
    case 41:
        cutscene_wait(1);
        break;
    
    case 42:
        cutscene_npc_direction(actor_ceroba, "down");
        break;
    
    case 43:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_ceroba;
            message[0] = "* I'll see you later,#  Starlo.";
            message[1] = "* Whatever happens,#  remember that this is#  for Chujin's legacy.";
            prt[0] = spr_portrait_ceroba_closed_eyes;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 44:
        cutscene_audio_fade(cutscene_music, 0, 1000, 0.2, false, true);
        break;
    
    case 45:
        cutscene_npc_walk(actor_ceroba, 220, 140, 2, "x", "up");
        break;
    
    case 46:
        cutscene_fade_out(actor_ceroba, 1);
        break;
    
    case 47:
        cutscene_wait(1.5);
        break;
    
    case 48:
        cutscene_npc_walk(actor_clover, actor_clover.x, 185, 1, "y", "up");
        break;
    
    case 49:
        cutscene_npc_set_sprites(actor_starlo, spr_starlo_up_walk, spr_starlo_right_walk, spr_starlo_down_walk, spr_starlo_left_walk, spr_starlo_up_talk, spr_starlo_right_talk, spr_starlo_down_talk, spr_starlo_left_talk);
    
    case 50:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_starlo;
            message[0] = "* Oh! Clover! Before you#  go, I forgot to give you#  this.";
            prt[0] = spr_portrait_starlo_blush;
        }
        
        break;
    
    case 51:
        cutscene_npc_walk(actor_starlo, actor_clover.x, actor_clover.y - 30, 3, "y", "down");
        break;
    
    case 52:
        cutscene_sfx_play(snd_success, 1);
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
            talker[0] = obj_starlo_npc;
            message[0] = "* I'm so proud!";
            prt[0] = spr_portrait_starlo_flustered;
        }
        
        break;
    
    case 59:
        cutscene_wait(1);
        break;
    
    case 60:
        cutscene_npc_reset_sprite(actor_starlo, "down");
        break;
    
    case 61:
        cutscene_npc_reset_sprite(actor_clover, "up");
        break;
    
    case 62:
        cutscene_npc_walk_relative(actor_starlo, -30, 30, 2, "x", "up");
        break;
    
    case 63:
        cutscene_npc_walk(actor_clover, 220, 140, 2, "x", "up");
        break;
    
    case 64:
        cutscene_fade_out(actor_clover, 1);
        break;
    
    case 65:
        cutscene_change_room(rm_steamworks_01, 160, 520, 0.015, 45);
        break;
    
    case 66:
        obj_pl.image_alpha = 1;
        obj_pl.direction = 90;
        cutscene_instance_create(160, 440, obj_ceroba_npc);
        actor_ceroba.npc_direction = "up";
        break;
    
    case 67:
        cutscene_wait(1);
        break;
    
    case 68:
        cutscene_sfx_play(snd_elevator_start, 1);
        break;
    
    case 69:
        cutscene_screenshake(0.5, 2);
        break;
    
    case 70:
        cutscene_wait(1);
        break;
    
    case 71:
        cutscene_npc_direction(actor_ceroba, "down");
        break;
    
    case 72:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = actor_ceroba;
            message[0] = "* Remember, I'm in#  charge.";
            message[1] = "* Stay close by and we'll#  reach our destination#  soon.";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 73:
        cutscene_npc_walk_relative(actor_ceroba, 0, -40, 2, "y", "up");
        break;
    
    case 74:
        scr_cutscene_end();
        cutscene_advance();
        global.dunes_flag[35] = 1;
        break;
    
    case 75:
        cutscene_npc_walk_wait(actor_ceroba, actor_ceroba.x, -40, 4, "y", "left");
        break;
    
    case 76:
        cutscene_end();
        break;
}
