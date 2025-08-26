if (live_call())
    return global.live_result;

var axis_run_speed = npc_axis_run_speed;
show_debug_message(scene);

switch (scene)
{
    case 0:
        if (obj_pl.x < 1960)
        {
            scr_cutscene_start();
            scr_radio_fade(0, 300);
            
            if (global.sworks_flag[12] == 0)
            {
                instance_create(0, 0, obj_steamworks_21_light_flash);
                cutscene_advance();
            }
            else
            {
                cutscene_advance(5);
            }
        }
        
        break;
    
    case 1:
        cutscene_wait(1);
        break;
    
    case 2:
        instance_create(0, 0, obj_steamworks_21_light_flash);
        cutscene_advance();
        break;
    
    case 3:
        obj_pl.direction = 0;
        cutscene_advance();
        
        if (cutscene_follower_into_actor() == true)
        {
            with (obj_shadow_master)
                event_perform(ev_alarm, 0);
            
            actor_follower.npc_direction = "right";
        }
        
        break;
    
    case 4:
        cutscene_wait(2);
        break;
    
    case 5:
        cutscene_instance_create(2100, 115, obj_axis_npc);
        
        with (obj_shadow_master)
            event_perform(ev_alarm, 0);
        
        obj_axis_npc.image_alpha = 0;
        audio_play_sound(snd_undertale_appear, 1, 0);
        
        if (global.sworks_flag[12] == 1)
            cutscene_advance(5.3);
        
        break;
    
    case 5.3:
        with (obj_axis_npc)
        {
            if (image_alpha < 1)
                image_alpha += 0.05;
            else
                other.scene = 5.6;
        }
        
        break;
    
    case 5.6:
        if (cutscene_wait(1.5))
            cutscene_advance(10);
        
        break;
    
    case 6:
        if (shadow_axis_image_alpha < 1)
            shadow_axis_image_alpha += 0.05;
        else
            other.scene++;
        
        break;
    
    case 7:
        if (cutscene_wait(1))
        {
            obj_axis_npc.image_alpha = 1;
            cutscene_advance(7.3);
        }
        
        break;
    
    case 7.3:
        if (shadow_axis_image_alpha > 0)
            shadow_axis_image_alpha -= 0.1;
        else
            cutscene_advance(7.6);
        
        break;
    
    case 7.6:
        if (cutscene_wait(1))
            cutscene_advance(8);
        
        break;
    
    case 8:
        var spawn_arrows = false;
        scr_text();
        
        with (msg)
        {
            sndfnt_array[0] = snd_talk_axis;
            
            if (global.route == 2)
            {
                message[0] = "* ESCAPED CONVICTS SPOTTED.#  STEAMWORKS:#  OFFICE BRANCH.";
                prt[0] = spr_portrait_axis_shadow;
                sndfnt_array[1] = snd_talk_ceroba;
                message[1] = "* Oh no! Run!";
                prt[1] = spr_portrait_ceroba_nervous;
                
                if (message_current == 1)
                {
                    other.scene = 9;
                    skippable = false;
                    spawn_arrows = true;
                }
            }
            
            if (global.route == 1)
            {
                message[0] = "* ESCAPED CONVICT SPOTTED.#  STEAMWORKS:#  OFFICE BRANCH.";
                prt[0] = spr_portrait_axis_shadow;
            }
        }
        
        if (!global.dialogue_open)
        {
            spawn_arrows = true;
            cutscene_advance(10);
        }
        
        if (spawn_arrows == true)
        {
            instance_create_depth(1952, 96, -100, obj_axis_chase_flashing_arrow);
            instance_create_depth(1856, 96, -100, obj_axis_chase_flashing_arrow);
            var arrow_down = instance_create_depth(1792, 160, -100, obj_axis_chase_flashing_arrow);
            arrow_down.image_angle = 0;
        }
        
        break;
    
    case 9:
        if (instance_exists(obj_ceroba_npc) && ceroba_is_running == false)
        {
            ceroba_is_running = true;
            
            with (obj_ceroba_npc)
            {
                can_walk = false;
                action_sprite = true;
                path_start(pt_steamworks_21_ceroba_chase, 5.9, path_action_stop, false);
                path_change_point(pt_steamworks_21_ceroba_chase, 0, obj_ceroba_npc.x, obj_ceroba_npc.y, 100);
                direction = 180;
            }
        }
        
        global.party_member = -4;
        
        if (cutscene_wait(1))
        {
            instance_destroy(obj_dialogue);
            global.dialogue_open = false;
            cutscene_advance(10);
        }
        
        break;
    
    case 10:
        event_music = audio_play_sound(mus_axis_chase, 1, 1);
        scr_cutscene_end();
        cutscene_advance();
        break;
    
    case 11:
        with (obj_axis_npc)
        {
            can_walk = false;
            action_sprite = true;
            path_start(pt_steamworks_21_axis_chase, axis_run_speed, path_action_stop, false);
        }
        
        axis_is_running = true;
        cutscene_advance();
        break;
    
    case 12:
        if (point_in_rectangle(obj_pl.x, obj_pl.y, 200, 660, 280, 720))
        {
            scr_cutscene_start();
            cutscene_instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
        }
        
        break;
    
    case 13:
        cutscene_npc_walk(obj_player_npc, 210, 700, 4, "y", "up");
        break;
    
    case 14:
        cutscene_advance();
        break;
    
    case 15:
        if (obj_axis_npc.path_position < 0.95)
            obj_axis_npc.path_position = 0.95;
        
        if (global.route == 2)
        {
            cutscene_wait(0.75);
        }
        else if (axis_is_running == false && cutscene_wait(0.75))
        {
            if (!instance_exists(obj_axis_chase_blocker))
            {
                with (instance_create_depth(200, 680, 0, obj_axis_chase_blocker))
                {
                    image_xscale = 4;
                    image_yscale = 1;
                }
            }
            
            cutscene_advance(47);
            instance_destroy(obj_player_npc);
            scr_cutscene_end();
        }
        
        break;
    
    case 16:
        if (axis_is_running == false)
            cutscene_npc_direction(obj_ceroba_npc, "left");
        
        break;
    
    case 17:
        cutscene_npc_direction(obj_player_npc, "right");
        break;
    
    case 18:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_ceroba;
            message[0] = "* Clover! The lockers!";
            message[1] = "* Follow me!";
            prt[0] = spr_portrait_ceroba_neutral;
            prt[1] = spr_portrait_ceroba_neutral;
        }
        
        break;
    
    case 19:
        cutscene_npc_walk(obj_ceroba_npc, 76, 740, 4, "y", "up");
        cutscene_advance();
        break;
    
    case 20:
        cutscene_npc_walk(obj_player_npc, 117, 735, 4, "y", "up");
        cutscene_advance();
        break;
    
    case 21:
        if (obj_ceroba_npc.npc_arrived)
        {
            with (obj_steamworks_21_locker_tall)
            {
                if (image_index == 0 && obj_ceroba_npc.image_alpha > 0)
                {
                    audio_play_sound(snd_undertale_snap, 1, 0);
                    image_index = 1;
                }
            }
            
            if (obj_ceroba_npc.image_alpha > 0)
                obj_ceroba_npc.image_alpha -= 0.2;
            
            if (obj_ceroba_npc.image_alpha <= 0 && obj_steamworks_21_locker_tall.image_index == 1)
            {
                audio_play_sound(snd_undertale_thud, 1, 0);
                obj_steamworks_21_locker_tall.image_index = 0;
            }
        }
        
        if (obj_player_npc.npc_arrived)
        {
            with (obj_steamworks_21_locker)
            {
                if (image_index == 0 && obj_player_npc.image_alpha > 0)
                {
                    audio_play_sound(snd_undertale_snap, 1, 0);
                    image_index = 1;
                }
            }
            
            if (obj_player_npc.image_alpha > 0)
                obj_player_npc.image_alpha -= 0.2;
            
            if (obj_player_npc.image_alpha <= 0 && obj_steamworks_21_locker.image_index == 1)
            {
                audio_play_sound(snd_undertale_thud, 1, 0);
                obj_steamworks_21_locker.image_index = 0;
            }
        }
        
        if (obj_player_npc.image_alpha == 0 && obj_ceroba_npc.image_alpha == 0)
            cutscene_advance();
        
        break;
    
    case 22:
        cutscene_wait(1);
        break;
    
    case 23:
        cutscene_camera_move(obj_pl.x, obj_axis_npc.y + 40, 2);
        break;
    
    case 24:
        if (obj_axis_npc.sprite_index != spr_axis_down_bonk_restore)
        {
            obj_axis_npc.sprite_index = spr_axis_down_bonk_restore;
            obj_axis_npc.image_index = 0;
            obj_axis_npc.image_speed = 1;
        }
        
        if (obj_axis_npc.image_index >= (obj_axis_npc.image_number - 1))
        {
            obj_axis_npc.action_sprite = false;
            obj_axis_npc.npc_direction = "down";
            tile_layer_hide(-99899);
            cutscene_advance();
        }
        
        break;
    
    case 25:
        cutscene_wait(1);
        break;
    
    case 26:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2, true);
        
        with (obj_axis_npc)
        {
            action_sprite = true;
            
            if (path_index != pt_steamworks_21_axis_walk && other.axis_is_running == false)
            {
                other.axis_is_running = true;
                path_start(pt_steamworks_21_axis_walk, 3, path_action_stop, false);
            }
            
            if (path_position >= 1)
            {
                action_sprite = false;
                axis_is_running = false;
                other.scene += 1;
            }
        }
        
        break;
    
    case 27:
        cutscene_wait(0.5);
        break;
    
    case 28:
        cutscene_npc_direction(obj_axis_npc, "up");
        break;
    
    case 29:
        cutscene_wait(0.5);
        break;
    
    case 30:
        cutscene_npc_direction(obj_axis_npc, "left");
        break;
    
    case 31:
        cutscene_wait(0.5);
        break;
    
    case 32:
        cutscene_npc_direction(obj_axis_npc, "down");
        break;
    
    case 33:
        cutscene_wait(1);
        break;
    
    case 34:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_axis;
            message[0] = "* HOW.";
            prt[0] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 35:
        cutscene_wait(0.25);
        break;
    
    case 36:
        cutscene_npc_walk(obj_axis_npc, -40, obj_axis_npc.y, 3, "x", "left");
        break;
    
    case 37:
        cutscene_wait(1);
        break;
    
    case 38:
        obj_ceroba_npc.npc_direction = "down";
        
        with (obj_steamworks_21_locker_tall)
        {
            if (image_index == 0 && obj_ceroba_npc.image_alpha < 1)
            {
                audio_play_sound(snd_undertale_snap, 1, 0);
                image_index = 1;
            }
        }
        
        if (obj_ceroba_npc.image_alpha < 1)
            obj_ceroba_npc.image_alpha += 0.2;
        
        if (obj_ceroba_npc.image_alpha >= 1)
        {
            audio_play_sound(snd_undertale_thud, 1, 0);
            obj_steamworks_21_locker_tall.image_index = 0;
            cutscene_advance();
        }
        
        break;
    
    case 39:
        cutscene_wait(0.25);
        break;
    
    case 40:
        obj_ceroba_npc.npc_direction = "right";
        obj_player_npc.npc_direction = "down";
        
        with (obj_steamworks_21_locker)
        {
            if (image_index == 0 && obj_player_npc.image_alpha < 1)
            {
                audio_play_sound(snd_undertale_snap, 1, 0);
                image_index = 1;
            }
        }
        
        if (obj_player_npc.image_alpha < 1)
            obj_player_npc.image_alpha += 0.2;
        
        if (obj_player_npc.image_alpha >= 1)
        {
            audio_play_sound(snd_undertale_thud, 1, 0);
            obj_steamworks_21_locker.image_index = 0;
            cutscene_advance();
        }
        
        break;
    
    case 41:
        cutscene_wait(0.25);
        break;
    
    case 42:
        obj_player_npc.npc_direction = "left";
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_ceroba_npc;
            message[0] = "* Huff... Huff...";
            message[1] = "* This guy means#  business!";
            message[2] = "* My husband was one hell#  of an engineer.";
            message[3] = "* I just wonder why he#  kept all this from me?";
            message[4] = "* He could've left me#  some sort of off-switch,#  right?";
            message[5] = "* ...";
            message[6] = "* THE ROBOT! I totally#  forgot about our plan!";
            message[7] = "* Ugh, sorry. Next time#  we see Axis, we'll try#  it for sure.";
            prt[0] = spr_portrait_ceroba_nervous;
            prt[1] = spr_portrait_ceroba_disapproving;
            prt[2] = spr_portrait_ceroba_closed_eyes;
            prt[3] = spr_portrait_ceroba_neutral;
            prt[4] = spr_portrait_ceroba_neutral;
            prt[5] = spr_portrait_ceroba_disapproving;
            prt[6] = spr_portrait_ceroba_surprised;
            prt[7] = spr_portrait_ceroba_disapproving;
        }
        
        break;
    
    case 43:
        scr_actor_into_follower(1161, 1171);
        global.party_member = obj_ceroba_follower;
        cutscene_advance();
        break;
    
    case 44:
        camera_set_view_target(view_camera[0], 1031);
        tile_layer_hide(-99999);
        cutscene_end();
        global.sworks_flag[12] = 2;
        break;
    
    case 45:
        with (obj_axis_npc)
            path_end();
        
        global.cutscene = true;
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = obj_axis_npc;
            
            if (global.sworks_flag[12] == 0)
            {
                message[0] = "* HALT.";
                message[1] = "* YOU ARE COMING WITH ME.";
                prt[0] = spr_portrait_axis_normal;
                prt[1] = spr_portrait_axis_normal;
            }
            else
            {
                message[0] = "* ENOUGH RUNNING.";
                prt[0] = spr_portrait_axis_normal;
            }
        }
        
        break;
    
    case 46:
        cutscene_change_room(rm_steamworks_21b, 160, 290, 0.05);
        break;
    
    case 47:
        if (obj_steamworks_21_locker.waiter == 2)
            cutscene_advance(48);
        
        break;
    
    case 48:
        if (obj_axis_npc.sprite_index != spr_axis_down_bonk_restore)
        {
            obj_axis_npc.sprite_index = spr_axis_down_bonk_restore;
            obj_axis_npc.image_index = 0;
            obj_axis_npc.image_speed = 1;
        }
        
        if (obj_axis_npc.image_index >= (obj_axis_npc.image_number - 1))
        {
            obj_axis_npc.action_sprite = false;
            obj_axis_npc.npc_direction = "down";
            tile_layer_hide(-99899);
            cutscene_advance();
        }
        
        break;
    
    case 49:
        cutscene_wait(1);
        break;
    
    case 50:
        with (obj_axis_npc)
        {
            action_sprite = true;
            
            if (path_index != pt_steamworks_21_axis_walk_neutral && other.axis_is_running == false)
            {
                other.axis_is_running = true;
                path_start(pt_steamworks_21_axis_walk_neutral, 3, path_action_stop, false);
            }
            
            if (path_position >= 1)
            {
                if (obj_steamworks_21_locker.waiter == 0)
                {
                    action_sprite = false;
                    other.axis_is_running = false;
                    other.scene = 45;
                    global.sworks_flag[43] += 1;
                }
                else
                {
                    action_sprite = false;
                    other.axis_is_running = false;
                    other.scene += 1;
                }
            }
        }
        
        break;
    
    case 51:
        cutscene_wait(0.5);
        break;
    
    case 52:
        cutscene_npc_direction(obj_axis_npc, "up");
        break;
    
    case 53:
        cutscene_wait(0.5);
        break;
    
    case 54:
        cutscene_npc_direction(obj_axis_npc, "left");
        break;
    
    case 55:
        cutscene_wait(0.5);
        break;
    
    case 56:
        cutscene_npc_direction(obj_axis_npc, "down");
        break;
    
    case 57:
        cutscene_wait(1);
        break;
    
    case 58:
        cutscene_dialogue();
        
        with (msg)
        {
            sndfnt = snd_talk_axis;
            message[0] = "* HOW.";
            prt[0] = spr_portrait_axis_normal;
        }
        
        break;
    
    case 59:
        cutscene_npc_walk(obj_axis_npc, -40, obj_axis_npc.y, 3, "x", "left");
        break;
    
    case 60:
        cutscene_wait(0.5);
        break;
    
    case 61:
        with (obj_steamworks_21_locker)
            waiter = 3;
        
        global.sworks_flag[12] = 2;
        instance_destroy(obj_axis_npc);
        cutscene_end();
        break;
}

if (ceroba_is_running == true)
{
    with (obj_ceroba_npc)
    {
        image_speed = 1/3;
        
        if (direction == 0)
            sprite_index = spr_ceroba_right_run;
        else if (direction == 90)
            sprite_index = spr_ceroba_up_run;
        else if (direction == 180)
            sprite_index = spr_ceroba_left_run;
        else if (direction == 270)
            sprite_index = spr_ceroba_down_run;
        
        if (path_position >= 1)
        {
            action_sprite = false;
            npc_direction = "up";
            other.ceroba_is_running = false;
        }
    }
}

if (axis_is_running == true)
{
    with (obj_axis_npc)
    {
        if (path_position < 1)
        {
            image_speed = 1/3;
            
            if (direction == 0)
                sprite_index = spr_axis_right;
            else if (direction == 90)
                sprite_index = spr_axis_up;
            else if (direction == 180)
                sprite_index = spr_axis_left;
            else if (direction == 270)
                sprite_index = spr_axis_down;
            
            var player_is_caught = false;
            other.checkpoint_x = path_get_point_x(pt_steamworks_21_axis_chase, other.check_point_current);
            other.checkpoint_y = path_get_point_y(pt_steamworks_21_axis_chase, other.check_point_current);
            other.checkpoint_x_axis = path_get_point_x(pt_steamworks_21_axis_chase, other.check_point_current_axis);
            other.checkpoint_y_axis = path_get_point_y(pt_steamworks_21_axis_chase, other.check_point_current_axis);
            var distance_axis = point_distance(obj_axis_npc.x, obj_axis_npc.y, other.checkpoint_x, other.checkpoint_y);
            var distance_pl = point_distance(obj_pl.x, obj_pl.y, other.checkpoint_x, other.checkpoint_y);
            
            if (distance_pl <= 60)
            {
                if (other.check_point_current < path_get_number(pt_steamworks_21_axis_chase))
                    other.check_point_current += 1;
            }
            
            if (point_distance(obj_axis_npc.x, obj_axis_npc.y, other.checkpoint_x_axis, other.checkpoint_y_axis) < 60)
            {
                if (other.check_point_current_axis < path_get_number(pt_steamworks_21_axis_chase))
                    other.check_point_current_axis += 1;
            }
            
            if (other.check_point_current == other.check_point_current_axis && distance_pl > distance_axis && other.check_point_current < path_get_number(pt_steamworks_21_axis_chase))
            {
                if (!other.alarm[0])
                    other.alarm[0] = room_speed / 4;
            }
            
            if (distance_to_point(obj_pl.x, obj_pl.y) < 15)
            {
                scr_audio_fade_out(other.event_music, 300);
                player_is_caught = true;
            }
            
            if (player_is_caught && other.scene < 13)
            {
                scr_audio_fade_out(other.event_music, 300);
                other.scene = 45;
                global.sworks_flag[43] += 1;
            }
        }
        else if (sprite_index != spr_axis_down_bonk && other.scene < 20)
        {
            path_position = 1;
            audio_play_sound(snd_washpan_bonk, 1, 0);
            obj_axis_npc.sprite_index = spr_axis_down_bonk;
            obj_axis_npc.image_speed = 1;
            obj_axis_npc.image_index = 0;
            audio_stop_sound(other.event_music);
            other.axis_is_running = false;
        }
    }
}

if (scene >= 47 && obj_steamworks_21_locker.waiter == 0)
{
    with (obj_axis_npc)
    {
        if (distance_to_point(obj_pl.x, obj_pl.y) < 40)
        {
            action_sprite = false;
            axis_is_running = false;
            other.scene = 45;
            global.sworks_flag[43] += 1;
        }
    }
}

if (instance_exists(obj_axis_npc))
{
    with (obj_axis_npc)
    {
        if (sprite_index == spr_axis_down_bonk && image_index >= (image_number - 1))
        {
            image_index = image_number - 1;
            image_speed = 0;
        }
    }
}
