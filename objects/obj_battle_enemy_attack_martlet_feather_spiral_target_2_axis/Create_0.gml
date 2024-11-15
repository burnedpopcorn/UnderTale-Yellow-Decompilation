image_speed = 0.6;
image_index = 0;
alarm[0] = 17;
alarm[1] = 20;
feather_radius = 15;
feather_radius_increase = 10;
feather_angle_master = irandom_range(0, 360);
feather_angle_speed = 4;
feather_alpha = 1;
can_spiral = false;
can_fade_out = false;
fcreate_count = 4;
fcreate_decrease = 360 / fcreate_count;
fcreate_angle_diff = 0;
warning_radius = feather_radius;
warning_radius_increase = feather_radius_increase;
warning_angle_master = feather_angle_master;
warning_angle_speed = feather_angle_speed;
warning_counter = 3;
warning_multiplier = 5;

for (i = 0; i < warning_counter; i += 1)
{
    warning_angle_master += (warning_angle_speed * warning_multiplier);
    
    if (warning_angle_master >= 360)
        warning_angle_master -= 360;
    
    warning_radius += (warning_radius_increase * warning_multiplier);
    frotate_angle_diff = 0;
    
    for (j = 0; j < fcreate_count; j += 1)
    {
        frotate_angle_use = frotate_angle_diff + warning_angle_master;
        
        if (frotate_angle_use < 0)
            frotate_angle_use += 360;
        else if (frotate_angle_use >= 360)
            frotate_angle_use -= 360;
        
        frotate_x = x + (warning_radius * cos(degtorad(frotate_angle_use)));
        frotate_y = y - (warning_radius * sin(degtorad(frotate_angle_use)));
        
        if (!instance_exists(obj_battle_enemy_attack_martlet_feather_spiral_warning_master))
            instance_create(frotate_x, frotate_y, obj_battle_enemy_attack_martlet_feather_spiral_warning_master);
        else
            instance_create(frotate_x, frotate_y, obj_battle_enemy_attack_martlet_feather_spiral_warning_slave);
        
        frotate_angle_diff -= fcreate_decrease;
        
        if (frotate_angle_diff < 0)
            frotate_angle_diff += 360;
    }
}

image_angle = feather_angle_master;
