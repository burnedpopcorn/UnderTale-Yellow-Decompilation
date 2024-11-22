var energy_ball;

if (live_call())
    return global.live_result;

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
        cutscene_follower_into_actor();
        break;
    
    case 4:
        instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y - 35, obj_cutscene_ex);
        cutscene_npc_direction(1161, "up");
        break;
    
    case 5:
        cutscene_wait(1);
        break;
    
    case 6:
        instance_destroy(obj_cutscene_ex);
        layer_set_visible("asset_broken_glass", false);
        cutscene_advance();
        break;
    
    case 7:
        cutscene_instance_create(0, 0, part_steamworks_22_glass);
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        cutscene_instance_create(1690, 40, obj_axis_npc);
        obj_axis_npc.npc_dynamic_depth = false;
        obj_axis_npc.depth = 850;
        break;
    
    case 10:
        cutscene_npc_walk(1166, 1690, 90, 3, "y", "down");
        break;
    
    case 11:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* FOUND YOU.";
            prt[0] = 2916;
        }
        
        break;
    
    case 12:
        cutscene_npc_set_sprites(1161, 81, 80, 78, 79, 61, 65, 60, 63);
        break;
    
    case 13:
        cutscene_npc_walk(1161, 60, 120, 7, "x", "right");
        obj_ceroba_npc.solid = false;
        cutscene_advance();
        break;
    
    case 14:
        cutscene_music_start(627);
        break;
    
    case 15:
        instance_create_depth(obj_axis_npc.x, obj_axis_npc.y, layer_get_depth("tiles_outside") - 50, obj_steamworks_22_axis_throwing);
        instance_destroy(obj_axis_npc);
        cutscene_advance();
        break;
    
    case 16:
        scr_cutscene_end();
        cutscene_camera_move(obj_pl.x, obj_pl.y, 1);
        dynamic_wall = instance_create(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]), 0, obj_wall);
        dynamic_wall.image_yscale = 12;
        global.sworks_flag[13] = 1;
        cutscene_advance(17);
        break;
    
    case 17:
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
    
    case 18:
        obj_camera.x = obj_pl.x;
        
        if (obj_player_npc.npc_arrived == true)
        {
            scr_audio_fade_out(cutscene_music, 500);
            cutscene_camera_reset();
        }
        
        break;
    
    case 19:
        cutscene_wait(1);
        break;
    
    case 20:
        cutscene_npc_walk(1161, obj_pl.x + 20, obj_pl.y, 3, "x", "right");
        break;
    
    case 21:
        cutscene_wait(1.5);
        break;
    
    case 22:
        cutscene_npc_direction(1161, "left");
        break;
    
    case 23:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Looks like he's go-     ";
            prt[0] = 381;
            
            if (cutoff >= string_length(message[message_current]))
            {
                instance_destroy();
                other.scene += 1;
                instance_create(obj_ceroba_npc.x, obj_ceroba_npc.y - 35, obj_cutscene_ex);
            }
        }
        
        break;
    
    case 24:
        cutscene_npc_direction(1168, "right");
        break;
    
    case 25:
        cutscene_sfx_play(380, 1);
        break;
    
    case 26:
        energy_ball = instance_create_depth(370, 120, -240, obj_steamworks_22_energy_ball_fake_2);
        energy_ball.direction = point_direction(energy_ball.x, energy_ball.y, obj_ceroba_npc.x + 20, obj_ceroba_npc.y - 5);
        energy_ball.speed = point_distance(energy_ball.x, energy_ball.y, obj_ceroba_npc.x + 20, obj_ceroba_npc.y - 5) / 27;
        energy_ball_deflect_noloop = false;
        cutscene_advance();
        break;
    
    case 27:
        ceroba_x_original = obj_ceroba_npc.x;
        cutscene_wait(0.5);
        break;
    
    case 28:
        instance_destroy(obj_cutscene_ex);
        obj_ceroba_npc.x = ceroba_x_original + 6;
        cutscene_npc_action_sprite(1161, 1268, 1, true, 0);
        
        if (obj_ceroba_npc.image_index >= 6 && energy_ball_deflect_noloop == false)
        {
            audio_play_sound(snd_ring, 1, 0);
            obj_steamworks_22_energy_ball_fake_2.direction = 25;
            obj_steamworks_22_energy_ball_fake_2.speed *= 1.5;
            energy_ball_deflect_noloop = true;
        }
        
        break;
    
    case 29:
        cutscene_wait(1.5);
        break;
    
    case 30:
        cutscene_npc_reset_sprite(1161, "right");
        break;
    
    case 31:
        cutscene_instance_create(360, 140, obj_axis_npc);
        break;
    
    case 32:
        cutscene_npc_walk(1166, 240, 140, 4, "x", "left");
        break;
    
    case 33:
        cutscene_wait(0.5);
        break;
    
    case 34:
        cutscene_music_start(219);
        break;
    
    case 35:
        cutscene_npc_action_sprite(1166, 2693, 1, true);
        break;
    
    case 36:
        cutscene_npc_action_sprite(1166, 3312, 1, true, 1);
        cutscene_advance();
        break;
    
    case 37:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Axis, hold on a second!";
            prt[0] = 381;
        }
        
        break;
    
    case 38:
        cutscene_npc_action_sprite(1166, 2768, 1, false, 0);
        break;
    
    case 39:
        cutscene_npc_reset_sprite(1166, "left");
        break;
    
    case 40:
        cutscene_wait(1);
        break;
    
    case 41:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* ONE.";
            prt[0] = 473;
        }
        
        break;
    
    case 42:
        cutscene_npc_action_sprite(1166, 1975, 1, true, 0);
        break;
    
    case 43:
        cutscene_npc_action_sprite(1166, 3312, 1, true, 1);
    
    case 44:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            talker[1] = 1166;
            talker[2] = 1166;
            talker[3] = 1161;
            message[0] = "* UH - ONE MILLION#  SECONDS!";
            message[1] = "* I DO NOT HAVE THE#  KNOWLEDGE TO COUNT THAT#  HIGH.";
            message[2] = "* WHAT IS THIS#  ABOUT?";
            message[3] = "* I have a surprise for#  you! A special one!";
            prt[0] = 381;
            prt[1] = 473;
            prt[2] = 473;
            prt[3] = 3754;
        }
        
        break;
    
    case 45:
        cutscene_npc_action_sprite(1166, 2768, 1, false, 0);
        break;
    
    case 46:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            talker[2] = 1161;
            message[0] = "* I WILL ADMIT, YOU HAVE#  MY ATTENTION.";
            message[1] = "* PROCEED.";
            message[2] = "* I have for you, your#  very own robot#  companion!";
            prt[0] = 473;
            prt[1] = 473;
            prt[2] = 3754;
        }
        
        break;
    
    case 47:
        cutscene_instance_create(obj_ceroba_npc.x + 40, obj_ceroba_npc.y - 6, obj_steamworks_13_robuild_complete);
        audio_play_sound(snd_mart_impact_2, 1, 0);
        break;
    
    case 48:
        cutscene_screenshake(0.5, 2);
        break;
    
    case 49:
        cutscene_wait(1);
        break;
    
    case 50:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;//1161;
            message[0] = "* A sleek, top of the#  line model!";
            message[1] = "* Aren't they beautiful?";
            prt[0] = spr_portrait_ceroba_happy;//398;
            prt[1] = spr_portrait_ceroba_nervous_smile;//3754;
            
            if (message_current >= 1)
            {
                skippable = false;
                
                if (cutoff >= string_length(message[message_current]))
                {
                    instance_destroy();
                    other.scene++;
                }
            }
        }
        
        break;
    
    case 51:
        scr_music_sudden_stop(cutscene_music, 5, true);
        cutscene_advance();
        break;
    
    case 52:
        if (cutscene_dialogue())
        {
            scr_music_sudden_stop(other.cutscene_music, 5, false);
            audio_sound_set_track_position(cutscene_music, 15.95);
        }
        
        with (msg)
        {
            talker[0] = obj_axis_npc;//1166;
            message[0] = "* NO.";
            message[1] = "* NOT IN THE MOOD.";
            message[2] = "* MY EYES ARE ONLY SET ON#  YOUR APPREHENSION.";
            message[3] = "* GOODBYE.";
            prt[0] = spr_portrait_axis_normal;//473;
            prt[1] = spr_portrait_axis_normal;//473;
            prt[2] = spr_portrait_axis_normal;//473;
            prt[3] = spr_portrait_axis_normal;//473;
        }
        
        break;
    
    case 53:
        //cutscene_npc_action_sprite(1166, 1772, 1, true, 0);
		cutscene_npc_action_sprite(obj_axis_npc, spr_steamworks_22_axis_event_4, 1, true, 0);
        break;
    
    case 54:
        //cutscene_npc_action_sprite(1166, 3312, 1, true, 1);
		cutscene_npc_action_sprite(obj_axis_npc, spr_steamworks_22_axis_event_loop, 1, true, 1);
        break;
    
    case 55:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;//1161;
            talker[2] = obj_axis_npc;//1166;
            message[0] = "* You're making them cry,#  Axis!";
            message[1] = "* Come on, now!";
            message[2] = "* ROBOTS CANNOT CRY. I#  HAVE TRIED.";
            message[3] = "* GOODBYE.";
            prt[0] = spr_portrait_ceroba_nervous;//381;
            prt[1] = spr_portrait_ceroba_nervous_smile;//3754;
            prt[2] = spr_portrait_axis_normal;//473;
            prt[3] = spr_portrait_axis_normal;//473;
        }
        
        break;
    
    case 56:
        cutscene_audio_fade(cutscene_music, 0, 500, 0.15, false, true);
        break;
    
    case 57:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;//1161;
            message[0] = "* Well, it was worth a#  shot.";
            message[1] = "* Plan C it is!";
            prt[0] = spr_portrait_ceroba_closed_eyes;//377;
            prt[1] = spr_portrait_ceroba_disapproving;//394;
        }
        
        break;
    case 58:
        cutscene_npc_action_sprite(obj_ceroba_npc, spr_ceroba_guard_1, 1, true, 0);//(1161, 3699, 1, true, 0);
        break;
    
    case 59:
        cutscene_instance_create(obj_steamworks_13_robuild_complete.x, obj_steamworks_13_robuild_complete.y, obj_ceroba_shield);
        break;
    
    case 60:
        cutscene_npc_action_sprite(obj_axis_npc, spr_steamworks_22_axis_event_throw, 1, false, 0);//(1166, 3525, 1, false, 0);
        break;
    // gets stuck on 61
    case 61:
		// shitfix
		scene++;
        break;
    
    case 62:
        if (instance_exists(obj_steamworks_22_energy_ball_fake_2) && obj_steamworks_22_energy_ball_fake_2.x > (obj_axis_npc.x - 20))
        {
            audio_play_sound(snd_axis_energy_ball_explode, 1, 0);
            instance_create_depth(0, 0, -9999, obj_steamworks_22_ball_flash);
            instance_destroy(obj_steamworks_22_energy_ball_fake_2);
            audio_play_sound(snd_undertale_explosion, 1, 0);
            layer_set_visible("rubble", false);
            scr_screenshake(1, 2);
        }
        
        if (!instance_exists(obj_steamworks_22_energy_ball_fake_2))
        {
            cutscene_npc_action_sprite(obj_axis_npc, spr_steamworks_22_axis_event_fall, 1, true, 0);//(1166, 3170, 1, true, 0);
            obj_axis_npc.npc_dynamic_depth = false;
            obj_axis_npc.depth = -999;
        }
        
        break;
    case 63:
        cutscene_wait(3);
        break;
    
    case 64:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;//1166;
            talker[1] = obj_ceroba_npc;//1161;
            talker[2] = obj_axis_npc;//1166;
            message[0] = "* I AM IMMOBILE.";
            message[1] = "* If you went with our#  surprise, it wouldn't#  have gotten messy.";
            message[2] = "* DO NOT MOCK MY#  JUDGMENT.";
            message[3] = "* I WILL RETURN TO#  CAPTURE YOU.";
            message[4] = "* ...WITH NEW HANDS.";
            prt[0] = spr_portrait_axis_wut;//3332;
            prt[1] = spr_portrait_ceroba_closed_eyes;//377;
            prt[2] = spr_portrait_axis_normal;//473;
            prt[3] = spr_portrait_axis_normal;//473;
            prt[4] = spr_portrait_axis_normal;//473;
        }
        
        break;
    
    case 65:
        cutscene_wait(0.5);
        break;
    
    case 66:
        cutscene_npc_action_sprite(1166, 3571, 1, true, 0, 60, 0);
        break;
    
    case 67:
        cutscene_npc_action_sprite(1166, 3319, 1, false, 0);
        cutscene_advance();
        break;
    
    case 68:
        obj_axis_npc.x += 1;
        
        if (obj_axis_npc.x > 340)
            cutscene_advance();
        
        break;
    
    case 69:
        cutscene_wait(0.5);
        break;
    
    case 70:
        cutscene_npc_action_sprite(1161, 3168, 1, false, 0);
        break;
    
    case 71:
        cutscene_npc_direction(1161, "left");
        break;
    
    case 72:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1161;
            message[0] = "* Phew, I'm spent.";
            message[1] = "* Next chair we see, I'm#  taking a breather.";
            prt[0] = 377;
            prt[1] = 394;
        }
        
        break;
    
    case 73:
        cutscene_npc_walk(1161, obj_ceroba_npc.x, obj_steamworks_13_robuild_complete.y + 20, 3, "x", "left", -4, obj_steamworks_13_robuild_complete.x, obj_steamworks_13_robuild_complete.y + 20);
        break;
    
    case 74:
        obj_ceroba_npc.action_sprite = true;
        obj_ceroba_npc.sprite_index = spr_ceroba_up_walk;
        obj_ceroba_npc.image_speed = 0.2;
        cutscene_advance();
        break;
    
    case 75:
        cutscene_wait(0.75);
        break;
    
    case 76:
        instance_destroy(obj_steamworks_13_robuild_complete);
        cutscene_advance();
        break;
    
    case 77:
        cutscene_npc_reset_sprite(1161, "left");
        break;
    
    case 78:
        cutscene_sfx_play(319, 1);
        break;
    
    case 79:
        cutscene_npc_walk(1161, obj_pl.x + 30, obj_pl.y, 3, "x", "left");
        break;
    
    case 80:
        actor_follower = 1161;
        cutscene_actor_into_follower();
        
        with (global.party_member)
            sprite_index = left_sprite_idle;
        
        break;
    
    case 81:
        instance_destroy(obj_axis_npc);
        instance_destroy(dynamic_wall);
        global.sworks_flag[13] = 2;
        cutscene_end();
        break;
}

if (scene >= 28 && energy_ball_deflect_noloop == true)
{
    if (instance_exists(obj_steamworks_22_energy_ball_fake_2))
    {
        if (obj_steamworks_22_energy_ball_fake_2.y < 50)
        {
            instance_destroy(obj_steamworks_22_energy_ball_fake_2);
            audio_play_sound(snd_axis_energy_ball_explode, 1, 0);
            scr_screenshake(8, 2);
        }
    }
}