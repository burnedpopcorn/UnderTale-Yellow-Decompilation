var tile, i, snd;

if (live_call())
    return global.live_result;

if (global.sworks_flag[1] >= 4)
{
    if (global.route != 3 || global.sworks_flag[1] != 4)
    {
        if (scr_interact() && keyboard_multicheck_pressed(0))
        {
            scr_text();
            
            with (msg)
                message[0] = "* The generator is already#  running.";
        }
        
        exit;
    }
}

if (global.route != 3)
{
    switch (scene)
    {
        case 0:
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                audio_play_sound(snd_switch, 1, 0);
                image_speed = 1/3;
                scr_radio_fade(0, 500);
                scr_cutscene_start();
                cutscene_advance();
            }
            
            break;
        
        case 1:
            if ((image_index + image_speed) > 5)
            {
                image_index = 5;
                image_speed = 0;
                cutscene_advance();
            }
            
            break;
        
        case 2:
            cutscene_sfx_play(384, 1);
            break;
        
        case 3:
            cutscene_screenshake(1, 2);
            break;
        
        case 4:
            cutscene_wait(1);
            break;
        
        case 5:
            image_speed = 0.25;
            cutscene_advance();
            break;
        
        case 6:
            if ((image_index + image_speed) > (image_number - 1))
            {
                image_index = image_number - 1;
                image_speed = 0;
                cutscene_advance();
            }
            
            break;
        
        case 7:
            global.sworks_flag[1] = 3;
            instance_destroy(obj_steamworks_metal_sounds);
            obj_radio.bgm = 215;
            scr_radio_restart();
            cutscene_advance();
            break;
        
        case 8:
            cutscene_wait(2);
            break;
        
        case 9:
            tile = tile_get_ids_at_depth(1000006);
            
            for (i = 0; i < array_length_1d(tile); i++)
                tile_set_alpha(tile[i], tile_alpha);
            
            audio_play_sound(snd_undertale_appear, 1, 0);
            
            if (tile_alpha >= 1)
            {
                cutscene_advance(12);
            }
            else
            {
                cutscene_advance();
                tile_alpha += 0.25;
            }
            
            break;
        
        case 10:
            cutscene_wait(0.25);
            break;
        
        case 11:
            cutscene_advance(9);
            break;
        
        case 12:
            cutscene_wait(0.25);
            break;
        
        case 13:
            if (cutscene_camera_move(400, obj_pl.y, 1, true) && obj_steamworks_05d_background.image_alpha >= 1)
                cutscene_advance();
            
            if (obj_camera.x <= 520 && !alarm[0])
                alarm[0] = 3;
            
            break;
        
        case 14:
            cutscene_wait(2.5);
            break;
        
        case 15:
            cutscene_change_room(144, 220, 280, 0.025);
            break;
    }
}
else
{
    switch (scene)
    {
        case 0:
            if (scr_interact() && keyboard_multicheck_pressed(0))
            {
                scr_radio_fade(0, 500);
                scr_cutscene_start();
                cutscene_advance();
            }
            
            break;
        
        case 1:
            cutscene_wait(0.5);
            break;
        
        case 2:
            audio_play_sound(snd_lever_strain, 1, 0);
            cutscene_advance();
            break;
        
        case 3:
            if (!audio_is_playing(snd_lever_strain))
            {
                cutscene_advance();
                image_index = 5;
            }
            
            break;
        
        case 4:
            cutscene_sfx_play(603, 1);
            break;
        
        case 5:
            cutscene_screenshake(1, 3);
            break;
        
        case 6:
            cutscene_wait(1);
            break;
        
        case 7:
            image_speed = 0.25;
            cutscene_advance();
            break;
        
        case 8:
            if ((image_index + image_speed) > (image_number - 1))
            {
                image_index = image_number - 1;
                image_speed = 0;
                cutscene_advance();
            }
            
            break;
        
        case 9:
            global.sworks_flag[1] = 3;
            instance_destroy(obj_steamworks_metal_sounds);
            scr_radio_restart();
            cutscene_advance();
            break;
        
        case 10:
            cutscene_wait(2);
            flicker_count = 7;
            break;
        
        case 11:
            tile = tile_get_ids_at_depth(1000006);
            
            if (flicker_count <= 0)
            {
                cutscene_advance(14);
                audio_play_sound(snd_geno_power_on, 1, 0);
                scr_screenshake(1, 2);
                obj_steamworks_05d_background.image_alpha = 1;
                tile_alpha = 1;
            }
            else
            {
                cutscene_advance();
                tile_alpha = random_range(0.25, 0.75);
                flicker_count -= 1;
            }
            
            for (i = 0; i < array_length_1d(tile); i++)
                tile_set_alpha(tile[i], tile_alpha);
            
            snd = audio_play_sound(snd_undertale_appear, 1, 0);
            audio_sound_pitch(snd, random_range(0.9, 1.35));
            break;
        
        case 12:
            cutscene_wait(0.13);
            break;
        
        case 13:
            cutscene_advance(11);
            break;
        
        case 14:
            cutscene_wait(0.25);
            break;
        
        case 15:
            cutscene_wait(2.5);
            break;
        
        case 16:
            cutscene_change_room(144, 220, 280, 0.025);
            break;
        
        case 17:
            cutscene_wait(1);
            break;
        
        case 18:
            cutscene_dialogue();
            
            with (msg)
            {
                color = true;
                col_modif[0] = 16711935;
                message[0] = "* ERROR: COOLANT PRESSURE LOW";
                message[1] = "* GENERATOR STATUS: UNSTABLE";
                message_col[0][0] = "* ERROR: COOLANT PRESSURE LOW";
                message_col[1][0] = "* GENERATOR STATUS: UNSTABLE";
            }
            
            break;
        
        case 19:
            cutscene_wait(1);
            break;
        
        case 20:
            cutscene_instance_create(630, 173, obj_flowey_npc);
            obj_flowey_npc.npc_direction = "right";
            obj_flowey_npc.image_alpha = 0;
            obj_pl.direction = 180;
            break;
        
        case 21:
            obj_flowey_npc.image_alpha = 1;
            cutscene_npc_action_sprite(3194, 242, 0.2, false);
            break;
        
        case 22:
            cutscene_wait(0.25);
            break;
        
        case 23:
            cutscene_dialogue();
            
            with (msg)
            {
                talker[0] = 3194;
                message[0] = "* Gee, wonder how that#  came to be?";
                message[1] = "* I think I'm gonna start#  praying for our safety.";
                message[2] = "* Ya know, in case the#  facility explodes while#  we're knee deep in it.";
                prt[0] = 353;
                prt[1] = 352;
                prt[2] = 351;
            }
            
            break;
        
        case 24:
            if (cutscene_npc_action_sprite(3194, 245, 0.2, false))
                instance_destroy(obj_flowey_npc);
            
            break;
        
        case 25:
            scr_cutscene_end();
            global.sworks_flag[1] = 5;
            scene++;
            break;
    }
}
