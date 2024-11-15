var audio_pos;

if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        cutscene_instance_create(160, 220, obj_player_npc);
        obj_player_npc.npc_direction = "up";
        obj_player_npc.image_alpha = 0;
        break;
    
    case 1:
        obj_player_npc.image_alpha += 0.2;
        
        if (obj_player_npc.image_alpha >= 1)
            scene++;
        
        break;
    
    case 2:
        if (global.party_member == -4)
            cutscene_npc_walk(1168, 160, 140, 3, "y", "down");
        else
            cutscene_npc_walk(1168, 180, 140, 3, "y", "down");
        
        break;
    
    case 3:
        if (global.party_member == -4)
        {
            scene = 6;
            exit;
        }
        
        cutscene_instance_create(160, 220, obj_martlet_npc);
        obj_martlet_npc.npc_direction = "up";
        obj_martlet_npc.image_alpha = 0;
        break;
    
    case 4:
        obj_martlet_npc.image_alpha += 0.2;
        
        if (obj_martlet_npc.image_alpha >= 1)
            scene++;
        
        break;
    
    case 5:
        if (cutscene_npc_walk(1164, 140, 140, 3, "y", "down"))
            scene = 6;
        
        break;
    
    case 6:
        cutscene_wait(0.5);
        break;
    
    case 7:
        audio_play_sound(snd_electric_flash, 1, 0);
        layer_enable_fx("effect_dark_overlay", false);
        scene++;
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        audio_play_sound(snd_ring, 1, 0);
        cutscene_advance();
        break;
    
    case 10:
        if (door_closed_amount < 1)
            door_closed_amount += 0.05;
        else
            cutscene_sfx_play(13, 1);
        
        break;
    
    case 11:
        cutscene_wait(1);
        break;
    
    case 12:
        cutscene_advance();
        break;
    
    case 13:
        elevator_sound = audio_play_sound(snd_elevator_long, 1, 0);
        cutscene_advance();
        break;
    
    case 14:
        audio_pos = audio_sound_get_track_position(elevator_sound);
        
        if (audio_pos > 6 && audio_pos < 12)
            audio_sound_set_track_position(elevator_sound, 12);
        
        if (!audio_is_playing(snd_elevator_long))
            cutscene_advance();
        
        break;
    
    case 15:
        cutscene_sfx_play(572, 1);
        break;
    
    case 16:
        if (door_closed_amount > 0)
            door_closed_amount -= 0.05;
        else
            cutscene_advance();
        
        break;
    
    case 17:
        cutscene_wait(1.5);
        break;
    
    case 18:
        cutscene_npc_walk(1168, 160, 220, 3, "x", "down");
        break;
    
    case 19:
        if (global.party_member != -4)
            cutscene_npc_walk(1164, 160, 220, 3, "x", "down");
        else
            cutscene_advance();
        
        break;
    
    case 20:
        if (global.last_room_overworld == "rm_hotland_complex_1")
            cutscene_change_room(253, 456, 120, 0.1);
        else if (global.last_room_overworld == "rm_newhome_01")
            cutscene_change_room(217, 380, 220, 0.1);
        else if (global.last_room_overworld == "rm_newhome_02b")
            cutscene_change_room(263, 2000, 138, 0.1);
        else if (global.last_room_overworld == "rm_castle_01")
            cutscene_change_room(257, 260, 100, 0.1);
        
        break;
}

if (scene > 17)
{
    if (obj_player_npc.y > 200 && obj_player_npc.image_alpha > 0)
        obj_player_npc.image_alpha -= 0.2;
    
    if (instance_exists(obj_martlet_npc) && obj_martlet_npc.y > 200 && obj_martlet_npc.image_alpha > 0)
        obj_martlet_npc.image_alpha -= 0.2;
}

if (scene > 13 && scene < 15)
{
    if (screenshake_intensity < 1)
        screenshake_intensity += 0.05;
}
else if (screenshake_intensity > 0)
{
    screenshake_intensity -= 0.15;
}

camera_set_view_pos(view_camera[0], 0, 0);
camera_set_view_pos(view_camera[0], random_range(-screenshake_intensity, screenshake_intensity), random_range(screenshake_intensity, screenshake_intensity));
