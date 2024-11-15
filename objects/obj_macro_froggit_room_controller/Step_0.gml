if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        if (global.sworks_flag[47] != 0 && global.sworks_flag[48] != 0 && global.sworks_flag[49] != 0)
        {
            scr_audio_fade_out(obj_radio.current_song, 500);
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_wait(1);
        break;
    
    case 2:
        cutscene_camera_move(obj_pl.x, 120, 1);
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        audio_play_sound(snd_switch, 1, 0);
        layer_set_visible("floorlights_middle", true);
        cutscene_advance();
        break;
    
    case 5:
        cutscene_wait(0.3);
        break;
    
    case 6:
        layer_set_visible("floorlights_middle", false);
        cutscene_advance();
        break;
    
    case 7:
        cutscene_wait(0.3);
        break;
    
    case 8:
        audio_play_sound(snd_switch, 1, 0);
        layer_set_visible("floorlights_middle", true);
        cutscene_advance();
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        break;
    
    case 11:
        cutscene_npc_walk(1168, 156, 160, 3, "x", "up");
        break;
    
    case 12:
        cutscene_wait(1);
        break;
    
    case 13:
        audio_play_sound(snd_machinery, 1, 0);
        audio_play_sound(snd_puzzle_icemelt, 1, 0);
        scr_screenshake(1000, 0.5);
        cutscene_advance();
        break;
    
    case 14:
        cutscene_wait(1);
        break;
    
    case 15:
        obj_screenshake_player.intensity = 1;
        obj_macro_froggit_room_door.image_speed = 1;
        audio_stop_sound(snd_machinery);
        audio_play_sound(snd_undertale_bigdoor_open, 1, 1);
        cutscene_advance();
        break;
    
    case 16:
        if (obj_macro_froggit_room_door.image_index >= (obj_macro_froggit_room_door.image_number - 1))
        {
            obj_screenshake_player.intensity = 2;
            audio_stop_sound(snd_undertale_bigdoor_open);
            audio_play_sound(snd_undertale_impact, 1, 0);
            cutscene_advance();
        }
        
        break;
    
    case 17:
        cutscene_wait(0.1);
        break;
    
    case 18:
        instance_destroy(obj_screenshake_player);
        
        if (cutscene_wait(2))
        {
            if (global.route == 3)
                scene = 28;
        }
        
        break;
    
    case 19:
        cutscene_sfx_play(280, 1);
        break;
    
    case 20:
        cutscene_wait(1);
        break;
    
    case 21:
        cutscene_instance_create(157, 112, obj_mfnpcfinal);
        audio_play_sound(snd_undertale_appear, 1, 0);
        break;
    
    case 22:
        obj_mfnpcfinal.image_alpha += 0.05;
        
        if (obj_mfnpcfinal.image_alpha >= 1)
            cutscene_advance();
        
        break;
    
    case 23:
        cutscene_wait(0.5);
        break;
    
    case 24:
        cutscene_sfx_play(280, 1);
        break;
    
    case 25:
        cutscene_wait(1.5);
        break;
    
    case 26:
        cutscene_sfx_play(280, 1);
        obj_mfnpcfinal.vspeed = 4;
        break;
    
    case 27:
        with (obj_mfnpcfinal)
        {
            if (y >= obj_player_npc.y)
            {
                global.battle_enemy_name = "macro froggit";
                global.exclamation_mark_type = "nothing";
                global.battling_enemy = false;
                global.battling_boss = true;
                global.battle_start = true;
                global.current_room_overworld = room_get_name(room);
                instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle);
                obj_pl.image_alpha = 0;
                audio_stop_all();
                other.scene++;
            }
        }
        
        break;
    
    case 28:
        chest = instance_create_depth(140, 100, 0, obj_macro_froggit_chest);
        chest.image_alpha = 0;
        cutscene_advance();
        break;
    
    case 29:
        audio_play_sound(snd_undertale_appear, 1, 0);
        cutscene_advance();
        break;
    
    case 30:
        with (obj_macro_froggit_chest)
        {
            if (image_alpha < 1)
                image_alpha += 0.1;
            else
                other.scene++;
        }
        
        break;
    
    case 31:
        cutscene_wait(0.5);
        break;
    
    case 32:
        cutscene_sfx_play(383, 1);
        break;
    
    case 33:
        if (obj_macro_froggit_chest.y < 130)
            obj_macro_froggit_chest.y += 2;
        else
            cutscene_advance();
        
        break;
    
    case 34:
        cutscene_wait(1);
        break;
    
    case 35:
        obj_macro_froggit_room_door.image_speed = -2;
        
        if (!audio_is_playing(snd_rumble))
            audio_play_sound(snd_rumble, 1, 1);
        
        if (obj_macro_froggit_room_door.image_index <= 3)
        {
            cutscene_screenshake(1, 1);
            audio_stop_sound(snd_rumble);
            audio_play_sound(snd_undertale_thud, 1, 0);
            obj_macro_froggit_room_door.image_index = 0;
            obj_macro_froggit_room_door.image_speed = 0;
            cutscene_advance(36);
        }
        
        break;
    
    case 36:
        cutscene_wait(1);
        break;
    
    case 37:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 38:
        global.sworks_flag[60] = 1;
        cutscene_camera_reset();
        cutscene_end();
        break;
}
