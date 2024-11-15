if (state == 2)
{
    if (obj_dummy_training_dummy.damage_disjoint_count > 0 && global.hit_count >= 3)
        state = 3;
}

if (state == 1)
{
    if (state_1_no_loop == false)
    {
        time_elapsed += time_increase;
        
        if (time_elapsed >= time_max)
        {
            time_elapsed = time_max;
            alarm[0] = state_1_alarm;
            state_1_no_loop = true;
        }
        
        game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
        y = obj_dummy_training_dummy.y + on_y + animation_disjoint_y;
    }
}
else if (state == 2)
{
    x = obj_dummy_training_dummy.x + on_x;
    y = obj_dummy_training_dummy.y + on_y;
}
else if (state == 3)
{
    x += (spin_x_dir * spin_x_speed);
    image_angle += (spin_angle_dir * spin_angle_speed);
}
