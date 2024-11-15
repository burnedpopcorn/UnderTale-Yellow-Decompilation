var actor_clover, msg;

if (live_call())
    return global.live_result;

if (room == rm_battle_flashback_final)
{
    if (draw_alpha_white > 0)
    {
        draw_alpha_white -= 0.05;
        exit;
    }
    else if (instance_exists(obj_flowey_battle_ow_controller))
    {
        obj_flowey_battle_ow_controller.spawn_vines = true;
    }
    
    if (obj_pl.x >= layer_remove_x_next)
    {
        layer_remove_x_next += layer_remove_x_inc;
        instance_create_depth(0, 0, -9999, obj_flowey_battle_screen_glitch);
        
        if (ds_list_size(layer_list) > 1)
        {
            layer_set_visible(ds_list_find_value(layer_list, 0), false);
            layer_set_visible(ds_list_find_value(layer_list, 1), true);
            ds_list_delete(layer_list, 0);
        }
        else
        {
            fade_out = true;
            layer_remove_x_next = 999999;
        }
    }
    
    if (fade_out == true)
    {
        draw_alpha += 0.016666666666666666;
        
        if (draw_alpha >= 2)
        {
            if (!instance_exists(obj_player_npc) && scene == 0)
            {
                scene++;
                actor_clover = instance_create(obj_pl.x, obj_pl.y, obj_player_npc);
                
                with (actor_clover)
                {
                    action_sprite = true;
                    
                    if (obj_pl.is_sprinting)
                    {
                        sprite_index = spr_pl_run_right;
                        image_speed = 0.3;
                    }
                    else
                    {
                        sprite_index = spr_pl_right;
                        image_speed = 0.2;
                    }
                }
            }
        }
    }
    
    if (obj_pl.x < 2496)
    {
        audio_sound_gain(global.battle_music, 1 - (obj_pl.x / 2496), 1);
    }
    else
    {
        audio_stop_sound(global.battle_music);
        obj_flowey_battle_ow_controller.spawn_vines = false;
        obj_flowey_battle_ow_controller.persistent = true;
    }
}

switch (scene)
{
    case 1:
        if (abs(175 - obj_player_npc.y) > 10)
            obj_player_npc.y += (sign(175 - obj_pl.y) * 3);
        
        cutscene_wait(2);
        break;
    
    case 2:
        msg = instance_create_depth(0, 0, -999, obj_dialogue_flowey_distant);
        
        with (msg)
        {
            message[0] = "* Clover?";
            message[1] = "* Where did you go, buddy?";
            message[2] = "* Get b a c k   h   e    r     e ";
        }
        
        scene++;
        break;
    
    case 3:
        if (!global.dialogue_open)
            cutscene_advance();
        
        break;
    
    case 4:
        cutscene_wait(1);
        break;
    
    case 5:
        obj_player_npc.persistent = true;
        persistent = true;
        room = rm_battle_flashback_final_2;
        global.player_can_run = false;
        obj_player_npc.x = 160;
        obj_player_npc.action_sprite = false;
        draw_alpha = 0;
        fade_out = false;
        scene++;
        break;
    
    case 6:
        cutscene_npc_walk(1168, 800, obj_player_npc.y, 3, "x", "right");
        break;
    
    case 7:
        cutscene_wait(1);
        break;
    
    case 8:
        cutscene_camera_move(850, obj_player_npc.y, 1);
        break;
    
    case 9:
        cutscene_wait(1);
        break;
    
    case 10:
        instance_destroy(obj_flowey_1_controller_base);
        cutscene_end();
        break;
}
