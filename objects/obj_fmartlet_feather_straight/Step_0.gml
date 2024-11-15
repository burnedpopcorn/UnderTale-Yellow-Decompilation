var direction_real, shoot_sound, can_trail;

if (live_call())
    return global.live_result;

if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

if (image_alpha < 1)
    image_alpha += 0.15;

if (state == 0)
{
    if (target_angle < 360)
        target_angle += 20;
    else
        state++;
    
    direction_real = direction + target_angle;
    image_angle = direction_real;
}
else if (state == 1)
{
    if (!alarm[1])
        alarm[1] = 6;
    
    speed -= 0.15;
    
    if (warning_line_alpha < 0.3)
        warning_line_alpha += 0.1;
    
    if (speed < -speed_charge_max)
    {
        if (can_play_sound)
        {
            shoot_sound = audio_play_sound(snd_mart_feather_atk3, 20, 0);
            audio_sound_set_track_position(shoot_sound, 0.65);
        }
        
        state = 2;
    }
}
else if (state == 2)
{
    can_trail = false;
    trail_cc_current += 1;
    
    if (trail_cc_current >= trail_cc_max)
    {
        can_trail = true;
        trail_cc_current = 0;
    }
    
    if (can_trail == true)
    {
        ds_list_add(x_list, x);
        ds_list_add(y_list, y);
        ds_list_add(angle_list, image_angle);
        
        while (ds_list_size(x_list) > max_points_trail)
        {
            ds_list_delete(x_list, 0);
            ds_list_delete(y_list, 0);
            ds_list_delete(angle_list, 0);
        }
    }
    
    x += lengthdir_x(attack_speed, image_angle);
    y += lengthdir_y(attack_speed, image_angle);
    
    if (place_meeting(x, y, obj_dialogue_box_battle_transformation_any) && in_box == false)
        in_box = true;
    
    if (!place_meeting(x, y, obj_dialogue_box_battle_transformation_any) && in_box == true)
    {
        if (image_alpha > 0)
        {
            image_alpha -= 0.3;
            
            if (image_alpha < 0)
                image_alpha = 0;
            
            if (image_alpha == 0)
                instance_destroy();
        }
    }
}
