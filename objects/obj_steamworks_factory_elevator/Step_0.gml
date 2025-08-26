if (live_call())
    return global.live_result;

if (act == 1)
{
    switch (scene)
    {
        case 0:
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            break;
        
        case 1:
            cutscene_npc_walk(obj_player_npc, 160, 120, 3, "x", "down");
            break;
        
        case 2:
            cutscene_wait(0.5);
            break;
        
        case 3:
            audio_play_sound(snd_ring, 1, 0);
            cutscene_advance();
            break;
        
        case 4:
            if (door_closed_amount < 1)
                door_closed_amount += 0.05;
            else
                cutscene_sfx_play(snd_elevator_door_shut, 1);
            
            break;
        
        case 5:
            cutscene_wait(1);
            break;
        
        case 6:
            cutscene_advance();
            break;
        
        case 7:
            cutscene_sfx_play(snd_elevator, 1);
            audio_sound_pitch(snd_elevator, 1);
            break;
        
        case 8:
            cutscene_wait(3.7);
            break;
        
        case 9:
            cutscene_advance();
            break;
        
        case 10:
            cutscene_wait(1);
            break;
        
        case 11:
            cutscene_sfx_play(snd_sliding_door_open, 1);
            break;
        
        case 12:
            if (door_closed_amount > 0)
                door_closed_amount -= 0.05;
            else
                cutscene_advance();
            
            break;
        
        case 13:
            cutscene_wait(0.25);
            break;
        
        case 14:
            cutscene_npc_walk(obj_player_npc, 160, 220, 3, "x", "down");
            break;
        
        case 15:
            audio_stop_all();
            instance_destroy(obj_player_npc);
            scr_cutscene_end();
            
            switch (asset_get_index(global.last_room_overworld))
            {
                case 210:
                    cutscene_change_room(rm_steamworks_37, 170, 140, 0.1);
                    break;
                
                case 207:
                    cutscene_change_room(rm_hotland_01, 160, 120, 0.1);
                    break;
            }
    }
    
    camera_set_view_pos(view_camera[0], 0, 0);
    camera_set_view_pos(view_camera[0], random_range(-screenshake_intensity, screenshake_intensity), random_range(screenshake_intensity, screenshake_intensity));
    
    if (scene > 7 && scene < 9)
    {
        if (screenshake_intensity < 1)
            screenshake_intensity += 0.05;
    }
    else if (screenshake_intensity > 0)
    {
        screenshake_intensity -= 0.15;
    }
}
else
{
    var flash = false;
    
    switch (scene)
    {
        case 0:
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            break;
        
        case 1:
            cutscene_npc_walk(obj_player_npc, 160, 120, 2, "x", "down");
            break;
        
        case 2:
            cutscene_wait(2);
            break;
        
        case 3:
        case 5:
        case 7:
            flash = true;
            cutscene_advance();
            break;
        
        case 4:
            cutscene_wait(0.9);
            break;
        
        case 6:
            cutscene_wait(0.4);
            break;
        
        case 8:
            cutscene_wait(1.2);
            break;
        
        case 9:
            if (scene != 9)
                audio_play_sound(snd_electric_flash, 1, 0);
            
            layer_enable_fx("effect_dark_overlay", false);
            scene++;
            break;
        
        case 10:
            cutscene_wait(1);
            break;
        
        case 11:
            audio_play_sound(snd_ring, 1, 0);
            cutscene_advance();
            break;
        
        case 12:
            if (door_closed_amount < 1)
                door_closed_amount += 0.05;
            else
                cutscene_sfx_play(snd_elevator_door_shut, 1);
            
            break;
        
        case 13:
            cutscene_wait(1);
            break;
        
        case 14:
            cutscene_advance();
            break;
        
        case 15:
            cutscene_sfx_play(snd_elevator_long, 1);
            break;
        
        case 16:
            cutscene_wait(2);
            break;
        
        case 17:
            audio_sound_gain(snd_elevator_long, 0.5, 1000);
            obj_radio.bgm = 353;
            global.radio_restart = true;
            cutscene_advance();
            break;
        
        case 18:
            if (!audio_is_playing(snd_elevator_long))
                cutscene_advance();
            
            break;
        
        case 19:
            cutscene_sfx_play(snd_sliding_door_open, 1);
            break;
        
        case 20:
            if (door_closed_amount > 0)
                door_closed_amount -= 0.05;
            else
                cutscene_advance();
            
            break;
        
        case 21:
            cutscene_wait(0.55);
            break;
        
        case 22:
            cutscene_npc_walk(obj_player_npc, 160, 220, 2, "x", "down");
            break;
        
        case 23:
            instance_destroy(obj_player_npc);
            scr_cutscene_end();
            global.hotland_flag[6] = 1;
            
            switch (asset_get_index(global.last_room_overworld))
            {
                case 210:
                    cutscene_change_room(rm_steamworks_37, 170, 140, 0.1);
                    break;
                
                case 207:
                    cutscene_change_room(rm_hotland_01, 160, 120, 0.1);
                    break;
            }
            
            break;
    }
    
    if (scene > 15 && scene < 19)
    {
        if (screenshake_intensity < 1)
            screenshake_intensity += 0.05;
    }
    else if (screenshake_intensity > 0)
    {
        screenshake_intensity -= 0.15;
    }
    
    if (flash == true)
    {
        audio_play_sound(snd_electric_flash, 1, 0);
        layer_enable_fx("effect_dark_overlay", true);
        
        if (!alarm[0])
            alarm[0] = 8;
    }
    
    camera_set_view_pos(view_camera[0], 0, 0);
    camera_set_view_pos(view_camera[0], random_range(-screenshake_intensity, screenshake_intensity), random_range(screenshake_intensity, screenshake_intensity));
}
