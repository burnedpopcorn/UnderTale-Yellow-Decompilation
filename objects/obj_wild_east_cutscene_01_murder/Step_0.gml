if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.y < 600)
        {
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_npc_walk(obj_player_npc, 720, 540, 3, "y", "up");
        break;
    
    case 2:
        cutscene_camera_move(720, 440, 1);
        break;
    
    case 3:
        cutscene_wait(0.25);
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_starlo_npc;
            message[0] = "* She told me to run.";
            message[1] = "* She told me to hide.";
            message[2] = "* But nah...";
            message[3] = "* That ain't what a#  dignified sheriff would#  do.";
            prt[0] = spr_portrait_starlo_sad;
            prt[1] = spr_portrait_starlo_sad;
            prt[2] = spr_portrait_starlo_hurt;
            prt[3] = spr_portrait_starlo_plain;
            position = 0;
        }
        
        break;
    
    case 5:
        cutscene_wait(0.25);
        break;
    
    case 6:
        cutscene_npc_direction(obj_starlo_npc, "down");
        break;
    
    case 7:
        cutscene_wait(0.25);
        break;
    
    case 8:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_starlo_npc;
            message[0] = "* You see, I've heard#  you've been up to no#  good.";
            message[1] = "* You've been mozyin'#  'round...";
            message[2] = "* ...Terrorizin' the nice#  folk of this underground#  settlement.";
            message[3] = "* You're an outlaw.";
            message[4] = "* My job...";
            message[5] = "* My job is to bring#  justice upon folks like#  you.";
            message[6] = "* Folks who take pleasure#  in disturbin' the peace.";
            message[7] = "* Now...";
            message[8] = "* You have a method to#  what yer doin'.";
            message[9] = "* You coulda shot me by#  now but ya haven't.";
            message[10] = "* Howabout we settle this#  fairly?";
            message[11] = "* A... dual.";
            message[12] = "* Fastest to their weapon#  wins.";
            prt[0] = spr_portrait_starlo_plain;
            prt[1] = spr_portrait_starlo_serious;
            prt[2] = spr_portrait_starlo_serious;
            prt[3] = spr_portrait_starlo_point;
            prt[4] = spr_portrait_starlo_plain;
            prt[5] = spr_portrait_starlo_serious;
            prt[6] = spr_portrait_starlo_point;
            prt[7] = spr_portrait_starlo_hurt;
            prt[8] = spr_portrait_starlo_plain;
            prt[9] = spr_portrait_starlo_plain;
            prt[10] = spr_portrait_starlo_serious;
            prt[11] = spr_portrait_starlo_serious;
            prt[12] = spr_portrait_starlo_serious;
            position = 0;
        }
        
        break;
    
    case 9:
        cutscene_wait(1);
        break;
    
    case 10:
        cutscene_npc_walk(obj_player_npc, 720, 490, 1, "y", "up");
        break;
    
    case 11:
        cutscene_wait(0.25);
        break;
    
    case 12:
        cutscene_npc_walk(obj_starlo_npc, 720, 450, 1, "y", "down");
        break;
    
    case 13:
        cutscene_wait(0.2);
        break;
    
    case 14:
        cutscene_npc_walk(obj_player_npc, 740, 490, 1, "x", "left");
        break;
        cutscene_advance();
        break;
    
    case 15:
        cutscene_npc_walk(obj_starlo_npc, 700, 490, 1, "x", "right");
    
    case 16:
        cutscene_wait(1);
        break;
    
    case 17:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_starlo_npc;
            message[0] = "* Ten paces.";
            prt[0] = spr_portrait_starlo_serious;
        }
        
        break;
    
    case 18:
        cutscene_npc_walk(obj_starlo_npc, 580, 490, 1, "x", "right");
        cutscene_npc_walk(obj_player_npc, 860, 490, 1, "x", "left");
        instance_create(160, 90, obj_duel_mark_murder);
        cutscene_advance();
        break;
    
    case 19:
        if (obj_player_npc.npc_arrived && obj_starlo_npc.npc_arrived)
            cutscene_advance();
        
        break;
    
    case 20:
        cutscene_npc_action_sprite(obj_starlo_npc, spr_starlo_goggleless_shoot, 0, true);
        cutscene_npc_action_sprite(obj_player_npc, spr_pl_left_geno_shoot, 0, true);
        cutscene_advance();
        break;
    
    case 21:
        if (cutscene_duel_timer == 0)
            cutscene_duel_timer = 2;
        
        cutscene_wait(cutscene_duel_timer);
        
        if (cutscene_key_prompt())
        {
            obj_player_npc.npc_direction = "left";
            obj_player_npc.can_walk = false;
            obj_starlo_npc.npc_direction = "right";
            obj_starlo_npc.can_walk = false;
            obj_starlo_npc.image_index = 0;
            obj_starlo_npc.image_speed = 0;
            cutscene_advance(28);
            instance_destroy(obj_duel_mark_murder);
        }
        
        break;
    
    case 22:
        cutscene_duel_timer = 0;
        cutscene_duel_delay = 10;
        cutscene_advance();
        break;
    
    case 23:
        if (obj_starlo_npc.image_speed == 0)
        {
            if (cutscene_duel_delay > 0)
                cutscene_duel_delay -= 1;
            
            if (cutscene_duel_delay == 0)
            {
                audio_play_sound(snd_duel_mark, 1, 0);
                cutscene_advance();
            }
        }
        
        break;
    
    case 24:
        instance_destroy(obj_duel_mark_murder);
        cutscene_npc_action_sprite(obj_starlo_npc, spr_starlo_goggleless_shoot, 0.6, true, 0);
        cutscene_sfx_play_at_frame(obj_starlo_npc, 6, snd_duel_shot);
        break;
    
    case 25:
        cutscene_npc_action_sprite(obj_player_npc, spr_pl_goggleless_hit, 1/3, true, 0);
        break;
        break;
    
    case 26:
        cutscene_wait(0.5);
        break;
    
    case 27:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_starlo;
            message[0] = "* Heh...";
            message[1] = "* I... can't do it.";
            message[2] = "* Not for real.";
            message[3] = "* I'm... I'm such a#  fraud...";
            message[4] = "* ...";
            message[5] = "* Thanks for letting me#  feel cool for a short#  moment.";
            prt[0] = spr_portrait_starlo_flustered;
            prt[1] = spr_portrait_starlo_hidden;
            prt[2] = spr_portrait_starlo_hurt;
            prt[3] = spr_portrait_starlo_plain;
            prt[4] = spr_portrait_starlo_disappointed;
            prt[5] = spr_portrait_starlo_sad;
        }
        
        break;
    
    case 28:
        if (cutscene_wait(0.25))
            audio_play_sound(snd_guardener_gun_cock, 1, 0);
        
        break;
    
    case 29:
        cutscene_npc_action_sprite(obj_player_npc, spr_pl_left_geno_shoot, 1, true, 0, snd_shotstrong, 7);
        
        if (obj_player_npc.image_index >= 2 && !instance_exists(obj_wild_east_shot_overworld))
        {
            instance_create(obj_starlo_npc.x, obj_starlo_npc.y - 10, obj_wild_east_shot_overworld);
            obj_wild_east_shot_overworld.image_speed = 0;
            obj_wild_east_shot_overworld.image_index = 0;
        }
        
        if (obj_player_npc.image_index >= 7)
        {
            obj_wild_east_shot_overworld.image_speed = 0.5;
            cutscene_advance(31);
            exit;
        }
        
        if (instance_exists(obj_wild_east_shot_overworld) && obj_player_npc.image_index >= 1)
        {
            obj_wild_east_shot_overworld.image_index = 3 * ((obj_player_npc.image_index - 2) / 5);
            show_debug_message(obj_wild_east_shot_overworld.image_index);
        }
        
        break;
    
    case 30:
        instance_create(obj_starlo_npc.x, obj_starlo_npc.y - 40, obj_wild_east_shot_overworld);
        cutscene_advance();
        break;
    
    case 31:
        cutscene_sfx_play(snd_monster_damage_hit, 1);
        starlo_shake_x = 3;
        starlo_x_original = obj_starlo_npc.x;
        
        with (obj_starlo_npc)
        {
            action_sprite = true;
            sprite_index = spr_starlo_goggleless_shot;
            image_speed = 1/3;
            image_index = 0;
        }
        
        break;
    
    case 32:
        cutscene_timer++;
        
        if (cutscene_timer >= 5)
        {
            obj_starlo_npc.x = starlo_x_original + starlo_shake_x;
            cutscene_timer = 0;
            starlo_shake_x = lerp(-starlo_shake_x, 0, 0.5);
        }
        
        if (floor(starlo_shake_x == 0))
            cutscene_advance();
        
        with (obj_starlo_npc)
        {
            if (image_index >= 7)
            {
                image_speed = 0;
                image_index = 7;
            }
        }
        
        break;
    
    case 33:
        cutscene_wait(0.5);
        break;
    
    case 34:
        with (obj_starlo_npc)
        {
            image_speed = 1/3;
            
            if (image_index >= (image_number - 1))
            {
                image_speed = 0;
                image_index = image_number - 1;
                
                with (other)
                    cutscene_advance();
            }
        }
        
        break;
    
    case 35:
        cutscene_wait(0.25);
        break;
    
    case 36:
        cutscene_instance_create(obj_starlo_npc.x + 30, 710, obj_ceroba_npc);
        break;
    
    case 37:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Star! Everyone's#  evacuated!";
            message[1] = "* Why are you still here?#  I told you to-";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 38:
        cutscene_npc_walk(obj_ceroba_npc, obj_ceroba_npc.x, obj_starlo_npc.y + 60, 3, "y", "up");
        break;
    
    case 39:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* !";
            message[1] = "* STARLO!!!";
            prt[0] = spr_portrait_ceroba_nervous;
            prt[1] = spr_portrait_ceroba_nervous;
        }
        
        break;
    
    case 40:
        cutscene_npc_set_sprites(obj_ceroba_npc, spr_ceroba_up_walk, spr_ceroba_right_walk, spr_ceroba_down_walk, spr_ceroba_left_walk, spr_ceroba_up_talk, spr_ceroba_right_talk, spr_ceroba_down_talk, spr_ceroba_left_talk);
        break;
    
    case 41:
        cutscene_npc_walk(obj_ceroba_npc, obj_ceroba_npc.x, obj_starlo_npc.y, 4, "y", "left");
        break;
    
    case 42:
        cutscene_music = audio_play_sound(mus_sadlo, 1, 0);
        cutscene_advance();
        break;
    
    case 43:
        obj_ceroba_npc.image_alpha = 0;
        cutscene_action_sprite(obj_starlo_npc, spr_starlo_death_1, 0.25, true, 0);
        break;
    
    case 44:
        cutscene_camera_move(obj_starlo_npc.x + 20, obj_starlo_npc.y, 3, false);
        break;
    
    case 45:
        cutscene_wait(0.1);
        break;
    
    case 46:
        background_fade_alpha += 0.025;
        
        if (background_fade_alpha >= 1)
            cutscene_advance();
        
        break;
    
    case 47:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_starlo_npc;
            talker[1] = obj_ceroba_npc;
            talker[2] = obj_starlo_npc;
            talker[3] = obj_ceroba_npc;
            talker[6] = obj_starlo_npc;
            message[0] = "* C-Ceroba I...";
            message[1] = "* Nonononono, why didn't#  you listen!?";
            message[2] = "* I almost w... won...";
            message[3] = "* Y-you... did your best.";
            message[4] = "* You're the greatest#  s-sheriff in the#  Underground, Starlo.";
            message[5] = "* You are.";
            message[6] = "* Th... thanks... for#  playing a... along all#  these... years.";
            message[7] = "* Now... d... do what's#  right.";
            message[8] = "* Deliver... ";
            message[9] = "* J-Justice.";
            prt[0] = spr_portrait_starlo_embarassed;
            prt[1] = spr_portrait_ceroba_nervous;
            prt[2] = spr_portrait_starlo_hurt;
            prt[3] = spr_portrait_ceroba_closed_eyes;
            prt[4] = spr_portrait_ceroba_closed_eyes;
            prt[5] = spr_portrait_ceroba_closed_eyes;
            prt[6] = spr_portrait_starlo_flustered;
            prt[7] = spr_portrait_starlo_embarassed;
            prt[8] = spr_portrait_starlo_embarassed;
            prt[9] = spr_portrait_starlo_hurt;
        }
        
        break;
    
    case 48:
        cutscene_wait(0.25);
        break;
    
    case 49:
        cutscene_action_sprite(obj_starlo_npc, spr_starlo_death_2, 0.25, true, 0, snd_monster_damage_death, 40);
        break;
    
    case 50:
        cutscene_wait(0.5);
        break;
    
    case 51:
        cutscene_audio_fade(cutscene_music, 0, 500, 0.25, false, true);
        break;
    
    case 52:
        cutscene_wait(1);
        break;
    
    case 53:
        obj_player_npc.x = __view_get(e__VW.XView, 0) + 320 + 30;
        obj_player_npc.action_sprite = false;
        cutscene_advance();
        break;
    
    case 54:
        cutscene_camera_move(obj_starlo_npc.x + 80, obj_starlo_npc.y, 0.5, 0, false);
        break;
    
    case 55:
        cutscene_wait(0.5);
        break;
    
    case 56:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* ...";
            message[1] = "* ...";
            prt[0] = spr_portrait_ceroba_disapproving;
            prt[1] = spr_portrait_ceroba_angry;
            portrait_can_animate = false;
        }
        
        break;
    
    case 57:
        cutscene_npc_reset_sprite(obj_ceroba_npc, "left");
        obj_ceroba_npc.image_alpha = 1;
        instance_destroy(obj_starlo_npc);
        break;
    
    case 58:
        cutscene_wait(0.25);
        break;
    
    case 59:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* ...";
            prt[0] = spr_portrait_ceroba_angry;
            portrait_can_animate = false;
        }
        
        break;
    
    case 60:
        cutscene_wait(0.05);
        break;
    
    case 61:
        cutscene_npc_set_sprites(obj_ceroba_npc, spr_ceroba_up_run, spr_ceroba_right_run, spr_ceroba_down_run, spr_ceroba_left_run, spr_ceroba_up_talk, spr_ceroba_right_talk, spr_ceroba_down_talk, spr_ceroba_left_talk);
    
    case 62:
        cutscene_npc_walk(obj_ceroba_npc, obj_player_npc.x - 30, obj_ceroba_npc.y, 6, "x", "right");
        break;
    
    case 63:
        obj_pl.direction = 180;
        obj_player_npc.image_alpha = 0;
        obj_ceroba_npc.image_alpha = 0;
        cutscene_battle_initiate("ceroba genocide", true, false);
        break;
        obj_heart_initiate_battle.draw_player_sprite = false;
}

if (scene >= 19 && scene <= 21 && obj_duel_mark_murder.draw_alpha > 0)
{
    if (cutscene_key_prompt())
    {
        obj_player_npc.npc_direction = "left";
        obj_player_npc.can_walk = false;
        obj_starlo_npc.npc_direction = "right";
        obj_starlo_npc.can_walk = false;
        obj_starlo_npc.image_index = 0;
        obj_starlo_npc.image_speed = 0;
        cutscene_advance(28);
        instance_destroy(obj_duel_mark_murder);
    }
}

if (scene >= 42 && instance_exists(obj_starlo_npc))
    obj_starlo_npc.depth = depth - 1;

if (scene >= 54)
    obj_player_npc.depth = depth - 1;

if (scene >= 57)
    obj_ceroba_npc.depth = depth - 1;
