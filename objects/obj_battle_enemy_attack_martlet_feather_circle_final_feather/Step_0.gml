if (live_call())
    return global.live_result;

if (state == 0)
{
    if (image_alpha < 1 && can_fade_in == true)
    {
        image_alpha += 0.15;
        
        if (image_alpha > 1)
            image_alpha = 1;
    }
}

if (state == 1)
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
    
    var spin_radius_speed_last = spin_radius_speed;
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
        event_user(2);
}
else if (state == 2)
{
    if (ds_list_size(x_list) > 0)
    {
        ds_list_delete(x_list, 0);
        ds_list_delete(y_list, 0);
        ds_list_delete(angle_list, 0);
    }
    
    if (image_angle != angle_destination)
        image_angle += (target_speed * target_direction);
    
    var angle_diff = angle_difference(image_angle, angle_destination);
    
    if ((angle_diff * target_direction) < 0)
        image_angle = angle_destination;
    
    if (image_angle == angle_destination && no_loop_target == false)
    {
        image_speed = 0.5;
        alarm[1] = 15;
        no_loop_target = true;
    }
}
else if (state == 3)
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
    
    if (distance_to_point(id_target.x, id_target.y) <= ((attack_speed / 2) + 1))
    {
        var id_feather_explosion = instance_create(id_target.x, id_target.y, obj_martlet_attack_splitting_feather_ext_checker);
        id_feather_explosion.fcreate_angle_diff = explosion_angle;
        id_feather_explosion.feather_targetted = feather_targetted;
        id_feather_explosion.fcreate_count = feather_create_count;
        instance_destroy();
    }
}

scr_enemy_attack_bullet_hit();

if (bullet_destroy_self)
{
    with (instance_create_depth(x, y, depth, obj_battle_enemy_attack_martlet_final_feather_dying))
    {
        sprite_index = other.sprite_index;
        image_angle = other.image_angle;
        image_xscale = other.image_xscale;
    }
    
    instance_destroy();
}
