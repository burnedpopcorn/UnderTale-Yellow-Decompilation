switch (scene)
{
    case 0:
        if (obj_pl.x <= 1820)
        {
            scr_cutscene_start();
            cutscene_advance();
        }
        
        break;
    
    case 1:
        instance_create_depth(obj_pl.x, 20, 850, obj_steamworks_22_energy_ball_fake);
        cutscene_advance();
        break;
    
    case 2:
        if (!instance_exists(obj_steamworks_22_energy_ball_fake))
        {
            audio_play_sound(snd_axis_energy_ball_explode, 1, 0);
            audio_play_sound(snd_glass_break_2, 1, 0);
            layer_set_visible("asset_broken_glass", true);
            layer_set_visible("asset_glass_flash", true);
            layer_set_visible("asset_glass_panel", false);
            alarm[0] = 1;
            scr_screenshake(10, 2);
            cutscene_advance();
        }
        
        break;
    
    case 3:
        obj_pl.direction = 90;
        cutscene_advance();
        break;
    
    case 4:
        cutscene_wait(1);
        break;
    
    case 5:
        layer_set_visible("asset_broken_glass", false);
        cutscene_advance();
        break;
    
    case 6:
        cutscene_instance_create(0, 0, part_steamworks_22_glass);
        break;
    
    case 7:
        cutscene_wait(1);
        break;
    
    case 8:
        cutscene_instance_create(1690, 40, obj_axis_npc);
        obj_axis_npc.npc_dynamic_depth = false;
        obj_axis_npc.depth = layer_get_depth("tiles_outside") - 50;
        break;
    
    case 9:
        cutscene_npc_walk(1166, 1690, 90, 3, "y", "down");
        break;
    
    case 10:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* FOUND YOU.";
            prt[0] = 2916;
        }
        
        break;
    
    case 11:
        cutscene_music_start(627);
        break;
    
    case 12:
        instance_create_depth(obj_axis_npc.x, obj_axis_npc.y, layer_get_depth("tiles_outside") - 50, obj_steamworks_22_axis_throwing);
        instance_destroy(obj_axis_npc);
        cutscene_advance();
        break;
    
    case 13:
        scr_cutscene_end();
        cutscene_camera_move(obj_pl.x, obj_pl.y, 1);
        dynamic_wall = instance_create(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]), 0, obj_wall);
        dynamic_wall.image_yscale = 12;
        global.sworks_flag[13] = 1;
        cutscene_advance(14);
        break;
    
    case 14:
        obj_camera.move = false;
        
        if (obj_pl.x < obj_camera.x)
            obj_camera.x = obj_pl.x;
        
        dynamic_wall.x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
        
        if (obj_pl.x < 540)
        {
            obj_steamworks_22_axis_throwing.alarm[0] = -1;
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
            obj_player_npc.left_sprite = spr_pl_run_left;
            cutscene_npc_walk(1168, 60, 140, 5, "x", "right", 1161);
            cutscene_advance();
        }
        
        break;
    
    case 15:
        obj_camera.x = obj_pl.x;
        
        if (obj_player_npc.npc_arrived == true)
        {
            scr_audio_fade_out(cutscene_music, 500);
            cutscene_camera_reset();
        }
        
        break;
    
    case 16:
        cutscene_wait(1);
        break;
    
    case 17:
        cutscene_instance_create(360, 140, obj_axis_npc);
        break;
    
    case 18:
        cutscene_npc_walk(1166, 240, 140, 4, "x", "left");
        break;
    
    case 19:
        cutscene_wait(0.5);
        break;
    
    case 20:
        cutscene_music_start(219);
        break;
    
    case 21:
        cutscene_npc_action_sprite(1166, 2693, 1, true);
        break;
    
    case 22:
        cutscene_npc_action_sprite(1166, 3312, 1, true, 1);
        cutscene_advance(23);
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* YOU ARE CORNERED,#  HUMAN.";
            message[1] = "* I DID NOT WANT TO HURT#  YOU BUT YOU FORCED MY#  GLOVE.";
            message[2] = "* PREPARE FOR PAIN.";
            prt[0] = 473;
            prt[1] = 473;
            prt[2] = 473;
        }
        
        break;
    
    case 24:
        cutscene_audio_fade(cutscene_music, 0, 500, 0.15, false, true);
        break;
    
    case 25:
        cutscene_instance_create(-10, 90, obj_steamworks_22_pellet);
        
        with (obj_steamworks_22_pellet)
        {
            depth = -9999;
            direction = point_direction(x, y, obj_axis_npc.x, obj_axis_npc.y - 27);
            speed = 8;
        }
        
        audio_play_sound(snd_undertale_swoosh, 1, 0);
        break;
    
    case 26:
        with (obj_steamworks_22_pellet)
        {
            if (x >= obj_axis_npc.x)
            {
                instance_create_depth(obj_axis_npc.x, obj_axis_npc.y - 27, -999, part_axis_ball_destroy);
                audio_play_sound(snd_axis_energy_ball_explode, 1, 0);
                instance_create_depth(0, 0, -9999, obj_steamworks_22_ball_flash);
                instance_destroy(obj_steamworks_22_energy_ball_fake_2);
                audio_play_sound(snd_undertale_explosion, 1, 0);
                layer_set_visible("rubble", false);
                instance_destroy(obj_steamworks_22_pellet);
                other.scene = 27;
            }
        }
        
        break;
    
    case 27:
        cutscene_npc_action_sprite(1166, 3170, 1, true, 0);
        break;
    
    case 28:
        cutscene_wait(2);
        break;
    
    case 29:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* OH.";
            prt[0] = 473;
        }
        
        break;
    
    case 30:
        cutscene_wait(1);
        break;
    
    case 31:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* THIS IS A PROBLEM.";
            message[1] = "* LOOKS LIKE YOU WIN THIS#  TIME.";
            message[2] = "* I WILL RETURN TO#  CAPTURE YOU SOON.";
            message[3] = "* DO NOT GO ANYWHERE,#  PLEASE.";
            prt[0] = 3332;
            prt[1] = 473;
            prt[2] = 473;
            prt[3] = 473;
        }
        
        break;
    
    case 32:
        cutscene_npc_action_sprite(1166, 3571, 1, true, 0, 60, 0);
        break;
    
    case 33:
        cutscene_npc_action_sprite(1166, 3319, 1, false, 0);
        cutscene_advance();
        break;
    
    case 34:
        obj_axis_npc.x += 1;
        
        if (obj_axis_npc.x > 340)
            cutscene_advance();
        
        break;
    
    case 35:
        cutscene_wait(1);
        break;
    
    case 36:
        instance_destroy(obj_axis_npc);
        instance_destroy(dynamic_wall);
        global.sworks_flag[13] = 2;
        cutscene_end();
        break;
}
