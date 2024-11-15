if (scr_interact() && keyboard_multicheck_pressed(0))
{
    scr_text();
    msg.sndfnt = 108;
    msg.message[0] = "* ...";
    msg.prt[0] = 370;
}

switch (scene)
{
    case 0:
        cutscene_npc_walk_relative(1168, 0, 10, 0.5, "y", "down");
        break;
    
    case 1:
        sprite_index = spr_ceroba_cool_alt;
        scr_text();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* You there. Human.";
            message[1] = "* You okay?";
            prt[0] = 377;
            prt[1] = 370;
            ch_msg = 1;
            ch[1] = "Yeah";
            ch[2] = "Not\nreally";
            
            if (outcome == 1)
            {
                message[2] = "* Really?";
                message[3] = "* Well... alright then.";
                prt[2] = 393;
                prt[3] = 377;
            }
            
            if (outcome == 2)
            {
                message[2] = "* About what I expected.";
                prt[2] = 377;
            }
        }
        
        if (msg.message_current == 1)
            obj_player_npc.npc_direction = "right";
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 2:
        if (!audio_is_playing(mus_blossom))
            audio_play_sound(mus_blossom, 1, 1);
        
        scr_text();
        
        if (global.route == 2)
        {
            with (msg)
            {
                color = true;
                col_modif[0] = make_color_rgb(237, 140, 36);
                sndfnt = 108;
                message[0] = "* I apologize for Star's#  antics.";
                message[1] = "* He's really into human#  culture and whatnot.";
                message[2] = "* You show up here and he#  flips out.";
                message[3] = "* I mean, it is quite#  unbelievable.";
                message[4] = "* A few humans have#  wandered into the#  Underground before but...";
                message[5] = "* They never set foot on#  these sands.";
                message[6] = "* All that to say, I'm#  glad you did.";
                message[7] = "* My name is Ceroba.";
                message_col[7][0] = "             Ceroba ";
                message[8] = "* I'm a friend of Star's#  but not part of his#  posse.";
                message[9] = "* They're a bit too...#  rowdy for my taste.";
                message[10] = "* May I ask your name?";
                ch_msg = 10;
                ch[1] = "Clover";
                message[11] = "* Welcome to the#  Underground, Clover.";
                message[12] = "* Your attire is#  surprising, I must say.";
                message[13] = "* But um... I won't press#  you on the matter.";
                message[14] = "* I'm afraid Star is going#  to drag you into his#  activities for a while.";
                message[15] = "* You must have places to#  go, correct?";
                message[16] = "* The Castle... the#  barrier. You probably#  want to go home.";
                message[17] = "* If I'm being honest, I#  haven't seen Star this#  ecstatic in some time.";
                message[18] = "* Maybe you should#  entertain him a bit;#  roll with his punches.";
                message[19] = "* I'll see what I can do#  about allowing you to#  leave.";
                message[20] = "* I know of a safe path#  to Hotland through#  the...";
                message[21] = "* Ah, I'm getting ahead#  of myself.";
                message[22] = "* Talk to you later,#  Clover.";
                message[23] = "* It was nice to#  meet you.";
                prt[0] = 377;
                prt[1] = 370;
                prt[2] = 370;
                prt[3] = 377;
                prt[4] = 371;
                prt[5] = 370;
                prt[6] = 395;
                prt[7] = 372;
                prt[8] = 372;
                prt[9] = 374;
                prt[10] = 372;
                prt[11] = 372;
                prt[12] = 395;
                prt[13] = 370;
                prt[14] = 371;
                prt[15] = 370;
                prt[16] = 371;
                prt[17] = 371;
                prt[18] = 372;
                prt[19] = 372;
                prt[20] = 371;
                prt[21] = 393;
                prt[22] = 372;
                prt[23] = 372;
                
                if (message_current == 23)
                {
                    scr_audio_fade_out(176, 300);
                    other.scene++;
                }
            }
        }
        else
        {
            with (msg)
            {
                color = true;
                col_modif[0] = make_color_rgb(237, 140, 36);
                sndfnt = 108;
                message[0] = "* I apologize for Star's#  antics.";
                message[1] = "* He's really into human#  culture and whatnot.";
                message[2] = "* You show up here and he#  flips out.";
                message[3] = "* I mean, it is quite#  unbelievable.";
                message[4] = "* A few humans have#  wandered into the#  Underground before but...";
                message[5] = "* They never set foot on#  these sands.";
                message[6] = "* My name is Ceroba.";
                message_col[6][0] = "             Ceroba ";
                message[7] = "* I'm a friend of Star's#  but not part of his#  posse.";
                message[8] = "* They're a bit too...#  rowdy for my taste.";
                message[9] = "* May I ask your name?";
                ch_msg = 9;
                ch[1] = "Clover";
                message[10] = "* Welcome to the#  Underground, Clover.";
                message[11] = "* Your attire is#  surprising, I must say.";
                message[12] = "* But um... I won't press#  you on the matter.";
                message[13] = "* I'm afraid Star is going#  to drag you into his#  activities for a while.";
                message[14] = "* You must have places to#  go, correct?";
                message[15] = "* The Castle... the#  barrier. You probably#  want to go home.";
                message[16] = "* If I'm being honest, I#  haven't seen Star this#  ecstatic in some time.";
                message[17] = "* Maybe you should#  entertain him a bit;#  roll with his punches.";
                message[18] = "* He'll probably allow#  you to leave eventually.";
                message[19] = "* Well...";
                message[20] = "* Good luck, Clover.";
                prt[0] = 377;
                prt[1] = 370;
                prt[2] = 370;
                prt[3] = 377;
                prt[4] = 371;
                prt[5] = 371;
                prt[6] = 372;
                prt[7] = 372;
                prt[8] = 374;
                prt[9] = 372;
                prt[10] = 372;
                prt[11] = 395;
                prt[12] = 370;
                prt[13] = 371;
                prt[14] = 370;
                prt[15] = 371;
                prt[16] = 374;
                prt[17] = 372;
                prt[18] = 372;
                prt[19] = 395;
                prt[20] = 372;
                
                if (message_current == 20)
                {
                    scr_audio_fade_out(176, 1500);
                    other.scene++;
                }
            }
        }
        
        break;
    
    case 3:
        if (global.dialogue_open)
            exit;
        
        global.dunes_flag[21] = 1;
        scene = 4;
        scr_radio_restart();
        scr_radio_fade(1, 0);
        sprite_index = spr_ceroba_cool;
        scr_cutscene_end();
        instance_destroy(obj_player_npc);
        break;
}
