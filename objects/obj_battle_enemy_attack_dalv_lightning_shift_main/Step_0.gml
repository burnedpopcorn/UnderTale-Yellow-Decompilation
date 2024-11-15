var move_steps;

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
    if (move_speed < move_speed_max)
    {
        move_speed += move_speed_increase;
        
        if (move_speed > move_speed_max)
            move_speed = move_speed_max;
    }
    
    move_steps = 1 + floor(move_speed / (move_speed_max / 2));
    
    for (i = 0; i < move_steps; i += 1)
    {
        game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
        time_elapsed += time_increase;
        
        if (time_elapsed >= time_max)
        {
            time_elapsed = 0;
            sign_modifier = -sign_modifier;
        }
        
        y = draw_position_y + animation_disjoint_y;
    }
}

with (obj_battle_enemy_attack_dalv_lightning_shift_second)
    event_user(0);
