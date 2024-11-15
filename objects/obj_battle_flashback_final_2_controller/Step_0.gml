var dialogue, _fx_haze, distort_amount_current, effect, laugh;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (obj_pl.x >= 870)
        {
            scr_cutscene_start();
            scene++;
        }
        
        break;
    
    case 1:
        dialogue = instance_create_depth(camera_get_view_x(view_camera[0]) + 140, camera_get_view_y(view_camera[0]) + 80, -9999, obj_dialogue_withered_floweys);
        
        with (dialogue)
        {
            message[0] = "* h-hello?";
            message[1] = "* where am i?";
        }
        
        scene++;
        break;
    
    case 2:
        if (!instance_exists(obj_dialogue_withered_floweys))
            scene++;
        
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        sprite_index = -4;
        visible = true;
        draw_alpha_flowey += 0.1;
        
        if (draw_alpha_flowey >= 1)
            scene++;
        
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        cutscene_camera_move(980, obj_pl.y, 1);
        break;
    
    case 7:
        scr_cutscene_end();
        scene++;
        break;
    
    case 8:
        if (obj_pl.x > (camera_get_view_x(view_camera[0]) + 160))
        {
            instance_destroy(obj_camera);
            camera_set_view_target(view_camera[0], 1031);
            scene++;
        }
        
        break;
    
    case 9:
        if (obj_pl.x > 1020)
        {
            with (obj_radio)
            {
                bgm = 615;
                event_user(0);
            }
            
            scene++;
        }
        
        break;
    
    case 10:
        _fx_haze = layer_get_fx("distort_effect");
        distort_amount_current = fx_get_parameter(_fx_haze, "g_Distort1Amount") + 0.2;
        
        if (distort_amount_current < 3)
        {
            fx_set_parameter(_fx_haze, "g_Distort1Amount", distort_amount_current);
            fx_set_parameter(_fx_haze, "g_Distort2Amount", distort_amount_current);
        }
        
        if (obj_pl.x > 5670)
        {
            scr_audio_fade_out(obj_radio.bgm, 1000);
            scr_cutscene_start();
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            obj_player_npc.action_sprite = true;
            obj_player_npc.sprite_index = spr_pl_right;
            obj_player_npc.image_speed = 0.2;
            cutscene_advance();
        }
        
        break;
    
    case 11:
        cutscene_wait(2);
        break;
    
    case 12:
        obj_player_npc.y += (sign(170 - obj_pl.y) * 1);
        
        if (abs(obj_player_npc.y - 170) <= 2)
        {
            obj_player_npc.y = 170;
            cutscene_advance();
        }
        
        break;
    
    case 13:
        cutscene_wait(3);
        break;
    
    case 14:
        depth = 1000;
        
        if (flowey_bg_alpha < 1)
        {
            flowey_bg_alpha += 0.05;
        }
        else
        {
            cutscene_advance();
            effect = audio_effect_create(AudioEffectType.Delay);
            effect.mix = 0.5;
            effect.time = 0.1;
            audio_bus_main.effects[0] = effect;
        }
        
        break;
    
    case 15:
        cutscene_wait(5);
        
        if (irandom(8) == 1)
        {
            laugh = audio_play_sound(choose(23, 630), 1, 0, random_range(0.3, 0.5), 0, random_range(0.6, 1.2));
            audio_sound_set_track_position(laugh, random_range(0, audio_sound_length(laugh)));
            audio_sound_gain(laugh, 0, 300);
        }
        
        break;
    
    case 16:
        if (!audio_is_playing(mus_f_newlaugh) && !audio_is_playing(snd_flowey_laugh))
        {
            audio_bus_main.effects[0] = undefined;
            obj_player_npc.npc_direction = "right";
            obj_player_npc.action_sprite = false;
            cutscene_advance();
        }
        
        break;
    
    case 17:
        cutscene_wait(1);
        break;
    
    case 18:
        cutscene_camera_move(5750, obj_pl.y, 1);
        break;
    
    case 19:
        cutscene_wait(1);
        break;
    
    case 20:
        dialogue = instance_create_depth(camera_get_view_x(view_camera[0]) + 100, camera_get_view_y(view_camera[0]) + 80, -9999, obj_dialogue_withered_floweys);
        
        with (dialogue)
            message[0] = "* what have i done.";
        
        scene++;
        break;
    
    case 21:
        if (!instance_exists(obj_dialogue_withered_floweys))
            scene++;
        
        break;
    
    case 22:
        loop_count = 7;
        
        if (cutscene_wait(1))
        {
            obj_player_npc.action_sprite = true;
            obj_player_npc.sprite_index = spr_pl_run_left;
            obj_player_npc.image_index = 0;
            obj_player_npc.image_speed = 0;
        }
        
        break;
    
    case 23:
        if (!audio_is_playing(mus_floweynew_yellow))
        {
            audio_sound_gain(mus_floweynew_yellow, 1, 0);
            flow_mus = audio_play_sound(mus_floweynew_yellow, 1, 0);
        }
        
        obj_player_npc.x += 2;
        obj_player_npc.image_index += 0.5;
        cutscene_wait(0.2);
        break;
    
    case 24:
        audio_stop_sound(mus_floweynew_yellow);
        loop_count--;
        
        if (loop_count > 0)
            scene = 23;
        else
            cutscene_advance();
        
        break;
    
    case 25:
        cutscene_instance_create(0, 0, obj_screen_shatter_effect);
        flowey_bg_alpha = 0;
        break;
    
    case 26:
        if (!instance_exists(obj_screen_shatter_effect))
        {
            depth = 0;
            draw_alpha = 1;
            persistent = true;
            cutscene_change_room(233, 160, 1490, 0.1);
            
            if (!texture_is_ready("BattleHotlandFloweyPaper"))
                texture_prefetch("BattleHotlandFloweyPaper");
            
            if (!texture_is_ready("BattleHotlandFloweyGray"))
                texture_prefetch("BattleHotlandFloweyGray");
            
            if (!texture_is_ready("BattleHotlandFloweyClay"))
                texture_prefetch("BattleHotlandFloweyClay");
            
            if (!texture_is_ready("BattleHotlandFloweyMechanical"))
                texture_prefetch("BattleHotlandFloweyMechanical");
            
            if (!texture_is_ready("BattleHotlandFloweyLowpoly"))
                texture_prefetch("BattleHotlandFloweyLowpoly");
            
            if (!texture_is_ready("BattleHotlandFloweyYarn"))
                texture_prefetch("BattleHotlandFloweyYarn");
            
            if (!texture_is_ready("BattleHotlandFloweyOrganic"))
                texture_prefetch("BattleHotlandFloweyOrganic");
        }
        
        break;
    
    case 27:
        instance_destroy(obj_flowey_battle_ow_controller);
        obj_pl.image_alpha = 1;
        cutscene_wait(4);
        break;
    
    case 28:
        draw_alpha -= 0.1;
        
        if (draw_alpha <= 0)
            scene++;
        
        break;
    
    case 29:
        cutscene_end();
        break;
}

if (flowey_bg_alpha > 0)
    flowey_bg_offset -= 0.1;

//if (room == rm_battle_flashback_final_2 && instance_exists(106520) && obj_pl.x > ((106520).bbox_right + 20))
//   (106520).y = 160;
if (room == rm_battle_flashback_final_2 && instance_exists(inst_7CF772ED) && obj_pl.x > ((inst_7CF772ED).bbox_right + 20))
    inst_7CF772ED.y = 160;