var can_feather_launch;

if (live_call())
    return global.live_result;

game_maker_cannot_do_math = power((time_elapsed_radius / ((time_max_radius / 2) * (1 / sqrt(max_rise_radius)))) - sqrt(max_rise_radius), 2);
radius_increase = sign_modifier_radius * (max_rise_radius - round(game_maker_cannot_do_math));
time_elapsed_radius += time_increase_radius;

if (time_elapsed_radius >= time_max_radius)
{
    time_elapsed_radius = 0;
    sign_modifier_radius = -sign_modifier_radius;
}

frotate_angle_diff = 0;

for (i = 0; i < fcreate_count; i += 1)
{
    frotate_angle_use = frotate_angle_diff + feather_angle_master;
    
    if (frotate_angle_use < 0)
        frotate_angle_use += 360;
    else if (frotate_angle_use >= 360)
        frotate_angle_use -= 360;
    
    frotate_x = x_center + ((feather_angle_radius + radius_increase) * cos(degtorad(frotate_angle_use)));
    frotate_y = y_center - ((feather_angle_radius + radius_increase) * sin(degtorad(frotate_angle_use)));
    frotate_angle = frotate_angle_use + 90;
    
    if (instance_exists(id_feather[i]))
    {
        with (id_feather[i])
        {
            if (state == 0)
                event_user(0);
        }
    }
    
    frotate_angle_diff -= fcreate_decrease;
    
    if (frotate_angle_diff < 0)
        frotate_angle_diff += 360;
}

feather_angle_master += feather_angle_speed;

if (feather_angle_master >= 360)
    feather_angle_master -= 360;

if (feather_launch_no_loop == false)
{
    can_feather_launch = true;
    
    if (obj_battle_enemy_attack_martlet_feather_circle_final_feather.image_alpha < 1)
        can_feather_launch = false;
    
    if (can_feather_launch == true)
    {
        alarm[0] = 90;
        feather_launch_no_loop = true;
    }
}
