if (image_alpha < 1)
{
    image_alpha += 0.2;
    
    if (image_alpha >= 1)
    {
        image_alpha = 1;
        can_drop = true;
    }
}

if (can_drop == true)
{
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_y = sign_modifier * (max_rise - game_maker_cannot_do_math);
    time_elapsed += time_increase;
    
    if (time_elapsed >= time_max)
    {
    }
    
    y = default_y + animation_disjoint_y;
    image_angle -= (random_dir * angle_inc);
    
    if (y >= obj_battle_enemy_attack_bowll_liquid_bottom.bbox_top)
        instance_destroy();
}
