if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.y <= 200)
        {
            scr_cutscene_start();
            cutscene_advance();
            obj_steamworks_mo.hsp = 6.5;
        }
        
        break;
    
    case 1:
        cutscene_audio_fade(obj_radio.current_song, 0, 500, 0.15, false, true);
        break;
    
    case 2:
        cutscene_music_start(164, 1);
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        with (obj_steamworks_mo)
        {
            if (x == xstart && !audio_is_playing(snd_mo_slide))
                audio_play_sound(snd_mo_slide, 20, 0);
            
            if (hsp > 0)
            {
                hsp -= 0.1;
                x += hsp;
            }
            
            if (x >= 210)
            {
                action_sprite = false;
                npc_direction = "down";
                x = 210;
                other.scene++;
            }
        }
        
        break;
    
    case 5:
        cutscene_npc_reset_sprite(obj_steamworks_mo, "down");
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            message[0] = "* Bam!";
            message[1] = "* It's ya boy, Mo!";
            message[2] = "* How did I get here?";
            message[3] = "* I got contacts, aight? Eyes#  all over the 'Ground.";
            message[4] = "* Enough chit-chat though, it's#  business time!";
            message[5] = "* As you know, I'm always#  scoutin' around for the next#  big thing, right? Right.";
            message[6] = "* So I was on my way here and#  spotted a buncha glowy plants#  on a wall.";
        }
        
        break;
    
    case 7:
        cutscene_wait(0.25);
        break;
    
    case 8:
        audio_play_sound(snd_mo_ignite, 1, 0);
        audio_play_sound(snd_flame_loop, 1, 1);
        cutscene_instance_create(obj_steamworks_mo.x - 3, obj_steamworks_mo.y - 18, obj_steamworks_mo_flame);
        break;
    
    case 9:
        cutscene_wait(0.25);
        break;
    
    case 10:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            message[0] = "* First thought that sprung to#  mind? Taste them.";
            message[1] = "* And I'll tell ya what, the#  stuff hit me like WAM!";
            message[2] = "* Best cuisine you'll ever#  experience, truly.";
            
            if (global.party_member == -4)
            {
                message[3] = "* I even molded them into#  recognizable food shapes for#  that visual appeal!";
                
                if (message_current == 1 && obj_steamworks_mo_flame.sprite_index == spr_mo_steamworks_fire_1)
                {
                    obj_steamworks_mo_flame.sprite_index = spr_mo_steamworks_fire_2;
                    audio_play_sound(snd_mo_ignite, 1, 0);
                }
                
                if (message_current == 3 && obj_steamworks_mo_flame.sprite_index == spr_mo_steamworks_fire_2)
                {
                    obj_steamworks_mo_flame.sprite_index = spr_mo_steamworks_fire_3;
                    audio_play_sound(snd_mo_ignite, 1, 0);
                }
            }
        }
        
        break;
    
    case 11:
        if (cutscene_wait(0.25))
        {
            if (global.party_member == -4)
                scene = 14;
        }
        
        break;
    
    case 12:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt_array[0] = snd_talk_ceroba;
            talker[0] = obj_ceroba_follower;
            message[0] = "* Uh...#  You got something...";
            prt[0] = spr_portrait_ceroba_nervous;
            sndfnt_array[1] = snd_talk_default;
            talker[1] = obj_steamworks_mo;
            message[1] = "* I ain't done with the pitch#  yet, miss.";
            message[2] = "* This is important.";
            sndfnt_array[3] = snd_talk_ceroba;
            talker[3] = obj_ceroba_follower;
            message[3] = "* But-";
            prt[3] = spr_portrait_ceroba_unamused;
            sndfnt_array[4] = snd_talk_default;
            talker[4] = obj_steamworks_mo;
            message[4] = "* Like I was sayin', plants?#  More like PLEASED!!!!";
            message[5] = "* I even molded them into#  recognizable food shapes for#  that visual appeal!";
            
            if (message_current == 1 && obj_steamworks_mo_flame.sprite_index == spr_mo_steamworks_fire_1)
            {
                obj_steamworks_mo_flame.sprite_index = spr_mo_steamworks_fire_2;
                audio_play_sound(snd_mo_ignite, 1, 0);
            }
            
            if (message_current == 4 && obj_steamworks_mo_flame.sprite_index == spr_mo_steamworks_fire_2)
            {
                obj_steamworks_mo_flame.sprite_index = spr_mo_steamworks_fire_3;
                audio_play_sound(snd_mo_ignite, 1, 0);
            }
        }
        
        break;
    
    case 13:
        cutscene_wait(0.25);
        break;
    
    case 14:
        if (instance_exists(obj_steamworks_mo_flame))
            instance_destroy(obj_steamworks_mo_flame);
        
        cutscene_npc_action_sprite(obj_steamworks_mo, spr_mo_steamworks_throw_hat, 1/3, false, 0, snd_mo_hat_toss, 2);
        
        if (obj_steamworks_mo.image_index >= 7 && !instance_exists(obj_steamworks_mo_hat))
            instance_create(obj_steamworks_mo.x + 22, obj_steamworks_mo.y + 16, obj_steamworks_mo_hat);
        
        obj_steamworks_mo.down_sprite_idle = spr_mo_steamworks_down_talk_nohat;
        break;
    
    case 15:
        cutscene_npc_reset_sprite(obj_steamworks_mo, "down");
        break;
    
    case 16:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            message[0] = "* Visual appeal is half the#  battle I say!";
        }
        
        break;
    
    case 17:
        cutscene_wait(0.2);
        break;
    
    case 18:
        cutscene_npc_action_sprite(obj_steamworks_mo, spr_mo_steamworks_undress, 1/3, false, 0, snd_mo_jacket_toss, 4);
        
        if (obj_steamworks_mo.image_index >= 16 && obj_steamworks_mo_hat.sprite_index != spr_mo_steamworks_coat)
        {
            obj_steamworks_mo_hat.sprite_index = spr_mo_steamworks_coat;
            obj_steamworks_mo_hat.image_index = 0;
            obj_steamworks_mo_hat.image_speed = 1/3;
        }
        
        obj_steamworks_mo.down_sprite_idle = spr_mo_steamworks_alt_talk;
        break;
    
    case 19:
        audio_stop_sound(snd_flame_loop);
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            message[0] = "* Ain't nobody gonna buy ya#  product if it looks ugly#  right???";
        }
        
        break;
    
    case 20:
        cutscene_wait(0.2);
        break;
    
    case 21:
        if (obj_steamworks_mo_hat.sprite_index != spr_mo_steamworks_coat_light_up)
        {
            obj_steamworks_mo_hat.sprite_index = spr_mo_steamworks_coat_light_up;
            obj_steamworks_mo_hat.image_speed = 1;
        }
        
        if (obj_steamworks_mo_hat.image_index >= (obj_steamworks_mo_hat.image_number - 1))
        {
            instance_create(obj_steamworks_mo_hat.x, obj_steamworks_mo_hat.y, obj_steamworks_mo_flame);
            obj_steamworks_mo_hat.image_alpha = 0;
            obj_steamworks_mo_hat.image_speed = 0;
            obj_steamworks_mo_flame.sprite_index = spr_mo_steamworks_fire_4;
            obj_steamworks_mo_flame.image_alpha = 1;
            cutscene_advance();
        }
        
        break;
    
    case 22:
        cutscene_wait(0.8);
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            message[0] = "* But you would, I know it. Ol'#  Mo can always count on your#  business!";
        }
        
        break;
    
    case 24:
        if (cutscene_wait(0.2))
            break;
    
    case 25:
        cutscene_npc_action_sprite(obj_steamworks_mo, spr_mo_steamworks_kick, 1/3, false, 0, snd_mo_jacket_kick, 6);
        
        if (obj_steamworks_mo.image_index >= 6 && obj_steamworks_mo_hat.hspeed == 0)
            obj_steamworks_mo_hat.state = 1;
        
        break;
    
    case 26:
        audio_stop_sound(snd_flame_loop);
        cutscene_wait(1.25);
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            if (global.party_member != -4)
            {
                talker[0] = obj_ceroba_follower;
                sndfnt_array[0] = snd_talk_ceroba;
                message[0] = "* You okay?";
                prt[0] = spr_portrait_ceroba_neutral;
                talker[1] = obj_steamworks_mo;
                sndfnt_array[1] = snd_talk_default;
                message[1] = "* Never better, haha!";
                message[2] = "* Now, where's my stand?";
            }
            else
            {
                talker[0] = obj_steamworks_mo;
                message[0] = "* Now, where's my stand?";
            }
        }
        
        break;
    
    case 28:
        cutscene_npc_set_sprites(obj_steamworks_mo, spr_mo_steamworks_alt_up, spr_mo_steamworks_alt_right, spr_mo_steamworks_alt_down, spr_mo_steamworks_alt_left, spr_mo_steamworks_alt_up, spr_mo_steamworks_alt_right, spr_mo_steamworks_alt_talk, spr_mo_steamworks_alt_left);
    
    case 29:
        cutscene_npc_walk(obj_steamworks_mo, 260, obj_steamworks_mo.y, 2, "x", "down");
        break;
    
    case 30:
        cutscene_npc_action_sprite(obj_steamworks_mo, spr_mo_steamworks_snap, 1/3, false, 0, snd_mo_snap, 3);
        break;
    
    case 31:
        obj_steamworks_mo_stand.hspeed = 6.8;
        audio_play_sound(snd_mo_slide, 20, 0);
        cutscene_advance();
        break;
    
    case 32:
        with (obj_steamworks_mo_stand)
        {
            if (hspeed > 0)
                hspeed -= 0.1;
            
            if (x >= 210)
            {
                hspeed = 0;
                x = 210;
                other.scene++;
            }
            
            depth = 100;
        }
        
        obj_steamworks_mo_stand_sign.hspeed = obj_steamworks_mo_stand.hspeed;
        break;
    
    case 33:
        cutscene_wait(0.5);
        break;
    
    case 34:
        audio_pause_sound(cutscene_music);
        audio_play_sound(snd_mo_stand_explodes, 1, 0);
        
        with (obj_steamworks_mo)
        {
            action_sprite = true;
            sprite_index = spr_mo_steamworks_down_disappointed;
            image_speed = 0;
            image_index = 0;
        }
        
        with (obj_steamworks_mo_stand)
            image_speed = 0.25;
        
        cutscene_advance();
        break;
    
    case 35:
        if (obj_steamworks_mo_stand.image_index >= (obj_steamworks_mo_stand.image_number - 1))
        {
            obj_steamworks_mo_stand.image_speed = 0;
            obj_steamworks_mo_stand.image_index -= 1;
            cutscene_advance();
        }
        
        break;
    
    case 36:
        cutscene_wait(1.5);
        break;
    
    case 37:
        with (obj_steamworks_mo)
            action_sprite = false;
        
        obj_steamworks_mo.npc_direction = "left";
        cutscene_dialogue();
        
        with (msg)
            message[0] = "* ...";
        
        break;
    
    case 38:
        cutscene_wait(1.1);
        break;
    
    case 39:
        obj_steamworks_mo_stand_sign.image_speed = 1/3;
        sound_noloop = false;
        cutscene_advance();
        break;
    
    case 40:
        if (obj_steamworks_mo_stand_sign.image_index >= 4 && !sound_noloop)
        {
            audio_play_sound(snd_mart_impact_2, 1, 0);
            sound_noloop = true;
        }
        
        cutscene_wait(1.6);
        break;
    
    case 41:
        cutscene_npc_direction(obj_steamworks_mo, "down");
        break;
    
    case 42:
        cutscene_wait(0.35);
        break;
    
    case 43:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            message[0] = "* I... uh... I have a few#  products left in my pocket!";
            message[1] = "* Don't go yet!";
        }
        
        break;
    
    case 44:
        audio_resume_sound(cutscene_music);
        obj_steamworks_mo_stand_sign.depth = 10000;
        cutscene_advance();
        break;
    
    case 45:
        cutscene_npc_walk(obj_steamworks_mo, 210, 135, 3, "y", "down");
        
        if (obj_steamworks_mo.y < (obj_steamworks_mo_stand.y - 10))
            obj_steamworks_mo_stand.depth = -obj_steamworks_mo_stand.y;
        
        break;
    
    case 46:
        scr_text();
        
        with (msg)
        {
            dialogue_is_minishop = true;
            portrait = false;
            position = 0;
            ch_msg = 0;
            ch[1] = "Moss Salad";
            ch[2] = "Grassy Fries";
            ch[3] = "Flower Stew";
            ch[4] = "Cancel";
            
            if (global.extra_flag[7] == true)
                ch[1] = "-SOLD OUT-";
            
            if (global.extra_flag[8] == true)
                ch[2] = "-SOLD OUT-";
            
            if (global.extra_flag[9] == true)
                ch[3] = "-SOLD OUT-";
            
            talker[0] = obj_steamworks_mo;
            message[0] = "* Here's what I got. (30 G)";
            
            if (global.sworks_flag[10] == 1)
            {
                message[0] = "* I'm still open for business!";
                message[1] = "* Take a look! 30G an item!";
                ch_msg = 1;
            }
            
            switch (outcome)
            {
                case 1:
                case 2:
                case 3:
                    ch_msg = -1;
                    
                    if (global.extra_flag[outcome + 6] == false)
                    {
                        if (!scr_inventory_check_space())
                        {
                            message[message_current + 1] = "* You seem to be carryin' a lot,#  buddy!";
                            message[message_current + 2] = "* Come back with a lighter load!";
                        }
                        else if (global.player_gold < 30)
                        {
                            message[message_current + 1] = "* Sorry, a monster's gotta make#  a profit from their#  investments.";
                            message[message_current + 2] = "* Need that G.";
                        }
                        else
                        {
                            talker[message_current + 1] = -4;
                            talker[message_current + 2] = obj_steamworks_mo;
                            message[message_current + 1] = "* (You got some " + ch[outcome] + "!)";
                            message[message_current + 2] = "* Appreciate it!";
                            global.player_gold -= 30;
                            scr_item(ch[outcome]);
                            global.extra_flag[outcome + 6] = true;
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
                    message[message_current + 1] = "* You're... leavin'?";
                    message[message_current + 2] = "* My products are high-quality,#  I swear!";
                    message[message_current + 3] = "* Come on, pal!";
                    other.scene++;
                    break;
            }
        }
        
        break;
    
    case 47:
        if (global.dialogue_open)
            exit;
        
        if (global.extra_flag[7] && global.extra_flag[8] && global.extra_flag[9])
        {
            scene = 48.5;
            scr_audio_fade_out(mus_gimme_ur_cash_yellow, 750);
            scr_cutscene_start();
            exit;
        }
        
        if (global.sworks_flag[10] == 0)
        {
            global.sworks_flag[10] = 1;
            global.cutscene = false;
        }
        
        cutscene_advance();
        break;
    
    case 48:
        with (obj_steamworks_mo)
        {
            if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
                other.scene = 46;
        }
        
        break;
    
    case 48.5:
        if (cutscene_wait(1))
            scene = 49;
        
        break;
    
    case 49:
        var sale_number = 0;
        
        for (var i = 1; i < array_length(global.extra_flag); i++)
        {
            if (global.extra_flag[i] == true)
                sale_number += 1;
        }
        
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            
            if (sale_number <= 3)
            {
                message[0] = "* Well... that's all I got.";
                message[1] = "* You never were very interested#  in my wares, huh?";
                message[2] = "* I guess I'm quite the lousy#  salesman when push comes to#  shove.";
                message[3] = "* Thanks for ya time.";
            }
            else if (sale_number < 9)
            {
                message[0] = "* You cleared me out!";
                message[1] = "* Thanks for spending all that#  G. Ya boy appreciates it!";
                message[2] = "* All in all, you've been a good#  customer.";
                message[3] = "* If ya ever need somethin', you#  can always count on me for#  quality!";
            }
            else
            {
                message[0] = "* I ain't the down-to-earth type#  but uh... Thanks...";
                message[1] = "* Ya know... for supportin' me so#  much.";
                message[2] = "* You emptied my inventory every#  time we crossed paths.";
                message[3] = "* I've been in a bit of#  financial trouble to be#  frank...";
                message[4] = "* But because of you, (and a#  little luck), I might be able#  to put that behind me.";
                message[5] = "* Ya done good, kid. Catch ya#  later!";
            }
        }
        
        break;
    
    case 50:
        cutscene_npc_walk(obj_steamworks_mo, 210, 115, 1, "y", "down");
        break;
    
    case 51:
        cutscene_wait(1);
        break;
    
    case 52:
        cutscene_npc_direction(obj_steamworks_mo, "down");
        break;
    
    case 53:
        cutscene_npc_action_sprite(obj_steamworks_mo, spr_mo_steamworks_snap, 1/3, false, 0, snd_mo_snap, 3);
        break;
    
    case 54:
        cutscene_wait(0.5);
        break;
    
    case 55:
        cutscene_sfx_play(snd_manta_startup, 1);
        break;
    
    case 56:
        cutscene_wait(0.5);
        
        if (instance_exists(obj_camera))
            instance_destroy(obj_camera);
        
        break;
    
    case 57:
        cutscene_camera_move(obj_pl.x, 130, 1);
        break;
    
    case 58:
        cutscene_instance_create(210, -40, obj_manta_npc);
        break;
    
    case 59:
        if (cutscene_npc_walk(obj_manta_npc, 210, 95, 4, "y", "down"))
        {
            obj_manta_npc.action_sprite = true;
            obj_manta_npc.npc_dynamic_depth = false;
            obj_manta_npc.depth = 1000006;
            obj_manta_npc.sprite_index = spr_steamworks_manta_down_idle;
            obj_manta_npc.image_speed = 0.2;
        }
        
        break;
    
    case 60:
        cutscene_wait(0.5);
        break;
    
    case 61:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            message[0] = "* Mo, out!";
        }
        
        break;
    
    case 62:
        obj_steamworks_mo.npc_dynamic_depth = false;
        obj_steamworks_mo.depth = obj_manta_npc.depth - 100000;
        cutscene_npc_walk(obj_steamworks_mo, 210, 80, 3, "y", "down");
        break;
    
    case 63:
        cutscene_wait(0.5);
        break;
    
    case 64:
        obj_manta_npc.action_sprite = false;
        cutscene_npc_walk(437, 210, -60, 2, "y");
        obj_steamworks_mo.npc_direction = obj_manta_npc.npc_direction;
        obj_steamworks_mo.y = obj_manta_npc.y - 15;
        break;
    
    case 65:
        cutscene_wait(1);
        global.sworks_flag[10] = 2;
        scr_radio_restart();
        break;
    
    case 66:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 67:
        cutscene_camera_reset();
        cutscene_end();
        instance_destroy(obj_steamworks_mo);
        instance_destroy(obj_manta_npc);
        break;
}
