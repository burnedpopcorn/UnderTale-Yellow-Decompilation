var starlo_npc;

if (instance_exists(obj_starlo_npc))
    starlo_npc = 1169;
else
    starlo_npc = 0;

var ceroba_npc;

if (instance_exists(obj_ceroba_npc))
    ceroba_npc = 1161;
else
    ceroba_npc = 0;

var player_npc;

if (instance_exists(obj_player_npc))
    player_npc = 1168;
else
    player_npc = 0;

switch (scene)
{
    case -1:
        scr_radio_restart();
        scene++;
        break;
    
    case 0:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            if (message_current < (array_length_1d(talker) - 1))
            {
                if (talker[message_current] == starlo_npc)
                    sndfnt_array[message_current] = snd_talk_starlo;
                
                if (talker[message_current] == ceroba_npc)
                    sndfnt_array[message_current] = snd_talk_ceroba;
            }
            
            talker[0] = starlo_npc;
            message[0] = "* Ceroba!";
            message[1] = "* Guess what just#  happened?";
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_starlo_smirk;
            
            if (message_current == 1)
                ceroba_npc.npc_direction = "left";
            
            talker[2] = ceroba_npc;
            message[2] = "* You locked up another#  Royal Guard against#  their will?";
            prt[2] = spr_portrait_ceroba_closed_eyes;
            talker[3] = starlo_npc;
            message[3] = "* Hey!";
            message[4] = "* Feathers was a serious#  roadblock to all of#  this.";
            message[5] = "* It's only a temporary#  solution.";
            message[6] = "* I don't feel right#  doin' it, I swear.";
            prt[3] = spr_portrait_starlo_serious;
            prt[4] = spr_portrait_starlo_point;
            prt[5] = spr_portrait_starlo_distracted;
            prt[6] = spr_portrait_starlo_serious;
            talker[7] = ceroba_npc;
            message[7] = "* I'm just giving you a#  hard time.";
            message[8] = "* What did you want to#  tell me?";
            prt[7] = spr_portrait_ceroba_snarky;
            prt[8] = spr_portrait_ceroba_smile;
            
            if (message_current == 7)
                ceroba_npc.npc_direction = "down";
            
            talker[9] = starlo_npc;
            message[9] = "* Oh, well, Clover just#  passed their first#  round o' trainin'.";
            message[10] = "* They are quite the#  sharpshooter. Almost as#  good as me!";
            prt[9] = spr_portrait_starlo_normal;
            prt[10] = spr_portrait_starlo_smirk;
            talker[11] = ceroba_npc;
            message[11] = "* Really? A child?";
            prt[11] = spr_portrait_ceroba_surprised;
            
            if (message_current == 11)
                ceroba_npc.npc_direction = "left";
            
            talker[12] = starlo_npc;
            message[12] = "* Now, now, don't#  disrespect the kid.";
            message[13] = "* Clover can hold their#  own and then some.";
            prt[12] = spr_portrait_starlo_point;
            prt[13] = spr_portrait_starlo_normal;
            talker[14] = ceroba_npc;
            message[14] = "* I know, I'm just... very#  impressed.";
            prt[14] = spr_portrait_ceroba_confounded;
            talker[15] = starlo_npc;
            message[15] = "* Oh, hey, I almost#  forgot about the hat!";
            message[16] = "* I have a spare#  somewhere in my house.";
            message[17] = "* Clover, wait here while#  I fetch it.";
            message[18] = "* Maybe while they wait,#  you should get to know#  them, Ceroba.";
            message[19] = "* Should be fun, right?";
            prt[15] = spr_portrait_starlo_blush;
            prt[16] = spr_portrait_starlo_normal;
            prt[17] = spr_portrait_starlo_normal;
            prt[18] = spr_portrait_starlo_normal;
            prt[19] = spr_portrait_starlo_smile;
            talker[20] = ceroba_npc;
            message[20] = "* Sure.";
            prt[20] = spr_portrait_ceroba_smile;
            
            if (message_current == 11)
                ceroba_npc.npc_direction = "down";
            
            talker[21] = starlo_npc;
            sndfnt_array[21] = snd_talk_starlo;
            message[21] = "* Sounds good!";
            message[22] = "* Be right back, partner!";
            prt[21] = spr_portrait_starlo_normal;
            prt[22] = spr_portrait_starlo_hidden;
        }
        
        if (!global.dialogue_open)
        {
            audio_sound_gain(obj_radio.current_song, 0, 500);
            scene++;
        }
        
        break;
    
    case 1:
        with (starlo_npc)
        {
            actor_speed = 3;
            axis_override = "x";
            can_walk = true;
            x_dest[0] = x;
            y_dest[0] = ystart - 30;
            x_dest[1] = 100;
            y_dest[1] = y_dest[0] + 200;
            
            if (npc_arrived)
            {
                image_alpha = 0;
                other.scene++;
            }
        }
        
        break;
    
    case 2:
        with (player_npc)
        {
            if (!can_walk)
            {
                axis_override = "y";
                can_walk = true;
                x_dest[0] = 180;
                y_dest[0] = 190;
                end_direction = "down";
                actor_speed = 2;
            }
            
            if (npc_arrived)
            {
                other.scene++;
                other.timer = 45;
            }
        }
        
        break;
    
    case 3:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            talker[0] = ceroba_npc;
            message[0] = "* ...";
            message[1] = "* Tell me, truly.";
            message[2] = "* Are you into all of#  this?";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_closed_eyes;
            ch_msg = 2;
            ch[1] = "Yeah";
            ch[2] = "Nah";
            
            if (outcome == 1)
            {
                message[3] = "* That's nice...";
                message[4] = "* I've never understood#  it.";
                message[5] = "* But if it makes monsters#  like Star happy, it's#  fine.";
                prt[3] = spr_portrait_ceroba_smile;
                prt[4] = spr_portrait_ceroba_closed_eyes;
                prt[5] = spr_portrait_ceroba_snarky;
            }
            
            if (outcome == 2)
            {
                message[3] = "* Sorry that Star's#  dragging you around so#  much, then.";
                prt[3] = spr_portrait_ceroba_closed_eyes;
            }
            
            if (outcome != 0)
                other.music = audio_play_sound(mus_blossom, 10, 1);
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 4:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            talker[0] = ceroba_npc;
            message[0] = "* This whole thing is#  like a dream to him.";
            message[1] = "* It's kinda goofy but#  it is nice to see#  someone so passionate.";
            message[2] = "* However, passion can go#  too far.";
            message[3] = "* You wouldn't believe#  how much his parents#  talk to me about it.";
            message[4] = "* Really kind folks who#  own a farm up north.";
            message[5] = "* It's actually very lush#  there, if you can#  believe it.";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_smile;
            prt[2] = spr_portrait_ceroba_disapproving;
            prt[3] = spr_portrait_ceroba_neutral;
            prt[4] = spr_portrait_ceroba_smile;
            prt[5] = spr_portrait_ceroba_neutral;
        }
        
        if (!global.dialogue_open)
        {
            timer = 45;
            scene++;
        }
        
        break;
    
    case 5:
        if (!scr_timer())
            exit;
        
        ceroba_npc.npc_direction = "right";
        scene++;
        break;
    
    case 6:
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = make_color_rgb(68, 102, 286);
            sndfnt = snd_talk_ceroba;
            talker[0] = ceroba_npc;
            message[0] = "* And the corn they grow?#  So good.";
            message[1] = "* They used to give my#  husband, Chujin, baskets#  full every other week.";
            message_col[1][0] = "                      #           Chujin                                  ";
            message[2] = "* ...";
            message[3] = "* Anyway, I trailed off.";
            message[4] = "* Where was I?";
            prt[0] = spr_portrait_ceroba_snarky;
            prt[1] = spr_portrait_ceroba_smile;
            prt[2] = spr_portrait_ceroba_surprised;
            prt[3] = spr_portrait_ceroba_alt;
            prt[4] = spr_portrait_ceroba_neutral;
            
            if (message_current == 3)
                ceroba_npc.npc_direction = "down";
        }
        
        if (!global.dialogue_open)
        {
            scr_audio_fade_out(music, 1000);
            timer = 15;
            scene++;
        }
        
        break;
    
    case 7:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            message[0] = "* I'm back!";
            prt[0] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
        {
            audio_sound_gain(obj_radio.current_song, 1, 1000);
            starlo_npc.npc_arrived = false;
            scene++;
        }
        
        break;
    
    case 8:
        with (starlo_npc)
        {
            image_alpha = 1;
            actor_speed = 3;
            axis_override = "y";
            can_walk = true;
            x_dest[0] = 160;
            y_dest[0] = 190;
            end_direction = "right";
            
            if (npc_arrived)
            {
                other.scene++;
                other.timer = 10;
            }
        }
        
        break;
    
    case 9:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            message[0] = "* Turns out I had one#  just your size AND in#  the same color.";
            message[1] = "* It's like, destiny or#  somethin'.";
            message[2] = "* Here!";
            prt[0] = spr_portrait_starlo_smile;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
        {
            ceroba_npc.npc_direction = "up";
            
            with (starlo_npc)
            {
                actor_speed = 1;
                axis_override = "x";
                can_walk = true;
                x_dest[0] = 180;
                y_dest[0] = y - 10;
                end_direction = "up";
            }
            
            with (player_npc)
            {
                walk_direction_flip = true;
                x_dest[0] = x;
                y_dest[0] = y - 25;
                actor_speed = 2;
                can_walk = true;
                end_direction = "up";
            }
            
            starlo_npc.npc_arrived = false;
            scene++;
        }
        
        break;
    
    case 10:
        with (starlo_npc)
        {
            if (npc_arrived)
            {
                other.scene++;
                other.timer = 60;
            }
        }
        
        break;
    
    case 11:
        with (starlo_npc)
        {
            if (!action_sprite)
            {
                action_sprite = true;
                image_speed = 0.2;
                sprite_index = up_sprite;
            }
        }
        
        if (scr_timer())
        {
            starlo_npc.action_sprite = false;
            starlo_npc.image_speed = 0;
            timer = 30;
            scene++;
        }
        
        break;
    
    case 12:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
            message[0] = "* (You got a Nice Hat!)";
        
        audio_play_sound(snd_success, 1, 0);
        starlo_npc.npc_arrived = false;
        player_npc.walk_direction_flip = true;
        player_npc.npc_direction = "down";
        global.player_armor = "Nice Hat";
        scene++;
        break;
    
    case 13:
        if (global.dialogue_open == true)
            exit;
        
        with (starlo_npc)
        {
            actor_speed = 1;
            axis_override = "y";
            can_walk = true;
            x_dest[0] = obj_pl.x - 40;
            y_dest[0] = y;
            end_direction = "right";
            
            if (npc_arrived)
            {
                other.scene++;
                other.timer = 40;
            }
        }
        
        break;
    
    case 14:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            talker[0] = starlo_npc;
            message[0] = "* Wow...";
            message[1] = "* I couldn't even tell it#  changed if I were#  standin' from afar.";
            message[2] = "* Looks great!";
            message[3] = "* What do you think,#  Ceroba?";
            prt[0] = spr_portrait_starlo_blush;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_normal;
            prt[3] = spr_portrait_starlo_smirk;
            talker[4] = ceroba_npc;
            message[4] = "* It's nice.";
            prt[4] = spr_portrait_ceroba_smile;
            talker[5] = starlo_npc;
            message[5] = "* Isn't it?";
            message[6] = "* Well, I'd say this#  mission was a great#  success!";
            message[7] = "* Go on and take a break,#  Clover.";
            message[8] = "* I'll be waitin' for ya!";
            prt[5] = spr_portrait_starlo_smile;
            prt[6] = spr_portrait_starlo_normal;
            prt[7] = spr_portrait_starlo_normal;
            prt[8] = spr_portrait_starlo_normal;
            
            if (message_current <= (array_length_1d(talker) - 1))
            {
                if (talker[message_current] == starlo_npc)
                    sndfnt_array[message_current] = snd_talk_starlo;
                
                if (talker[message_current] == ceroba_npc)
                    sndfnt_array[message_current] = snd_talk_ceroba;
            }
        }
        
        if (!global.dialogue_open)
        {
            starlo_npc.npc_arrived = false;
            scene++;
        }
        
        break;
    
    case 15:
        ceroba_npc.npc_direction = "down";
        
        with (starlo_npc)
        {
            actor_speed = 1;
            axis_override = "y";
            can_walk = true;
            x_dest[0] = obj_pl.x;
            y_dest[0] = 205;
            end_direction = "down";
            
            if (npc_arrived)
                other.scene++;
        }
        
        break;
    
    case 16:
        global.dunes_flag[20] = 3;
        scene = 17;
        instance_destroy(obj_player_npc);
        scr_cutscene_end();
        break;
    
    case 17:
        with (starlo_npc)
        {
            if (interact)
            {
                scr_text();
                
                with (msg)
                {
                    talker[0] = starlo_npc;
                    message[0] = "* Gidde up, partner!";
                    message[1] = "* This town has plenty to#  see!";
                    prt[0] = spr_portrait_starlo_normal;
                    prt[1] = spr_portrait_starlo_normal;
                }
                
                exit;
            }
        }
        
        with (ceroba_npc)
        {
            if (interact)
            {
                scr_text();
                
                with (msg)
                {
                    talker[0] = ceroba_npc;
                    message[0] = "* ...";
                    prt[0] = spr_portrait_ceroba_neutral;
                }
                
                exit;
            }
        }
        
        break;
}
