if (live_call())
    return global.live_result;

if (delay_timer > 1)
{
    delay_timer--;
    exit;
}
else if (delay_timer == 1)
{
    credits_song = audio_play_sound(mus_flowey_world, 20, 0);
    delay_timer = 0;
}

if (fade_out == true)
{
    text_alpha = lerp(text_alpha, 0, 0.02);
    
    if (text_alpha < 0.01)
    {
        text_alpha = 0;
        
        if (!alarm[1])
            alarm[1] = 120;
    }
}

if (y_max != -1 && y_slow_down != true)
    y_speed = 1;

if (y_slow_down == true)
{
    if (y_speed > 0)
    {
        y_speed -= (1 / slow_down_treshold);
    }
    else
    {
        y_speed = 0;
        
        if (!alarm[0])
            alarm[0] = 240;
        
        if (!alarm[2])
            alarm[2] = 90;
    }
}

y_offset -= y_speed;

switch (scene)
{
    case 0:
        global.cutscene = true;
        cutscene_wait(start_delay);
        break;
    
    case 1:
        if (global.hotland_flag[10] == 0)
            room = target_room[0];
        
        scene++;
        break;
    
    case 2:
        var cutscene_wait_time = room_duration / 30;
        cutscene_wait(cutscene_wait_time);
        camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + lengthdir_x(pan_speed, pan_dir[camera_target_current]), camera_get_view_y(view_camera[0]) + lengthdir_y(pan_speed, pan_dir[camera_target_current]));
        var fade_out_start_point = room_duration - 60;
        
        if (cutscene_timer < fade_out_start_point)
        {
            if (draw_alpha > 0.7)
                draw_alpha -= 0.003;
        }
        else
        {
            var timer_relative = cutscene_timer - fade_out_start_point;
            draw_alpha = 0.7 + (0.3 * (timer_relative / 60));
        }
        
        break;
    
    case 3:
        if (cutscene_wait(wait_timer))
        {
            if (camera_target_current < (array_length(target_room) - 1))
            {
                camera_target_current += 1;
                
                if (global.hotland_flag[10] == 0)
                    room = target_room[camera_target_current];
                
                scene = 2;
            }
            else
            {
                draw_alpha = 1;
                scene++;
            }
        }
        
        break;
}
