switch (scene)
{
    case 0:
        with (obj_pl)
        {
            if (place_meeting(x, y, obj_event_collider))
            {
                scr_cutscene_start();
                instance_destroy(obj_event_collider);
                other.scene++;
                other.timer = 15;
            }
        }
        
        break;
    
    case 1:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            message[0] = "* Huh? Hang on, I think#  someone's coming this#  way.";
            prt[0] = spr_martlet_head_surprised;
            talker[0] = obj_martlet_follower;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 2:
        player_npc = instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        
        with (player_npc)
        {
            x_dest[0] = 720;
            y_dest[0] = y;
            can_walk = true;
            end_direction = "up";
            actor_speed = 3;
        }
        
        if (global.party_member != -4)
        {
            martlet = instance_create(obj_martlet_follower.x, obj_martlet_follower.y, obj_martlet_npc);
            obj_martlet_follower.image_alpha = 0;
            
            with (martlet)
            {
                can_walk = true;
                x_dest[0] = 750;
                y_dest[0] = obj_pl.y;
                end_direction = "up";
                actor_speed = 3;
            }
        }
        
        scene++;
        break;
    
    case 3:
        if (player_npc.npc_arrived == true && martlet.npc_arrived == true)
            scene++;
        
        break;
    
    case 4:
        if (scr_timer())
        {
            moray = 1167;
            starlo = 1169;
            mooch = 1165;
            ed = 1162;
            ace = 1158;
            
            with (obj_actor_npc_base)
            {
                end_direction = "down";
                axis_override = "y";
                actor_speed = 2;
            }
            
            moray.x = obj_pl.x;
            moray.can_walk = true;
            moray.x_dest[0] = moray.x;
            moray.y_dest[0] = obj_pl.y - 60;
            moray.actor_speed = 1;
            timer = 15;
            scene++;
        }
        
        break;
    
    case 5:
        if (moray.npc_arrived)
        {
            if (!scr_timer())
                exit;
            
            moray.npc_arrived = false;
            
            with (moray)
                path_start(pt_small_jump, 4, path_action_stop, false);
            
            audio_play_sound(snd_playerjump, 1, 0);
            timer = 15;
            scene++;
        }
        
        break;
    
    case 6:
        if (!scr_timer())
            exit;
        
        moray.npc_direction = "up";
        scr_text();
        msg.talker[0] = moray;
        msg.message[0] = "* Guys! Looky here!";
        msg.message[1] = "* Someone new has stumbled#  into our humble town.";
        msg.prt[0] = spr_portrait_moray_normal;
        msg.prt[1] = spr_portrait_moray_normal;
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 7:
        moray.npc_direction = "down";
        ace.x_dest[0] = ace.x;
        ace.y_dest[0] = moray.y;
        ace.can_walk = true;
        
        if (ace.npc_arrived)
            scene++;
        
        break;
    
    case 8:
        scr_text();
        msg.sndfnt = snd_talk_ace;
        msg.talker[0] = ace;
        msg.message[0] = "* This better not be#  another joke...";
        msg.prt[0] = spr_portrait_ace_hand;
        
        if (!global.dialogue_open)
        {
            ace.x_dest[0] = starlo.x + 80;
            ace.y_dest[0] = obj_pl.y - 35;
            ace.axis_override = "x";
            ace.can_walk = true;
            scene++;
        }
        
        break;
    
    case 9:
        ed.x_dest[0] = ed.x;
        ed.y_dest[0] = moray.y;
        ed.can_walk = true;
        
        if (ed.npc_arrived)
            scene++;
        
        break;
    
    case 10:
        scr_text();
        msg.sndfnt = snd_talk_ed;
        msg.talker[0] = ed;
        msg.message[0] = "* For once, don't look#  like it is.";
        msg.prt[0] = spr_portrait_ed_normal;
        
        if (!global.dialogue_open)
        {
            ed.x_dest[0] = starlo.x - 75;
            ed.y_dest[0] = obj_pl.y - 35;
            ed.axis_override = "x";
            ed.can_walk = true;
            scene++;
        }
        
        break;
    
    case 11:
        mooch.x_dest[0] = starlo.x + 40;
        mooch.y_dest[0] = obj_pl.y - 48;
        mooch.can_walk = true;
        
        if (mooch.npc_arrived)
            scene++;
        
        break;
    
    case 12:
        scr_text();
        msg.sndfnt = snd_talk_mooch;
        msg.talker[0] = mooch;
        msg.message[0] = "* Hiya, strangers!";
        msg.prt[0] = spr_portrait_mooch_smile;
        
        if (!global.dialogue_open)
        {
            mooch.npc_arrived = false;
            scene++;
        }
        
        break;
    
    case 13:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* Oh, hello!";
            message[1] = "* We're just passing#  through.";
            message[2] = "* We mean no harm, I#  promise.";
            prt[0] = spr_martlet_head_happy;
            prt[1] = spr_martlet_head_nervous_smile;
            prt[2] = spr_martlet_head_nervous_smile;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 14:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ed;
            talker[0] = other.ed;
            message[0] = "* That's what the last#  guy said.";
            message[1] = "* Let's just say he's one#  with the wind now...";
            prt[0] = spr_portrait_ed_mutter;
            prt[1] = spr_portrait_ed_normal;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 15:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* O-oh my gosh... You...";
            prt[0] = spr_martlet_head_shocked;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 16:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ed;
            talker[0] = other.ed;
            message[0] = "* BWAHAHA!";
            message[1] = "* I'm just kiddin' around.";
            message[2] = "* You were shakin' in#  your boots for a second!";
            prt[0] = spr_portrait_ed_smile;
            prt[1] = spr_portrait_ed_smile;
            prt[2] = spr_portrait_ed_smile;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 17:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* Heheh... heh... you sure#  got me!";
            prt[0] = spr_martlet_head_nervous_smile;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 18:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_moray;
            talker[0] = other.moray;
            color = true;
            col_modif[0] = make_color_rgb(255, 70, 160);
            message[0] = "* That wasn't very funny,#  Edward.";
            message_col[0][0] = "                         #  Edward ";
            message[1] = "* I can assure you we are#  a delight to be around.";
            message[2] = "* Nothing you can't#  handle I'm sure.";
            prt[0] = spr_portrait_moray_downer;
            prt[1] = spr_portrait_moray_plain;
            prt[2] = spr_portrait_moray_normal;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 19:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* I...";
            prt[0] = spr_martlet_head_nervous;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 20:
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = make_color_rgb(52, 170, 85);
            sndfnt = snd_talk_ace;
            talker[0] = other.ace;
            message[0] = "* Ugh...";
            message[1] = "* Why do you two insist#  on scaring away every#  monster you meet?";
            message[2] = "* At least Mooch never#  oversteps her bounds.";
            message_col[2][0] = "           Mooch                              ";
            prt[0] = spr_portrait_ace_stern;
            prt[1] = spr_portrait_ace_stern;
            prt[2] = spr_portrait_ace_normal;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 21:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_mooch;
            talker[0] = other.mooch;
            message[0] = "* Never!";
            prt[0] = spr_portrait_mooch_happy;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 22:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* Um, well, it was a#  pleasure to meet you#  four but...";
            message[1] = "* We'll be going#  now-   ";
            prt[0] = spr_martlet_head_nervous;
            prt[1] = spr_martlet_head_nervous_smile;
            
            if (message_current == 1)
            {
                skippable = false;
                
                if (cutoff == string_length(message[message_current]))
                {
                    other.scene++;
                    global.dialogue_open = false;
                }
            }
        }
        
        break;
    
    case 23:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            message[0] = "* Hold it right there, missy.";
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            audio_play_sound(mus_starlo_entrance, 1, 0);
            timer = 75;
        }
        
        break;
    
    case 24:
        scr_camera_move(obj_pl.x, obj_pl.y - 80, 0.5);
        starlo.x_dest[0] = starlo.x;
        starlo.y_dest[0] = obj_pl.y - 60;
        starlo.actor_speed = 0.5;
        starlo.can_walk = true;
        starlo.down_sprite = spr_starlo_down_walk_menacing;
        starlo.down_sprite_idle = spr_starlo_down_walk_menacing;
        moray.x_dest[0] = starlo.x - 30;
        moray.y_dest[0] = obj_pl.y - 48;
        moray.actor_speed = 2;
        moray.can_walk = true;
        moray.end_direction = "down";
        
        if (starlo.y > (__view_get(e__VW.YView, 0) + 20))
        {
            scr_text();
            
            with (msg)
            {
                skippable = false;
                position = 0;
                sndfnt = snd_talk_starlo;
                talker[0] = other.starlo;
                message[0] = "* Are my pals givin' you#  trouble?";
                message[1] = "* Come now...";
                message[2] = "* That ain't a way to#  treat guests, now is it?";
                prt[0] = spr_portrait_starlo_hidden;
                prt[1] = spr_portrait_starlo_hidden;
                prt[2] = spr_portrait_starlo_hidden;
            }
            
            if (scr_timer())
            {
                with (msg)
                {
                    if ((message_current + 1) < array_length_1d(message))
                    {
                        message_current += 1;
                        cutoff = 0;
                        other.timer = 75;
                    }
                    else
                    {
                        global.dialogue_open = false;
                    }
                }
            }
            
            if (!global.dialogue_open)
            {
                scene++;
                timer = 15;
            }
        }
        
        break;
    
    case 25:
        if (!starlo.npc_arrived || !scr_timer())
            exit;
        
        starlo.action_sprite = true;
        starlo.sprite_index = spr_starlo_reveal;
        starlo.image_speed = 0.3;
        starlo.down_sprite = spr_starlo_down_walk;
        
        if (starlo.image_index >= (starlo.image_number - 1))
        {
            audio_play_sound(mus_feisty, 1, 1);
            starlo.image_speed = 0;
            starlo.down_sprite_idle = spr_starlo_down_talk;
            starlo.action_sprite = false;
            scene++;
            timer = 15;
        }
        
        break;
    
    case 26:
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = make_color_rgb(255, 205, 107);
            sndfnt = snd_talk_starlo;
            talker[0] = obj_starlo_npc;
            message[0] = "* The name's North Star.#  I run this town.";
            message_col[0][0] = "             North Star                    ";
            message[1] = "* Not alone, of course.";
            message[2] = "* These fine monsters are#  my posse.";
            message[3] = "* Together, we are...";
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_normal;
            prt[3] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
        {
            starlo.action_sprite = true;
            starlo.sprite_index = spr_starlo_pose;
            starlo.image_speed = 0.25;
            starlo.image_index = 0;
            scene++;
        }
        
        break;
    
    case 27:
        if (floor(starlo.image_index == 5) && !audio_is_playing(snd_shotstrong))
        {
            audio_play_sound(snd_shotstrong, 1, 0);
            scr_screenshake(10, 1);
        }
        
        if (starlo.image_index >= (starlo.image_number - 1))
        {
            starlo.image_speed = 0;
            scene++;
        }
        
        break;
    
    case 28:
        if (!global.dialogue_open)
        {
            audio_sound_gain(mus_feisty, 0, 300);
            instance_create(__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2), __view_get(e__VW.YView, 0) + (__view_get(e__VW.HView, 0) / 4), obj_wild_east_stamp_feisty);
            scene += 0.2;
        }
        
        break;
    
    case 28.2:
        if (!instance_exists(obj_wild_east_stamp_feisty))
            cutscene_advance(28.4);
        
        break;
    
    case 28.4:
        audio_sound_gain(mus_feisty, 1, 300);
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            message[0] = "* Our name stands for:";
            prt[0] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
        {
            ed.action_sprite = true;
            ed.sprite_index = spr_ed_pose;
            ed.image_speed = 0.25;
            scene += 0.6;
        }
        
        break;
    
    case 29:
        if (floor(ed.image_index) == 6 && !audio_is_playing(snd_impact_gunshot))
        {
            audio_play_sound(snd_impact_gunshot, 1, 0);
            scr_screenshake(8, 1);
        }
        
        if (ed.image_index >= (ed.image_number - 1))
        {
            ed.image_speed = 0;
            scene++;
        }
        
        break;
    
    case 30:
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_yellow;
            message_col[0][0] = "  F";
            sndfnt = snd_talk_ed;
            message[0] = "* Fearlessness!";
            prt[0] = spr_portrait_ed_smile;
        }
        
        if (!global.dialogue_open)
        {
            moray.action_sprite = true;
            moray.sprite_index = spr_moray_pose;
            moray.image_speed = 0.25;
            scene++;
        }
        
        break;
    
    case 31:
        if (floor(moray.image_index) == 4 && !audio_is_playing(snd_shotweak))
        {
            audio_play_sound(snd_shotweak, 1, 0);
            scr_screenshake(6, 1);
        }
        
        if (moray.image_index >= (moray.image_number - 1))
        {
            moray.image_speed = 0;
            scene++;
        }
        
        break;
    
    case 32:
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_yellow;
            message_col[0][0] = "  E";
            sndfnt = snd_talk_moray;
            message[0] = "* Excellence!";
            prt[0] = spr_portrait_moray_normal;
        }
        
        if (!global.dialogue_open)
        {
            ace.action_sprite = true;
            ace.sprite_index = spr_ace_pose;
            ace.image_speed = 0.25;
            scene++;
        }
        
        break;
    
    case 33:
        if (floor(ace.image_index) == 11 && !audio_is_playing(snd_shotmid))
        {
            audio_play_sound(snd_shotmid, 1, 0);
            scr_screenshake(6, 1);
        }
        
        if (ace.image_index >= (ace.image_number - 1))
        {
            ace.image_speed = 0;
            scene++;
        }
        
        break;
    
    case 34:
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_yellow;
            message_col[0][0] = "  I";
            sndfnt = snd_talk_ace;
            message[0] = "* Intuition!";
            prt[0] = spr_portrait_ace_smile;
        }
        
        if (!global.dialogue_open)
        {
            mooch.action_sprite = true;
            mooch.sprite_index = spr_mooch_pose;
            mooch.image_speed = 0.25;
            scene++;
        }
        
        break;
    
    case 35:
        if (floor(mooch.image_index) == 6 && !audio_is_playing(snd_attackhitcrit))
        {
            audio_play_sound(snd_attackhitcrit, 1, 0);
            scr_screenshake(10, 1);
        }
        
        if (mooch.image_index >= (mooch.image_number - 1))
        {
            mooch.image_speed = 0;
            scene++;
        }
        
        break;
    
    case 36:
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_yellow;
            message_col[0][0] = "  S";
            sndfnt = snd_talk_mooch;
            message[0] = "* Sneakiness!";
            prt[0] = spr_portrait_mooch_smile;
        }
        
        if (!global.dialogue_open)
        {
            scene += 0.5;
            ed.image_index = 0;
            ed.image_speed = 1/3;
        }
        
        break;
    
    case 36.5:
        if (floor(ed.image_index) == 6 && !audio_is_playing(snd_impact_gunshot))
        {
            audio_play_sound(snd_impact_gunshot, 1, 0);
            scr_screenshake(8, 1);
        }
        
        if (ed.image_index >= (ed.image_number - 1))
        {
            ed.image_speed = 0;
            scene += 0.5;
        }
        
        break;
    
    case 37:
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_yellow;
            message_col[0][0] = "  T";
            sndfnt = snd_talk_ed;
            message[0] = "* Toughness!";
            prt[0] = spr_portrait_ed_normal;
        }
        
        if (!global.dialogue_open)
        {
            moray.image_index = 0;
            moray.image_speed = 0.25;
            scene += 0.5;
        }
        
        break;
    
    case 37.5:
        if (floor(moray.image_index) == 4 && !audio_is_playing(snd_shotweak))
        {
            audio_play_sound(snd_shotweak, 1, 0);
            scr_screenshake(6, 1);
        }
        
        if (moray.image_index >= (moray.image_number - 1))
        {
            moray.image_speed = 0;
            scene += 0.5;
        }
        
        break;
    
    case 38:
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_yellow;
            message_col[0][0] = "  Y";
            sndfnt = snd_talk_moray;
            message[0] = "* Youthfulness!";
            prt[0] = spr_portrait_moray_normal;
        }
        
        if (!global.dialogue_open)
            scene += 1;
        
        break;
    
    case 39:
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_yellow;
            message_col[0][0] = "  J";
            sndfnt = snd_talk_starlo;
            message[0] = "* Justice!";
            message[1] = "* ...";
            talker[1] = obj_starlo_npc;
            message[2] = "* The J is silent.";
            message[3] = "* Anyway,";
            message[4] = "* Now that we're#  introduced...";
            message[5] = "* I'd be glad to give you#  and yer buddy a tour-";
            message[6] = "* Hold on...";
            message[7] = "* Yer buddy...";
            message[8] = "* Are they a... HUMAN?";
            prt[0] = spr_portrait_starlo_smile;
            prt[1] = spr_portrait_starlo_serious;
            prt[2] = spr_portrait_starlo_distracted;
            prt[3] = spr_portrait_starlo_normal;
            prt[4] = spr_portrait_starlo_hidden;
            prt[5] = spr_portrait_starlo_normal;
            prt[6] = spr_portrait_starlo_serious;
            prt[7] = spr_portrait_starlo_serious;
            prt[8] = spr_portrait_starlo_surprised;
        }
        
        if (msg.message_current == 1)
            audio_sound_gain(mus_feisty, 0, 100);
        
        if (msg.message_current == 2)
        {
            starlo.action_sprite = false;
            mooch.action_sprite = false;
            ed.action_sprite = false;
            moray.action_sprite = false;
            ace.action_sprite = false;
        }
        
        if (msg.message_current == 3)
            audio_sound_gain(mus_feisty, 1, 100);
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 40:
        with (martlet)
        {
            x_dest[0] = obj_pl.x;
            y_dest[0] = obj_pl.y - 15;
            end_direction = "up";
            actor_speed = 4;
            axis_override = "y";
            can_walk = true;
        }
        
        scene++;
        break;
    
    case 41:
        if (!martlet.npc_arrived)
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* Um...";
            message[1] = "* Well... I won't say no?";
            prt[0] = spr_martlet_head_nervous;
            prt[1] = spr_martlet_head_nervous_smile;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 42:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            talker[0] = obj_starlo_npc;
            message[0] = "* I knew it!";
            message[1] = "* There ain't no doubt in#  my mind!";
            message[2] = "* That this kid is a real,#  living, authentic human!";
            message[3] = "* Sorry 'bout this.";
            message[4] = "* I gotta seize this#  once-in-a-lifetime#  opportunity!";
            message[5] = "* Ed, fetch me that kid.";
            prt[0] = spr_portrait_starlo_normal;
            prt[1] = spr_portrait_starlo_point;
            prt[2] = spr_portrait_starlo_smile;
            prt[3] = spr_portrait_starlo_hidden;
            prt[4] = spr_portrait_starlo_normal;
            prt[5] = spr_portrait_starlo_serious;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 43:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ed;
            talker[0] = other.ed;
            message[0] = "* Sure thing.";
            prt[0] = spr_portrait_ed_normal;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 44:
        ed.x_dest[0] = player_npc.x;
        ed.y_dest[0] = player_npc.y - 15;
        ed.can_walk = true;
        ed.end_direction = "down";
        
        with (martlet)
        {
            if (place_meeting(x, y - 30, other.ed))
            {
                x_dest[0] = x + 40;
                y_dest[0] = y;
                can_walk = true;
                actor_speed = 2;
                end_direction = "left";
                right_sprite = left_sprite;
                other.scene++;
            }
        }
        
        break;
    
    case 45:
        if (ed.npc_arrived)
        {
            ed.action_sprite = true;
            ed.sprite_index = spr_ed_grab_clover;
            ed.image_speed = 0.25;
            instance_destroy(player_npc);
            obj_pl.image_alpha = 0;
            
            if (round(ed.image_index) == 7)
            {
                if (!audio_is_playing(snd_toy_squeak))
                    audio_play_sound(snd_toy_squeak, 1, 0);
            }
            
            if (ed.image_index >= (ed.image_number - 1))
            {
                ed.image_speed = 0;
                ed.up_sprite = spr_ed_up_walk_clover;
                ed.right_sprite = spr_ed_right_walk_clover;
                ed.down_sprite = spr_ed_down_walk_clover;
                ed.left_sprite = spr_ed_left_walk_clover;
                ed.up_sprite_idle = spr_ed_up_walk_clover;
                ed.right_sprite_idle = spr_ed_right_walk_clover;
                ed.down_sprite_idle = spr_ed_down_walk_clover;
                ed.left_sprite_idle = spr_ed_left_walk_clover;
                ed.action_sprite = false;
                ed.x_dest[0] = starlo.x - 74;
                ed.y_dest[0] = starlo.y - 20;
                ed.can_walk = true;
                ed.end_direction = "down";
                ed.npc_arrived = false;
                scene++;
            }
        }
        
        break;
    
    case 46:
        if (ed.npc_arrived)
            scene++;
        
        break;
    
    case 47:
        martlet.x_dest[0] = 720;
        martlet.y_dest[0] = martlet.y;
        martlet.end_direction = "up";
        martlet.actor_speed = 2;
        martlet.can_walk = true;
        
        if (martlet.npc_arrived)
        {
            scr_text();
            
            with (msg)
            {
                sndfnt = snd_talk_martlet;
                talker[0] = other.martlet;
                message[0] = "* Wait! What are you doing#  with Clover!";
                prt[0] = spr_martlet_head_shocked;
            }
            
            if (!global.dialogue_open)
            {
                ace.npc_arrived = false;
                mooch.npc_arrived = false;
                moray.npc_arrived = false;
                moray.x_dest[0] = starlo.x - 30;
                moray.y_dest[0] = ace.y;
                moray.can_walk = true;
                mooch.x_dest[0] = starlo.x;
                mooch.y_dest[0] = ace.y;
                mooch.can_walk = true;
                ace.x_dest[0] = starlo.x + 30;
                ace.y_dest[0] = ace.y;
                ace.can_walk = true;
                scene++;
            }
        }
        
        break;
    
    case 48:
        if (ace.npc_arrived == true && mooch.npc_arrived == true && moray.npc_arrived == true && ed.npc_arrived == true)
        {
            timer = 15;
            scene++;
        }
        
        break;
    
    case 49:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            talker[0] = obj_starlo_npc;
            message[0] = "* Ah, Clover, is it?#  That's a mighty fine#  name!";
            message[1] = "* To answer yer question,#  Feathers, Clover and I#  got a town to run!";
            prt[0] = spr_portrait_starlo_distracted;
            prt[1] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 50:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* Don't \"Feathers\" me!";
            message[1] = "* You're speaking to#  Martlet of the Royal#  Guard!";
            message[2] = "* I can and will report#  you to King ASGORE for#  this abrasive behavior!";
            prt[0] = spr_martlet_head_angry;
            prt[1] = spr_martlet_head_angry;
            prt[2] = spr_martlet_head_angry;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 51:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            talker[0] = obj_starlo_npc;
            message[0] = "* Ye're Royal Guard? ";
            message[1] = "* That's funny, 'cuz I#  don't see anythin' to#  indicate that.";
            message[2] = "* No armor? Weapon? Badge?";
            prt[0] = spr_portrait_starlo_distracted;
            prt[1] = spr_portrait_starlo_serious;
            prt[2] = spr_portrait_starlo_smirk;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 52:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* I... left it all at#  my post in Snowdin!";
            prt[0] = spr_martlet_head_sad;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 53:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ace;
            talker[0] = other.ace;
            message[0] = "* Please, don't bother#  trying to fool#  us.";
            prt[0] = spr_portrait_ace_stern;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 54:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            talker[0] = obj_starlo_npc;
            message[0] = "* He's right.";
            message[1] = "* I am truly sorry 'bout#  this, I really am.";
            message[2] = "* But business is#  business.";
            message[3] = "* Together, we'll be the#  Feisty SIX!";
            prt[0] = spr_portrait_starlo_serious;
            prt[1] = spr_portrait_starlo_hidden;
            prt[2] = spr_portrait_starlo_normal;
            prt[3] = spr_portrait_starlo_smile;
        }
        
        if (!global.dialogue_open)
        {
            timer = 15;
            scene++;
        }
        
        break;
    
    case 55:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_ed;
            talker[0] = other.ed;
            message[0] = "* The alliteration...";
            prt[0] = spr_portrait_ed_mutter;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 56:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            talker[0] = obj_starlo_npc;
            message[0] = "* Shh.";
            prt[0] = spr_portrait_starlo_embarassed_smile;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 57:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = other.martlet;
            message[0] = "* Tsk!";
            message[1] = "* Clover! I can't go up#  against these guys.";
            message[2] = "* Don't worry! I'll figure#  this out!";
            prt[0] = spr_martlet_head_angry;
            prt[1] = spr_martlet_head_sad;
            prt[2] = spr_martlet_head_downer;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 58:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_moray;
            talker[0] = other.moray;
            message[0] = "* Star, should we be doing#  this?";
            message[1] = "* Poor Martlet is upset.";
            prt[0] = spr_portrait_moray_plain;
            prt[1] = spr_portrait_moray_downer;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 59:
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = make_color_rgb(90, 88, 207);
            sndfnt = snd_talk_mooch;
            talker[0] = other.mooch;
            message[0] = "* Don't be a buzzkill,#  Moray.";
            message_col[0][0] = "                      #  Moray ";
            message[1] = "* When's the last time#  something exciting#  happened around here?";
            prt[0] = spr_portrait_mooch_nervous;
            prt[1] = spr_portrait_mooch_normal;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 60:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_moray;
            talker[0] = other.moray;
            message[0] = "* You've got a point.";
            prt[0] = spr_portrait_moray_plain;
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 61:
        scr_text();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            talker[0] = obj_starlo_npc;
            message[0] = "* Ahem!";
            message[1] = "* This town's FULL of#  excitement. Especially#  now.";
            message[2] = "* Let's go, bud!";
            prt[0] = spr_portrait_starlo_serious;
            prt[1] = spr_portrait_starlo_normal;
            prt[2] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
        {
            scene++;
            starlo.can_walk = true;
            starlo.npc_arrived = false;
            starlo.x_dest[0] = starlo.x;
            starlo.y_dest[0] = starlo.y - 60;
            starlo.actor_speed = 1;
            starlo.end_direction = "up";
            scr_audio_fade_out(mus_feisty, 3000);
        }
        
        break;
    
    case 62:
        if (!starlo.npc_arrived)
            exit;
        
        with (starlo)
        {
            action_sprite = true;
            sprite_index = spr_starlo_turn_back;
        }
        
        scr_text();
        
        with (msg)
        {
            color = true;
            col_modif[0] = c_yellow;
            sndfnt = snd_talk_starlo;
            position = 0;
            talker[0] = other.starlo;
            message[0] = "* Oh, and Feathers...";
            message[1] = "* Welcome to The Wild#  East.";
            message_col[1][0] = "             The Wild#  East ";
            prt[0] = spr_portrait_starlo_hidden;
            prt[1] = spr_portrait_starlo_normal;
        }
        
        if (!global.dialogue_open)
        {
            starlo.action_sprite = false;
            starlo.npc_arrived = false;
            starlo.can_walk = true;
            starlo.x_dest[0] = starlo.x;
            starlo.y_dest[0] = starlo.y - 80;
            starlo.actor_speed = 1;
            ed.can_walk = true;
            ed.axis_override = "x";
            ed.x_dest[0] = starlo.x;
            ed.y_dest[0] = starlo.y - 100;
            ed.actor_speed = 1.5;
            scene++;
        }
        
        break;
    
    case 63:
        if (starlo.npc_arrived == true)
        {
            trn = instance_create(0, 0, obj_transition);
            trn.newRoom = 128;
            trn.fadespeed = 4;
            trn.xx = 200;
            trn.yy = 390;
            instance_destroy();
            global.party_member = -4;
        }
        
        break;
}
