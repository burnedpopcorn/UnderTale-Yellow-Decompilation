image_alpha = global.image_alpha_enemy_attacking;

if (fade_direction == "in")
{
    image_alpha_factor += 0.1;
    
    if (image_alpha_factor > 1)
        image_alpha_factor = 1;
    
    if (image_alpha_factor == 1)
        fade_direction = "nothing";
}

if (fade_direction == "out")
{
    image_alpha_factor -= 0.1;
    
    if (image_alpha_factor < 0)
        image_alpha_factor = 0;
    
    if (image_alpha_factor == 0)
        instance_destroy();
}

image_alpha = global.image_alpha_enemy_attacking * image_alpha_factor;
game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
animation_disjoint_x = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
time_elapsed += time_increase;

if (time_elapsed >= time_max)
{
    time_elapsed = 0;
    sign_modifier = -sign_modifier;
}

x = draw_position_x + animation_disjoint_x;
y -= y_increase;
