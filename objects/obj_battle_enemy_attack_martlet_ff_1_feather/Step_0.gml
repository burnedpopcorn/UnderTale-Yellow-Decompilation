var can_trail, spin_radius_speed_last, angle_diff;

if (image_alpha < 1 && can_fade_in == true)
{
    image_alpha += 0.2;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
        can_fade_in = false;
}

if (state == 0)
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
    
    spin_radius_speed_last = spin_radius_speed;
    game_maker_cannot_do_math = power((time_elapsed_spin / ((time_max_spin / 2) * (1 / sqrt(max_rise_spin)))) - sqrt(max_rise_spin), 2);
    spin_radius_speed = sign_modifier_spin * (max_rise_spin - round(game_maker_cannot_do_math));
    time_elapsed_spin += time_increase_spin;
    
    if (time_elapsed_spin >= time_max_spin)
    {
        time_elapsed_spin = 0;
        sign_modifier_spin = -sign_modifier_spin;
    }
    
    spin_angle_speed = spin_radius_speed_multiplier * (spin_radius_speed - spin_radius_speed_last);
    image_angle += spin_angle_speed;
    x = spin_default_x + lengthdir_x(spin_radius_speed, spin_direction);
    y = spin_default_y + lengthdir_y(spin_radius_speed, spin_direction);
    
    if (time_elapsed_spin >= (time_max_spin / 2))
        event_user(0);
}
else if (state == 1)
{
    if (ds_list_size(x_list) > 0)
    {
        ds_list_delete(x_list, 0);
        ds_list_delete(y_list, 0);
        ds_list_delete(angle_list, 0);
    }
    
    if (image_angle != angle_destination)
        image_angle += (target_speed * target_direction);
    
    angle_diff = angle_difference(image_angle, angle_destination);
    
    if ((angle_diff * target_direction) < 0)
        image_angle = angle_destination;
    
    if (image_angle == angle_destination && no_loop_target == false)
    {
        image_speed = 0.5;
        no_loop_target = true;
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
            image_alpha -= 0.1;
            
            if (image_alpha < 0)
                image_alpha = 0;
            
            if (image_alpha == 0)
                instance_destroy();
        }
    }
}
