if (live_call())
    return global.live_result;

if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

if (image_alpha < 1)
{
    image_alpha += 0.2;
    
    if (image_alpha > 1)
        image_alpha = 1;
}

if (state == 0)
{
    if (can_move == true)
    {
        game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_x = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
        time_elapsed += time_increase;
        
        if (time_elapsed >= time_max)
        {
            time_elapsed = 0;
            sign_modifier = -sign_modifier;
        }
        
        var time_elapsed_fall = time_elapsed + time_elapsed_increase_fall;
        
        if (time_elapsed_fall > time_max)
        {
            time_elapsed_fall -= time_max;
            sign_modifier_fall = -sign_modifier;
        }
        else
        {
            sign_modifier_fall = sign_modifier;
        }
        
        game_maker_cannot_do_math = power((time_elapsed_fall / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_fall = sign_modifier_fall * (max_rise - game_maker_cannot_do_math);
        x_point_fall = starting_position_x + animation_disjoint_fall;
        x_point = starting_position_x + animation_disjoint_x;
        animation_disjoint_y += (fall_speed * (1 - abs((x_point_fall - starting_position_x) / max_rise)));
        y_point = round(starting_position_y + animation_disjoint_y);
    }
    
    position_factor = (x_point - starting_position_x) / max_rise;
    angle_pos = angle_pos_default + (angle_pos_max * position_factor);
    x = x_point + (angle_radius * cos(angle_pos * 0.008726646259971648));
    y = y_point - (angle_radius * sin(angle_pos * 0.008726646259971648));
    image_angle = angle_pos + 90;
}
else if (state == 1)
{
    if (image_angle != angle_destination)
        image_angle += (spin_speed * spin_direction);
    
    var angle_diff = angle_difference(image_angle, angle_destination);
    
    if ((angle_diff * spin_direction) < 0)
        image_angle = angle_destination;
    
    if (image_angle == angle_destination && no_loop_spin == false)
    {
        image_speed = 0.5;
        alarm[1] = 15;
        no_loop_spin = true;
    }
}
else if (state == 2)
{
    var can_trail = false;
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
            image_alpha -= 0.1;
            
            if (image_alpha < 0)
                image_alpha = 0;
            
            if (image_alpha == 0)
                instance_destroy();
        }
    }
    
    if (!instance_exists(obj_martlet_body))
    {
        if (distance_to_point(id_target.x, id_target.y) <= ((attack_speed / 2) + 1))
        {
            id_feather_explosion = instance_create(id_target.x, id_target.y, obj_martlet_attack_splitting_feather_ext_checker);
            id_feather_explosion.fcreate_angle_diff = explosion_angle;
            id_feather_explosion.feather_targetted = feather_targetted;
            id_feather_explosion.fcreate_count = feather_create_count;
            instance_destroy();
        }
    }
}
