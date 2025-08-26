if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
        {
            scr_cutscene_start();
            scene++;
        }
        
        break;
    
    case 1:
        scr_text();
        
        with (msg)
        {
            message[0] = "* (Get on?)";
            ch_msg = 0;
            ch[1] = "Yes";
            ch[2] = "No";
            
            if (outcome == 1)
            {
                other.actor_clover = instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
                other.scene = 2;
            }
            
            if (outcome == 2)
            {
                other.scene = 0;
                scr_cutscene_end();
            }
        }
        
        break;
    
    case 2:
        cutscene_npc_walk(actor_clover, 1140, 300, 3, "x", "up");
        break;
    
    case 3:
        cutscene_wait(0.25);
        break;
    
    case 4:
        with (actor_clover)
        {
            audio_play_sound(snd_playerjump, 1, 0);
            action_sprite = true;
            jump_noloop = false;
            image_speed = 0;
            sprite_index = spr_pl_run_up;
            image_index = 5;
            vspeed = -2;
        }
        
        cutscene_advance();
        break;
    
    case 5:
        with (actor_clover)
        {
            if (y < 265)
                jump_noloop = true;
            
            if (jump_noloop == true)
            {
                vspeed += 0.5;
                
                if (vspeed >= 1.5)
                {
                    action_sprite = false;
                    npc_direction = "up";
                    vspeed = 0;
                    other.scene++;
                }
            }
        }
        
        break;
    
    case 6:
        cutscene_wait(1.5);
        break;
    
    case 7:
        with (obj_raft_flowey)
        {
            if (vspeed > -1)
                vspeed -= 0.025;
            
            if (vspeed < 0.5)
            {
                if (sprite_index != spr_ava_vertical)
                    sprite_index = spr_ava_vertical;
            }
            
            obj_player_npc.vspeed = vspeed;
        }
        
        if (obj_player_npc.y < 120)
        {
            obj_raft_flowey.vspeed = 0;
            obj_player_npc.vspeed = 0;
            cutscene_camera_freeze();
        }
        
        break;
    
    case 8:
        if (cutscene_wait(1.5))
            scr_audio_fade_out(obj_radio.bgm, 1000);
        
        break;
    
    case 9:
        depth = obj_player_npc.depth + 1;
        layer_y("overlay", layer_get_y("overlay") + 1);
        
        if (layer_get_y("overlay") >= 0)
            scene++;
        
        break;
    
    case 10:
        cutscene_wait(1.5);
        break;
    
    case 11:
        if (vspeed < 0.5)
            vspeed += 0.025;
        
        if (obj_player_npc.y >= (camera_get_view_y(view_camera[0]) + 210))
        {
            vspeed = 0;
            cutscene_advance();
        }
        
        obj_player_npc.vspeed = vspeed;
        break;
    
    case 12:
        cutscene_wait(1.5);
        break;
    
    case 13:
        image_alpha = 0;
        script_execute(scr_enemy_defragment);
        
        if (!audio_is_playing(snd_monster_damage_death))
            audio_play_sound(snd_monster_damage_death, 20, 0);
        
        scene++;
        break;
    
    case 14:
        cutscene_wait(1.5);
        var x_target = camera_get_view_x(view_camera[0]) + 160;
        var y_target = camera_get_view_y(view_camera[0]) + 210;
        obj_player_npc.x = lerp(obj_player_npc.x, x_target, 0.05);
        obj_player_npc.y = lerp(obj_player_npc.y, y_target, 0.05);
        break;
    
    case 15:
        if (yellow_overlay_alpha < 1)
            yellow_overlay_alpha += 0.05;
        else
            cutscene_advance();
        
        break;
    
    case 16:
        cutscene_wait(0.5);
        break;
    
    case 17:
        instance_destroy(obj_flowey_battle_ow_controller);
        room = rm_battle_flowey_phase_2;
        texture_flush("BattleHotlandFloweyPhase1");
        break;
}
