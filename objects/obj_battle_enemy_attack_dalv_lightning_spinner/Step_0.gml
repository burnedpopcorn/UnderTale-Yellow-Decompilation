if (image_alpha < 1 && move == false)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
        alarm[0] = 20;
}

if (move == true)
{
    if (spin_speed < spin_speed_max)
    {
        spin_speed += spin_speed_increase;
        
        if (spin_speed > spin_speed_max)
            spin_speed = spin_speed_max;
    }
    
    if (move_random_number == 0)
        image_angle += round(spin_speed / spin_speed_divider);
    else
        image_angle -= round(spin_speed / spin_speed_divider);
    
    if (image_angle > 360)
        image_angle -= 360;
    
    var move_steps = 1 + floor(spin_speed / (spin_speed_max / 2));
    
    for (i = 0; i < move_steps; i += 1)
    {
        game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
        time_elapsed += time_increase;
        
        if (time_elapsed >= time_max)
        {
            time_elapsed = 0;
            sign_modifier = -sign_modifier;
        }
        
        if (move_random_number == 0)
            x = draw_position_x + animation_disjoint;
        else
            x = draw_position_x - animation_disjoint;
        
        y = draw_position_y + animation_disjoint;
    }
}

with (obj_battle_enemy_attack_dalv_lightning_shift_second)
    event_user(0);
