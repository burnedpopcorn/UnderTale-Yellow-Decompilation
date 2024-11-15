var break_sound, i, shard, pitch_original, ready_sound;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_instance_create(64, 288, obj_asgore_npc);
        obj_asgore_npc.npc_direction = "left";
        break;
    
    case 1:
        if (obj_pl.y < 520)
        {
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            obj_player_npc.npc_direction = "up";
            scr_cutscene_start();
        }
        
        break;
    
    case 2:
        cutscene_npc_walk(1168, 160, 420, 3, "y", "up");
        break;
    
    case 3:
        cutscene_wait(0.5);
        break;
    
    case 4:
        cutscene_camera_move(obj_pl.x, 330, 2);
        break;
    
    case 5:
        cutscene_wait(1);
        break;
    
    case 6:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* . .";
            message[1] = "* The Underground is full#  of beauty.";
            message[2] = "* Friends... Families...";
            message[3] = "* Hopes... Dreams...";
            message[4] = "* Or at least... it was.";
            prt[0] = 3090;
            prt[1] = 3090;
            prt[2] = 3090;
            prt[3] = 3597;
            prt[4] = 3557;
            talker[0] = 959;
            position = 0;
        }
        
        break;
    
    case 7:
        cutscene_wait(1);
        break;
    
    case 8:
        cutscene_npc_walk(959, 160, 288, 1, "x", "right");
        break;
    
    case 9:
        cutscene_wait(0.25);
        break;
    
    case 10:
        cutscene_npc_direction(959, "down");
        break;
    
    case 11:
        cutscene_wait(1);
        break;
    
    case 12:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* . .";
            message[1] = "* Though valiantly they#  fought...";
            message[2] = "* Nobody could stop you,#  could they?";
            prt[0] = 3557;
            prt[1] = 3597;
            prt[2] = 3107;
            talker[0] = 959;
            position = 0;
        }
        
        break;
    
    case 13:
        cutscene_wait(1);
        break;
    
    case 14:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* I had hoped this day#  wouldn't come.";
            message[1] = "* Retaliation was#  inevitable but...";
            message[2] = "* I believed we could#  handle it as we always#  have.";
            prt[0] = 1923;
            prt[1] = 3107;
            prt[2] = 3090;
            talker[0] = 959;
            position = 0;
        }
        
        break;
    
    case 15:
        cutscene_npc_direction(959, "left");
        break;
    
    case 16:
        cutscene_wait(1.5);
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* My dear friends... ";
            message[1] = "* I am sorry.";
            prt[0] = 3090;
            prt[1] = 3597;
            talker[0] = 959;
            position = 0;
        }
        
        break;
    
    case 18:
        cutscene_npc_direction(959, "down");
        break;
    
    case 19:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* I know why you are here#  but... I'm afraid it's#  too late.";
            message[1] = "* Your goal is out of#  reach.";
            message[2] = "* Monsterkind's plight is#  not something I take#  pride in...";
            message[3] = "* But it is a conflict#  not of our making.";
            message[4] = "* ...";
            message[5] = "* One thing is certain,#  however.";
            message[6] = "* Your violence has#  ensured this war never#  to end.";
            message[7] = "* Many more, of both our#  kinds, will perish#  because of this day.";
            message[8] = "* Such is the path you#  chose.";
            prt[0] = 3107;
            prt[1] = 3107;
            prt[2] = 3090;
            prt[3] = 3090;
            prt[4] = 3557;
            prt[5] = 3557;
            prt[6] = 3597;
            prt[7] = 3597;
            prt[8] = 3557;
            talker[0] = 959;
            position = 0;
        }
        
        break;
    
    case 20:
        cutscene_npc_direction(959, "left");
        break;
    
    case 21:
        if (cutscene_wait(2))
            scr_audio_fade_out(obj_radio.current_song, 800);
        
        break;
    
    case 22:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* But...";
            message[1] = "* Even if you chose#  differently...";
            message[2] = "* The unfortunate truth#  of the matter is...";
            prt[0] = 3090;
            prt[1] = 3107;
            prt[2] = 3090;
            talker[0] = 959;
            position = 0;
        }
        
        break;
    
    case 23:
        cutscene_npc_direction(959, "down");
        obj_asgore_npc.action_sprite = true;
        obj_asgore_npc.sprite_index = spr_asgore_ready;
        obj_asgore_npc.image_index = 0;
        obj_asgore_npc.image_speed = 0;
        break;
    
    case 24:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* Your fate was sealed#  the moment you entered#  my kingdom.";
            prt[0] = 1703;
            talker[0] = 959;
            position = 0;
        }
        
        break;
    
    case 25:
        cutscene_wait(0.5);
        break;
    
    case 26:
        cutscene_npc_action_sprite(959, 3197, 1, true, 0, 658, 6);
        obj_asgore_npc.image_speed = 1;
        darken_target = 0.6;
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* We will rebuild.";
            message[1] = "* And with the help of#  your SOUL, we will be#  free.";
            message[2] = "* Goodbye.";
            prt[0] = 1703;
            prt[1] = 1703;
            prt[2] = 1703;
            talker[0] = 959;
            position = 0;
        }
        
        break;
    
    case 28:
        cutscene_camera_move(obj_pl.x, 360, 1);
        break;
    
    case 29:
        if (obj_asgore_npc.sprite_index != spr_asgore_throw)
            cutscene_npc_action_sprite(959, 3615, 1, true, 0);
        
        if (obj_asgore_npc.image_index >= 12 && !instance_exists(obj_asgore_trident))
        {
            instance_create_depth(obj_asgore_npc.x + 20, obj_asgore_npc.y - 4, -100, obj_asgore_trident);
            audio_play_sound(snd_undertale_swoosh, 1, 0);
            obj_asgore_trident.vspeed = 6;
        }
        
        if (obj_player_npc.sprite_index != spr_clover_geno_summon)
            cutscene_npc_action_sprite(1168, 190, 1, true, 0);
        
        if (obj_player_npc.image_index >= 7)
            obj_player_npc.image_speed = 0;
        
        if (instance_exists(obj_asgore_trident) && obj_asgore_trident.bbox_bottom >= (obj_player_npc.bbox_top - 12))
        {
            if (obj_asgore_trident.draw_overlay == false)
            {
                audio_play_sound(snd_hurt, 1, 0);
                obj_asgore_trident.draw_overlay = true;
                obj_asgore_trident.vspeed = 0;
            }
            
            if (cutscene_wait(1))
            {
                break_sound = audio_play_sound(snd_mirrorbreak1, 1, 0);
                audio_sound_pitch(break_sound, 0.8);
                audio_play_sound(snd_soul_gameover_hit_break, 1, 0);
                instance_destroy(obj_asgore_trident);
                i = 200;
                
                while (i <= 340)
                {
                    if (round(i) != 270)
                    {
                        shard = instance_create_depth(obj_player_npc.x + 14, obj_player_npc.y - 5, obj_player_npc.depth - 1, obj_asgore_trident_shard);
                        shard.direction = i;
                        shard.speed = 3;
                    }
                    
                    i += 15.555555555555555;
                }
            }
        }
        
        break;
    
    case 30:
        obj_asgore_npc.sprite_index = spr_asgore_surprised;
        obj_asgore_npc.image_index = 0;
        cutscene_wait(3.5);
        break;
    
    case 31:
        cutscene_dialogue();
        
        with (msg)
        {
            message[0] = "* !";
            prt[0] = 64;
            talker[0] = 959;
            position = 0;
            skippable = false;
        }
        
        cutscene_advance();
        break;
    
    case 32:
        darken_target = 0.35;
        
        if (cutscene_wait(1))
            instance_destroy(obj_dialogue);
        
        break;
    
    case 33:
        obj_player_npc.image_speed = 1;
        cutscene_npc_action_sprite(1168, 190, 1, true, 0);
        charge_time = 110;
        charge_time_max = 110;
        is_charged = false;
        charge_percentage = 1;
        break;
    
    case 34:
        charge_percentage = charge_time / charge_time_max;
        
        if (!audio_is_playing(snd_chargeshot_charge))
        {
            charge_sound = audio_play_sound(snd_chargeshot_charge, 1, 1);
            audio_sound_gain(charge_sound, 0.8, 0);
            audio_sound_pitch(charge_sound, 0.5);
        }
        else
        {
            pitch_original = audio_sound_get_pitch(charge_sound);
            
            if (pitch_original < 0.99)
                audio_sound_pitch(charge_sound, 1 - (0.5 * charge_percentage));
            else
                audio_sound_pitch(charge_sound, 1);
        }
        
        if (charge_time > 0)
        {
            charge_time -= 1;
        }
        else if (!is_charged)
        {
            darken_target = 0.75;
            scr_screenshake(6, 3);
            is_charged = true;
            ready_sound = audio_play_sound(snd_undertale_flash, 1, 0);
            audio_sound_gain(ready_sound, 0.5, 0);
            instance_create_depth(0, 0, -9999, obj_clover_flash);
            cutscene_advance();
        }
        
        break;
    
    case 35:
        cutscene_wait(3);
        break;
    
    case 36:
        audio_stop_sound(charge_sound);
        instance_create_depth(obj_pl.x, obj_pl.y - 30, -9999, obj_castle_beam);
        obj_asgore_npc.sprite_index = spr_asgore_death;
        obj_asgore_npc.image_speed = 0;
        obj_asgore_npc.xstart = obj_asgore_npc.x;
        obj_asgore_npc.ystart = obj_asgore_npc.y;
        cutscene_advance();
        break;
    
    case 37:
        if (!instance_exists(obj_castle_beam))
            cutscene_wait(1.5);
        
        break;
    
    case 38:
        cutscene_npc_action_sprite(1168, 75, 1, false);
        break;
    
    case 39:
        if (cutscene_wait(2))
        {
        }
        
        break;
    
    case 40:
        cutscene_camera_move(obj_player_npc.x, obj_asgore_soul.y, 1, false);
        break;
    
    case 41:
        cutscene_npc_walk(1168, obj_player_npc.x, obj_asgore_soul.y + 40, 1, "y", "up");
        break;
    
    case 42:
        cutscene_wait(1.5);
        break;
    
    case 43:
        obj_asgore_soul.scene += 1;
        cutscene_advance();
        break;
    
    case 44:
        if (!instance_exists(obj_asgore_soul))
            cutscene_advance();
        
        break;
    
    case 45:
        if (!instance_exists(obj_asgore_soul))
            cutscene_wait(1.5);
        
        break;
    
    case 46:
        if (obj_pl.y < 300)
            cutscene_camera_move(1168, 120, 1, true);
        
        cutscene_npc_walk(1168, 160, 120, 1, "x", "up");
        break;
    
    case 47:
        cutscene_wait(1);
        break;
    
    case 48:
        if (instance_exists(obj_player_npc))
            instance_destroy(obj_player_npc);
        
        if (cutscene_change_room(269, 160, 210, 0.03))
            obj_pl.image_alpha = 1;
        
        break;
}

if (abs(darken_target - darken_current) > 0.01)
    darken_current = lerp(darken_current, darken_target, 0.15);
else
    darken_current = darken_target;
