if (live_call())
    return global.live_result;

switch (scene)
{
    case -1:
        if (obj_pl.y <= 200)
        {
            scr_cutscene_start();
            cutscene_advance();
            instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, obj_player_npc);
            obj_steamworks_mo.hsp = 6.5;
            obj_steamworks_mo.up_sprite = spr_mo_up_steamworks;
            obj_steamworks_mo.up_sprite_idle = spr_mo_up_steamworks;
        }
        
        break;
    
    case 0:
        if (abs(obj_player_npc.x - 209) > 5)
            cutscene_npc_walk(obj_player_npc, 209, obj_player_npc.y, 3, "x", "up");
        else
            cutscene_advance();
        
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
        if (cutscene_dialogue())
            scr_music_sudden_stop(164, 5, 1);
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            message[0] = "* Bam!";
            message[1] = "* You know who it is, right?";
            message[2] = "* It's ya boy";
            
            if (message_current == 2)
                message_timer = 10;
        }
        
        break;
    
    case 7:
        cutscene_npc_action_sprite(obj_player_npc, spr_pl_up_geno_shoot, 1, true, 0, snd_guardener_gun_cock, 0);
        
        if (obj_player_npc.image_index >= 6)
        {
            obj_player_npc.up_sprite = spr_pl_up_geno_gun_walk;
            obj_player_npc.up_sprite_idle = spr_pl_up_geno_gun_walk;
            obj_player_npc.image_speed = 0;
            cutscene_advance(8);
        }
        
        break;
    
    case 8:
        with (obj_steamworks_mo)
        {
            action_sprite = false;
            down_sprite_idle = spr_mo_steamworks_down_talk_serious;
        }
        
        audio_sound_pitch(mus_gimme_ur_cash_yellow, 1);
        cutscene_wait(1.5);
        break;
    
    case 9:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            message[0] = "* ...Mo.";
            message[1] = "* Hey, buddy... What's with the#  piece?";
            message[2] = "* I thought we had a connection,#  ya know?";
            message[3] = "* Like some sorta vaguely#  illegal partnership!";
            message[4] = "* You don't think I'm here to#  stab ya in the back, do you?";
            message[5] = "* I may be many things but the#  last thing I am is a snitch!";
        }
        
        break;
    
    case 10:
        cutscene_wait(1);
        break;
    
    case 11:
        obj_player_npc.action_sprite = false;
        
        if (cutscene_npc_walk_relative(obj_player_npc, 0, -10, 0.5, "x", "up"))
        {
            obj_steamworks_mo.up_sprite = spr_mo_down_steamworks_serious;
            obj_steamworks_mo.up_sprite_idle = spr_mo_down_steamworks_serious;
        }
        
        break;
    
    case 12:
        cutscene_npc_walk_relative(obj_steamworks_mo, 0, -10, 0.5, "y", "down");
        break;
    
    case 13:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            message[0] = "* Hey hey hey!!";
            message[1] = "* There ain't nothin' up my#  sleeve, kid! Nothin' but fur#  and admittedly cheap cologne!";
            message[2] = "* What you see is what you get#  with Mo!";
            message[3] = "* I ain't some unassuming badass#  waiting for a chance to unleash#  an attack!";
            message[4] = "* I'm just a salesman, alright?";
            message[5] = "* I'll leave, just put down the#  gun.";
            ch_msg = 5;
            ch[1] = "Rob";
            ch[2] = "Refrain";
            
            if (outcome == 1)
            {
                message[6] = "* It's money you want, right?";
                message[7] = "* Everyone loves money!";
                message[8] = "* H-Here, this is all I got!";
                message[9] = "* (You received 450G.)";
                other.choice = 2;
            }
            
            talker[9] = -4;
            talker[10] = obj_steamworks_mo;
            
            if (message_current == 8)
                sound_noloop = false;
            
            if (message_current == 9 && sound_noloop == false)
            {
                global.player_gold += 450;
                audio_play_sound(snd_success, 1, 0);
                sound_noloop = true;
            }
            
            if (outcome == 2)
                other.choice = 1;
        }
        
        break;
    
    case 14:
        with (obj_player_npc)
        {
            if (sprite_index != spr_pl_up_geno_shoot)
            {
                action_sprite = true;
                sprite_index = spr_pl_up_geno_shoot;
                image_speed = 1;
                image_index = 9;
            }
            else if (image_index >= (image_number - 1))
            {
                image_speed = 0;
                image_index = image_number - 1;
                
                with (other)
                    cutscene_wait(1.5);
            }
        }
        
        break;
    
    case 15:
        obj_pl.action_sprite = false;
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_steamworks_mo;
            
            if (other.choice == 1)
            {
                message[0] = "* Okay...";
                message[1] = "* Okay. We're cool, right?";
                message[2] = "* ...";
                message[3] = "* Ya know, I'm just gonna take#  my window and get outta here.";
                message[4] = "* I think I've had enough of#  this lifestyle...";
            }
            else
            {
                message[0] = "* Man...";
                message[1] = "* It's over for me.";
                message[2] = "* I'm a goner...";
                message[3] = "* If not now, tomorrow.";
                message[4] = "* ...";
                message[5] = "* Enjoy that G. It's good#  company.";
            }
        }
        
        break;
    
    case 16:
        cutscene_wait(1.5);
        break;
    
    case 17:
        cutscene_sfx_play(snd_manta_startup, 1);
        obj_steamworks_mo.up_sprite = spr_mo_up_steamworks;
        obj_steamworks_mo.up_sprite_idle = spr_mo_up_steamworks_idle;
        obj_steamworks_mo.npc_direction = "up";
        break;
    
    case 18:
        cutscene_wait(0.5);
        
        if (instance_exists(obj_camera))
            instance_destroy(obj_camera);
        
        break;
    
    case 19:
        cutscene_camera_move(obj_pl.x, 130, 1);
        break;
    
    case 20:
        cutscene_instance_create(210, -40, obj_manta_npc);
        break;
    
    case 21:
        if (cutscene_npc_walk(obj_manta_npc, 210, 95, 2, "y", "down"))
        {
            obj_manta_npc.action_sprite = true;
            obj_manta_npc.npc_dynamic_depth = false;
            obj_manta_npc.depth = 1000006;
            obj_manta_npc.sprite_index = spr_steamworks_manta_down_idle;
            obj_manta_npc.image_speed = 0.2;
        }
        
        break;
    
    case 22:
        cutscene_wait(0.5);
        break;
    
    case 23:
        obj_steamworks_mo.npc_dynamic_depth = false;
        obj_steamworks_mo.depth = obj_manta_npc.depth - 100000;
        cutscene_npc_walk(obj_steamworks_mo, 210, 80, 2, "y", "down");
        break;
    
    case 24:
        cutscene_wait(1.5);
        break;
    
    case 25:
        obj_manta_npc.action_sprite = false;
        cutscene_npc_walk(437, 210, -60, 2, "y");
        obj_steamworks_mo.npc_direction = obj_manta_npc.npc_direction;
        obj_steamworks_mo.y = obj_manta_npc.y - 15;
        break;
    
    case 26:
        cutscene_wait(1);
        global.sworks_flag[10] = 2;
        scr_radio_restart();
        break;
    
    case 27:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 28:
        cutscene_camera_reset();
        cutscene_end();
        instance_destroy(obj_steamworks_mo);
        instance_destroy(obj_manta_npc);
        break;
}
