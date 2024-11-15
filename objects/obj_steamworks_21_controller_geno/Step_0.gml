var axis_run_speed;

if (live_call())
    return global.live_result;

axis_run_speed = npc_axis_run_speed;

switch (scene)
{
    case 0:
        if (obj_pl.x < 1990)
        {
            scr_cutscene_start();
            scr_radio_fade(0, 300);
            obj_pl.direction = 180;
            cutscene_advance();
        }
        
        break;
    
    case 1:
        cutscene_camera_move(1840, obj_pl.y, 3);
        break;
    
    case 2:
        obj_axis_npc.npc_direction = "right";
        cutscene_advance();
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        cutscene_dialogue();
        
        with (msg)
        {
            talker[0] = 1166;
            message[0] = "* N0.. .";
            message[1] = "* R- R3TREATING!";
            prt[0] = 3282;
            prt[1] = 3282;
        }
        
        break;
    
    case 5:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 6);
        break;
    
    case 6:
        event_music = audio_play_sound(mus_axis_chase, 1, 1);
        cutscene_camera_reset();
        scr_cutscene_end();
        break;
    
    case 7:
        with (obj_axis_npc)
        {
            can_walk = false;
            action_sprite = true;
            path_start(pt_steamworks_21_axis_chase_geno, axis_run_speed, path_action_stop, false);
        }
        
        axis_is_running = true;
        cutscene_advance();
        break;
    
    case 8:
        if (obj_axis_npc.path_position >= 1)
            cutscene_advance();
        
        break;
    
    case 9:
        scr_audio_fade_out(event_music, 750);
        instance_destroy(obj_axis_npc);
        cutscene_advance();
        break;
    
    case 10:
        global.sworks_flag[12] = 1;
        instance_destroy();
        break;
}

if (axis_is_running == true && instance_exists(obj_axis_npc))
{
    with (obj_axis_npc)
    {
        depth = -y;
        
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
        }
    }
    
    if (point_distance(obj_pl.x, obj_pl.y, obj_axis_npc.x, obj_axis_npc.y) < 30)
        obj_axis_npc.path_speed += 0.15;
}
