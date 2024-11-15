if (can_radius_increase == true)
{
    game_maker_cannot_do_math = power((time_elapsed_radius / ((time_max_radius / 2) * (1 / sqrt(max_rise_radius)))) - sqrt(max_rise_radius), 2);
    radius_increase = sign_modifier_radius * (max_rise_radius - round(game_maker_cannot_do_math));
    time_elapsed_radius += time_increase_radius;
    
    if (time_elapsed_radius >= time_max_radius)
    {
        time_elapsed_radius = 0;
        sign_modifier_radius = -sign_modifier_radius;
    }
    
    game_maker_cannot_do_math = power((time_elapsed_skew / ((time_max_skew / 2) * (1 / sqrt(max_rise_skew)))) - sqrt(max_rise_skew), 2);
    skew_increase = sign_modifier_skew * (max_rise_skew - round(game_maker_cannot_do_math));
    time_elapsed_skew += time_increase_skew;
    
    if (time_elapsed_skew >= time_max_skew)
    {
        time_elapsed_skew = 0;
        sign_modifier_skew = -sign_modifier_skew;
    }
}

can_radius_increase = true;

for (i = 0; i < fcreate_count; i++)
{
    with (id_feather[i])
        event_user(0);
}
