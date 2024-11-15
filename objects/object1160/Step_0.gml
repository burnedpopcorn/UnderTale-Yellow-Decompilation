if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

if (image_alpha < 1)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
}

if (state == "normal")
{
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_angle = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
    time_elapsed += time_increase;
    
    if (time_elapsed >= time_max)
    {
        time_elapsed = 0;
        sign_modifier = -sign_modifier;
    }
    
    image_angle = image_angle_n + animation_disjoint_angle;
}
else if (state == "detract")
{
    if (no_loop_t == false)
    {
        image_angle_d = image_angle;
        image_angle_d_location = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
        image_angle_r_location = image_angle;
        no_loop_t = true;
    }
    
    image_angle_d += (image_angle_d_speed * sign(image_angle_d_location - image_angle_d));
    
    if (abs(image_angle_d_location - image_angle_d) < image_angle_d_speed)
        image_angle_d = image_angle_d_location;
    
    if (image_angle_d == image_angle_d_location)
    {
        image_angle_r = image_angle_d;
        state = "retract";
        no_loop_t = false;
    }
    
    image_angle = image_angle_d;
}
else if (state == "retract")
{
    image_angle_r += (image_angle_r_speed * sign(image_angle_r_location - image_angle_r));
    
    if (abs(image_angle_r_location - image_angle_r) < image_angle_r_speed)
        image_angle_r = image_angle_r_location;
    
    if (image_angle_r == image_angle_r_location)
        state = "normal";
    
    image_angle = image_angle_r;
}

with (obj_battle_enemy_attack_frostermit_pincher_right_2)
    event_user(0);

with (obj_battle_enemy_attack_frostermit_pincher_right_3_outer)
    event_user(0);

with (obj_battle_enemy_attack_frostermit_pincher_right_3_inner)
    event_user(0);
