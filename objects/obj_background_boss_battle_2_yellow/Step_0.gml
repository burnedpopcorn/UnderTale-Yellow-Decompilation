var time_elapsed_tail;

game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
animation_disjoint_x = sign_modifier * (max_rise - game_maker_cannot_do_math);

with (id_grid[0])
    event_user(2);

with (id_grid[1])
    event_user(2);

time_elapsed_decrease_total = 0;

for (i = 2; i < 4; i += 2)
{
    time_elapsed_decrease_total += time_elapsed_decrease;
    time_elapsed_tail = time_elapsed - time_elapsed_decrease_total;
    
    if (time_elapsed_tail < 0)
    {
        time_elapsed_tail += time_max;
        sign_modifier_tail = -sign_modifier;
    }
    else
    {
        sign_modifier_tail = sign_modifier;
    }
    
    game_maker_cannot_do_math = power((time_elapsed_tail / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_x = sign_modifier_tail * (max_rise - game_maker_cannot_do_math);
    
    with (id_grid[i])
        event_user(2);
    
    with (id_grid[i + 1])
        event_user(2);
}

time_elapsed += time_increase;

if (time_elapsed >= time_max)
{
    time_elapsed = 0;
    sign_modifier = -sign_modifier;
}
