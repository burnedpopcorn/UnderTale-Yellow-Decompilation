game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
animation_disjoint_yscale = sign_modifier * (max_rise - game_maker_cannot_do_math);
time_elapsed += time_increase;
