var turns_passed, stage;

if (instance_exists(obj_battle_enemy_attack_el_bailador_dance) || global.current_hp_enemy <= 0)
{
    if (image_alpha > min_alpha)
    {
        image_alpha -= alpha_incdec;
        
        if (image_alpha < min_alpha)
            image_alpha = min_alpha;
    }
}
else if (image_alpha < max_alpha)
{
    image_alpha += alpha_incdec;
    
    if (image_alpha > max_alpha)
        image_alpha = max_alpha;
}

turns_passed = global.turns_passed;

if (turns_passed <= 3)
    image_speed = image_speed_slow;
else if (turns_passed >= 4 && turns_passed <= 6)
    image_speed = image_speed_med;
else if (turns_passed >= 7)
    image_speed = image_speed_fast;

if (image_alpha == 0)
{
    image_index = 0;
    time_elapsed = 0;
    sign_modifier = -1;
}
else
{
    time_elapsed += time_increase;
    
    if (time_elapsed >= time_max)
    {
        time_elapsed = 0;
        sign_modifier = -sign_modifier;
    }
    
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_angle = sign_modifier * (max_rise - game_maker_cannot_do_math);
    lights_angle = lights_angle_default + animation_disjoint_angle;
}

if (instance_exists(obj_battle_enemy_attack_el_bailador_smoke))
{
    with (obj_battle_enemy_attack_el_bailador_smoke)
        event_user(0);
}

with (background_obj)
{
    if (global.current_hp_enemy <= 0)
    {
        alpha_base = 0;
    }
    else
    {
        stage = 2536;
        alpha_base = (stage.max_alpha - stage.image_alpha) * 0.7142857142857143;
    }
}
