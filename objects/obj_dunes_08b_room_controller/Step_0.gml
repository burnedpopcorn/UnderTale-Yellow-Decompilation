var mo = 1615;
var stand = 1618;

switch (scene)
{
    case 0:
        if (global.dunes_flag[3] == 0)
        {
            if (obj_pl.y < 320)
            {
                scr_cutscene_start();
                scr_audio_fade(obj_radio.current_song, 500);
                scene++;
            }
        }
        else
        {
            with (stand)
            {
                if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
                    other.scene = 24;
            }
        }
        
        break;
    
    case 1:
        scr_camera_move(obj_pl.x, 280, 1);
        timer = 60;
        scene++;
        break;
    
    case 2:
        if (!scr_timer())
            exit;
        
        with (obj_radio)
        {
            bgm = 164;
            global.radio_restart = true;
        }
        
        instance_create(200, 460, obj_dunes_08b_mo);
        
        with (mo)
        {
            x_dest[0] = x;
            y_dest[0] = 370;
            npc_dynamic_depth = false;
            depth = -room_height;
        }
        
        timer = 25;
        scene++;
        break;
    
    case 3:
        with (mo)
        {
            if (npc_arrived)
            {
                with (other)
                {
                    if (!scr_timer())
                        exit;
                }
                
                path_start(pt_small_jump, 4, path_action_stop, false);
                audio_play_sound(snd_playerjump, 1, 0);
                instance_create(x, y - 29, obj_cutscene_ex);
                other.timer = 30;
                other.scene++;
            }
        }
        
        break;
    
    case 4:
        if (instance_exists(obj_cutscene_ex))
            obj_cutscene_ex.y = mo.y - 29;
        
        if (!scr_timer())
            exit;
        
        instance_destroy(obj_cutscene_ex);
        
        with (mo)
        {
            image_speed = 0.4;
            image_index = 0;
            action_sprite = true;
            sprite_index = spr_mo_dunes_sleeves;
            other.scene++;
        }
        
        break;
    
    case 5:
        with (mo)
        {
            if (floor(image_index) == 4 || floor(image_index) == 11)
                audio_play_sound(snd_fabric_rip, 1, 0);
            
            if (floor(image_index) == 20)
            {
                if (!audio_is_playing(snd_mo_pop))
                    audio_play_sound(snd_mo_pop, 1, 0);
            }
            
            if (on_animation_end())
            {
                action_sprite = false;
                up_sprite = spr_mo_up_dunes;
                right_sprite = spr_mo_right_dunes;
                down_sprite = spr_mo_down_dunes;
                left_sprite = spr_mo_left_dunes;
                up_sprite_idle = spr_mo_talk_up_dunes;
                right_sprite_idle = spr_mo_right_dunes;
                down_sprite_idle = spr_mo_talk_down_dunes;
                left_sprite_idle = spr_mo_left_dunes;
                other.scene++;
            }
        }
        
        break;
    
    case 6:
        with (mo)
        {
            x_dest[0] = x;
            y_dest[0] = 460;
            actor_speed = 5;
            can_walk = true;
        }
        
        scene++;
        break;
    
    case 7:
        with (mo)
        {
            if (npc_arrived)
            {
                x = -15;
                y = 250;
                action_sprite = true;
                can_walk = false;
                hsp = 6;
                sprite_index = spr_mo_slide_dunes;
                audio_play_sound(snd_mo_slide, 1, 0);
                npc_dynamic_depth = true;
                other.scene++;
            }
        }
        
        break;
    
    case 8:
        with (mo)
        {
            var xtarget = 160;
            
            if (global.route == 3)
                xtarget = 200;
            
            if (hsp > 0)
            {
                if (x > (xtarget - 175))
                    hsp -= 0.1;
                
                x += hsp;
            }
            
            if (x > xtarget)
            {
                action_sprite = false;
                npc_direction = "down";
                x = xtarget;
                other.timer = 15;
                other.scene++;
            }
        }
        
        break;
    
    case 9:
        if (!scr_timer())
            exit;
        
        scr_text();
        
        if (global.route != 3)
        {
            with (msg)
            {
                position = 0;
                talker[0] = mo;
                message[0] = "* Bam!";
                message[1] = "* Guess who it is?";
                message[2] = "* That's right! It's Mo!";
                message[3] = "* Long time no see!";
                message[4] = "* How have ya been? Don't answer#  that, we don't have the time.";
                message[5] = "* I'm here to make you a BRAND.#  NEW. OFFER!";
                message[6] = "* A hot climate calls for a hot#  item!";
                message[7] = "* Check it!";
            }
            
            scene++;
        }
        else
        {
            with (msg)
            {
                position = 0;
                talker[0] = mo;
                message[0] = "* Bam! Wam! Shang-a-lang!";
                message[1] = "* It's Mo time!";
                message[2] = "* And you know what they say:";
                message[3] = "* There's no time like MO TIME!";
                message[4] = "* Wait...";
                message[5] = "* You're that uh... that human#  from Snowdin.";
                message[6] = "* There's some pretty nasty#  rumors going on about you...";
                
                if (message_current == 0)
                    message_check = 0;
                
                if (message_current == 4 && message_check < 4)
                {
                    scr_music_sudden_stop(164, 3, 1);
                    message_check = 4;
                    obj_dunes_08b_mo.down_sprite_idle = spr_mo_talk_down_dunes_disappointed;
                    other.scene = 9.1;
                    other.timer = 45;
                }
            }
        }
        
        break;
    
    case 9.1:
        if (global.dialogue_open || !scr_timer())
            exit;
        
        if (obj_dunes_08b_mo.down_sprite != spr_mo_talk_down_dunes)
        {
            obj_dunes_08b_mo.down_sprite_idle = spr_mo_talk_down_dunes;
            scr_music_sudden_stop(164, 10, false);
        }
        
        scr_text();
        
        with (msg)
        {
            position = 0;
            talker[0] = mo;
            message[0] = "* But come on! We've all#  committed a few felonies in our#  time, right?";
            message[1] = "* For me, a pinch of petty#  theft, a sprinkle of tax#  fraud... Diet crime!";
            message[2] = "* For you, disturbing the peace,#  battery, several...#  homicides...";
            message[3] = "* ALLEGEDLY!";
            message[4] = "* Who's got proof, right?#  Gossip's gotta gossip!";
            message[5] = "* ...";
            message[6] = "* So, you're probably thinkin'#  “What's this handsome cat#  selling???”";
            message[7] = "* First of all, I ain't a cat#  but I do appreciate the#  compliment!";
            message[8] = "* I had this whole spiel about#  “Water” but, hey, for my best#  customer?";
            message[9] = "* I'll skip RIGHT to the premium#  inventory!";
            message[10] = "* Check it!";
        }
        
        scene = 9.2;
        break;
    
    case 9.2:
        if (!global.dialogue_open && cutscene_npc_action_sprite(obj_dunes_08b_mo, spr_mo_dunes_snap, 0.25, false, 0, snd_mo_snap, 2))
            scene = 9.3;
        
        break;
    
    case 9.3:
        if (!scr_timer())
            exit;
        
        stand = instance_create(-60, 240, obj_dunes_08b_stand);
        stand.hsp = 8.7;
        audio_play_sound(snd_mo_stand_depart, 1, 0);
        audio_resume_sound(obj_radio.current_song);
        scene = 9.4;
        break;
    
    case 9.4:
        with (stand)
        {
            if (hsp > 0)
            {
                hsp -= 0.1;
                x += hsp;
            }
            
            if (x > 200)
            {
                x = 200;
                other.scene = 9.5;
            }
        }
        
        break;
    
    case 9.5:
        if (cutscene_npc_walk(obj_dunes_08b_mo, 240, obj_dunes_08b_mo.y, 2, "y", "down", -4, 205, 230))
            scene = 23;
        
        break;
    
    case 10:
        if (global.dialogue_open)
            exit;
        
        with (mo)
        {
            action_sprite = true;
            image_speed = 0.4;
            image_index = 0;
            sprite_index = spr_mo_dunes_water;
            other.scene++;
        }
        
        obj_dunes_08b_dispenser.image_index = 1;
        break;
    
    case 11:
        with (mo)
        {
            if (floor(image_index) == 7)
            {
                if (!audio_is_playing(snd_tarpdrop))
                    audio_play_sound(snd_tarpdrop, 1, 0);
            }
            
            if (on_animation_end())
            {
                instance_create(mo.x, mo.y, obj_dunes_08b_mo_tarp);
                action_sprite = false;
                other.scene++;
            }
        }
        
        break;
    
    case 12:
        scr_text();
        
        with (msg)
        {
            position = 0;
            ch_msg = 4;
            ch[1] = "Yes";
            ch[2] = "No";
            talker[0] = mo;
            message[0] = "* Thaaat's right!";
            message[1] = "* I went all out this time. This#  is a real delicacy 'round here!";
            message[2] = "* It's called WATER. Catchy name,#  I know!";
            message[3] = "* Lucky for you, I'm giving out#  free samples!";
            message[4] = "* Want a glass?";
            
            if (outcome == 1)
            {
                message[5] = "* Comin' right up!";
                other.scene++;
            }
            
            if (outcome == 2)
            {
                message[5] = "* Oh, come on, buddy!";
                message[6] = "* Your tongue must be as dry as#  the ground!";
                message[7] = "* Let me treat ya!";
                other.scene++;
            }
        }
        
        break;
    
    case 13:
        if (global.dialogue_open)
            exit;
        
        with (mo)
        {
            x_dest[0] = x;
            y_dest[0] = 220;
            x_dest[1] = 232;
            y_dest[1] = 252;
            actor_speed = 2;
            can_walk = true;
            other.scene++;
        }
        
        break;
    
    case 14:
        with (mo)
        {
            if (!npc_arrived)
                exit;
            
            action_sprite = true;
            image_speed = 0.4;
            image_index = 0;
            sprite_index = spr_mo_dunes_dispense;
            obj_dunes_08b_dispenser.image_index = 2;
            instance_create(199, 269, part_steam_mo);
            other.scene++;
        }
        
        break;
    
    case 15:
        with (mo)
        {
            if (floor(image_index) == 7)
            {
                if (!audio_is_playing(snd_mo_kicks_the_bucket))
                    audio_play_sound(snd_mo_kicks_the_bucket, 1, 0);
            }
            
            if (floor(image_index) == 16)
            {
                if (!audio_is_playing(snd_switch))
                    audio_play_sound(snd_switch, 1, 0);
            }
            
            if (floor(image_index) == 59)
                audio_pause_sound(obj_radio.current_song);
            
            if (floor(image_index) == 75)
            {
                if (!audio_is_playing(snd_drip))
                    audio_play_sound(snd_drip, 1, 0);
            }
            
            if (on_animation_end())
            {
                image_speed = 0;
                
                with (obj_dunes_08b_dispenser)
                {
                    image_index = 3;
                    depth = mo.depth - 1;
                }
                
                other.scene++;
                other.timer = 15;
            }
        }
        
        break;
    
    case 16:
        if (!scr_timer())
            exit;
        
        with (mo)
        {
            instance_create(198, 270, obj_dunes_08b_mo_bucket);
            mo.y -= 2;
            action_sprite = false;
            npc_direction = "left";
            other.timer = 15;
            other.scene++;
        }
        
        break;
    
    case 17:
        if (!scr_timer())
            exit;
        
        with (mo)
        {
            action_sprite = false;
            npc_direction = "right";
            other.timer = 15;
            other.scene++;
        }
        
        break;
    
    case 18:
        if (!scr_timer())
            exit;
        
        mo.npc_direction = "down";
        scr_text();
        
        with (msg)
        {
            position = 0;
            talker[0] = mo;
            message[0] = "* One moment.";
        }
        
        scene++;
        break;
    
    case 19:
        if (global.dialogue_open)
            exit;
        
        with (mo)
        {
            x_dest[0] = -40;
            y_dest[0] = y;
            actor_speed = 6;
            can_walk = true;
        }
        
        timer = 60;
        scene++;
        break;
    
    case 20:
        if (mo.npc_arrived)
        {
            if (!scr_timer())
                exit;
            
            stand = instance_create(-60, 240, obj_dunes_08b_stand);
            stand.hsp = 8.7;
            audio_play_sound(snd_mo_stand_depart, 1, 0);
            audio_resume_sound(obj_radio.current_song);
            
            with (mo)
            {
                hsp = 7.3;
                action_sprite = true;
                y = 230;
                sprite_index = spr_mo_slide_dunes;
            }
            
            scene++;
        }
        
        break;
    
    case 21:
        with (stand)
        {
            if (hsp > 0)
            {
                hsp -= 0.1;
                x += hsp;
            }
            
            if (x > 200)
            {
                x = 200;
                other.scene++;
                audio_play_sound(snd_mo_slide, 1, 0);
            }
        }
        
        break;
    
    case 22:
        with (mo)
        {
            if (hsp > 0)
            {
                hsp -= 0.1;
                x += hsp;
            }
            
            if (x > 200)
            {
                x = 200;
                action_sprite = false;
                npc_direction = "down";
                other.scene++;
            }
        }
        
        break;
    
    case 23:
        scr_text();
        
        with (msg)
        {
            position = 0;
            talker[0] = mo;
            
            if (global.route != 3)
            {
                message[0] = "* If you know your boy Mo, you#  know I planned all of that.";
                message[1] = "* Here's my REAL product:#  ICE TEA!";
                message[2] = "* It's like the sequel to water.#  Way better!";
                message[3] = "* Now, I'ma be real with you.";
                message[4] = "* The tea doesn't have ice in it#  particularly.";
                message[5] = "* It started as a glass of ice,#  but that melted.";
                message[6] = "* All I had to do was throw a tea#  bag in there and WAM!";
                message[7] = "* Don't worry! It tastes better#  this way.";
            }
            else
            {
                message[0] = "* Ice Tea, baby!";
                message[1] = "* It's like the sequel to water!";
                message[2] = "* So...";
                message[3] = "* This is the part where you#  spend the G that may or may not#  belong to you!";
                message[4] = "* Hey, I ain't here to judge,#  I'm here to live!";
            }
        }
        
        if (!global.dialogue_open)
            scene++;
        
        break;
    
    case 24:
        scr_text();
        
        with (msg)
        {
            dialogue_is_minishop = true;
            portrait = false;
            position = 0;
            ch_msg = 0;
            ch[1] = "Ice Tea";
            ch[2] = "Green Tea";
            ch[3] = "Sea Tea";
            ch[4] = "Cancel";
            
            if (global.extra_flag[4] == true)
                ch[1] = "-SOLD OUT-";
            
            if (global.extra_flag[5] == true)
                ch[2] = "-SOLD OUT-";
            
            if (global.extra_flag[6] == true)
                ch[3] = "-SOLD OUT-";
            
            talker[0] = mo;
            message[0] = "* Here's what I got. (20 G)";
            
            if (global.dunes_flag[3] == 1)
            {
                message[0] = "* BAM!";
                message[1] = "* Welcome back!";
                message[2] = "* Here's what I got. (20 G)";
                ch_msg = 2;
            }
            
            switch (outcome)
            {
                case 1:
                case 2:
                case 3:
                    ch_msg = -1;
                    
                    if (global.extra_flag[outcome + 3] == false)
                    {
                        if (!scr_inventory_check_space())
                        {
                            message[message_current + 1] = "* Uh-oh, looks like you've got no#  space for this item.";
                            message[message_current + 2] = "* Come back when you've made some#  more room.";
                        }
                        else if (global.player_gold < 20)
                        {
                            message[message_current + 1] = "* Sorry, buddy. I'm gonna#  need more G than that.";
                        }
                        else
                        {
                            message[message_current + 1] = "* Great choice.";
                            message[message_current + 2] = "* Drink up!";
                            global.player_gold -= 20;
                            scr_item(ch[outcome]);
                            global.extra_flag[outcome + 3] = true;
                            audio_play_sound(snd_shop_purchase, 1, 0);
                        }
                    }
                    else
                    {
                        message[message_current + 1] = "* What a popular item! I wish I#  could sell you more, but I'm#  fresh out.";
                        choice = false;
                    }
                    
                    other.scene++;
                    break;
                
                case 4:
                    ch_msg = -1;
                    message[message_current + 1] = "* Come on, pal.";
                    message[message_current + 2] = "* I know my pitch was a little#  sloppy but I'm really tryin'.";
                    message[message_current + 3] = "* If you change your mind, I'll#  be here.";
                    other.scene++;
                    break;
            }
        }
        
        break;
    
    case 25:
        if (global.dialogue_open)
            exit;
        
        if (global.extra_flag[4] && global.extra_flag[5] && global.extra_flag[6])
        {
            scene = 27;
            scr_cutscene_start();
            exit;
        }
        
        if (scr_camera_move(obj_pl.x, obj_pl.y, 1))
        {
            global.dunes_flag[3] = 1;
            __view_set(e__VW.Object, 0, obj_pl);
            scr_cutscene_end();
            scene = 0;
        }
        
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* The alphabet must have#  25 letters now, cause I'm#  fresh outta T!";
            message[1] = "* I'm sure we'll meet#  again! Thanks for believin'#  in me!";
            talker[0] = obj_dunes_08b_mo;
        }
        
        break;
    
    case 28:
        scr_audio_fade_out(mus_gimme_ur_cash_yellow, 300);
        cutscene_npc_action_sprite(obj_dunes_08b_mo, spr_mo_dunes_snap, 0.25, false, 0, snd_mo_snap, 2);
        break;
    
    case 29:
        with (obj_dunes_08b_stand)
            hspeed = -6;
        
        audio_play_sound(snd_mo_stand_depart, 1, 0);
        scene++;
        break;
    
    case 30:
        cutscene_wait(2);
        break;
    
    case 31:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* MO, OUT!";
            talker[0] = obj_dunes_08b_mo;
        }
        
        break;
    
    case 32:
        cutscene_npc_walk(obj_dunes_08b_mo, -40, 260, 4, "y", "left");
        break;
    
    case 33:
        if (global.party_member != -4)
        {
            cutscene_advance(34);
            exit;
        }
        
        cutscene_advance(35);
        break;
    
    case 34:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_martlet;
            talker[0] = obj_martlet_follower;
            message[0] = "* That Mo is an odd one.\t";
            message[1] = "* I woulda talked to him#  but I don't know how...#  legal his business is.";
            message[2] = "* Our conversation#  could've turned very#  awkward, very fast.";
            prt[0] = spr_martlet_head_moderate;
            prt[1] = spr_martlet_head_questioning;
            prt[2] = spr_martlet_head_moderate;
        }
        
        break;
    
    case 35:
        instance_destroy();
        instance_destroy(obj_dunes_08b_mo);
        instance_destroy(obj_dunes_08b_stand);
        global.dunes_flag[3] = 2;
        scr_radio_restart();
        scr_cutscene_end();
        break;
}
