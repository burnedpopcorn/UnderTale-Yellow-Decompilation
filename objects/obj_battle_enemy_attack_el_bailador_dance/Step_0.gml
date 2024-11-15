if (state == 0 || state == 2)
{
    game_maker_cannot_do_math = power((time_elapsed_move / ((time_max_move / 2) * (1 / sqrt(max_rise_move)))) - sqrt(max_rise_move), 2);
    animation_disjoint_x = sign_modifier_move * (max_rise_move - game_maker_cannot_do_math);
    x = default_x + animation_disjoint_x;
    time_elapsed_move += time_increase_move;
    
    if (time_elapsed_move > (time_max_move / 2))
    {
        if (state == 2)
            instance_destroy();
        else
            event_user(0);
    }
}
else if (state == 1)
{
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_yscale = sign_modifier * (max_rise - game_maker_cannot_do_math);
    time_elapsed += time_increase;
    
    if (time_elapsed >= time_max)
    {
        time_elapsed = 0;
        sign_modifier = -sign_modifier;
    }
    
    image_yscale = default_yscale + animation_disjoint_yscale;
    image_xscale = default_xscale - (animation_disjoint_yscale * (max_rise_ext / max_rise));
}
