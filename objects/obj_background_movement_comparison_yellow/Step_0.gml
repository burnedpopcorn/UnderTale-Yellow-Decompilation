linear_disjoint_y += (linear_direction * linear_speed);

if (abs(linear_disjoint_y) >= linear_peak)
    linear_direction = -linear_direction;

linear_y = linear_y_default + linear_disjoint_y;
time_elapsed += time_increase;

if (time_elapsed >= time_max)
{
    time_elapsed = 0;
    sign_modifier = -sign_modifier;
}

game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
parabolic_disjoint_y = sign_modifier * (max_rise - game_maker_cannot_do_math);
parabolic_y = parabolic_y_default + parabolic_disjoint_y;
angular_disjoint_y += (angular_direction * angular_speed);

if (angular_disjoint_y >= 360)
    angular_disjoint_y -= 360;

if (angular_disjoint_y <= -360)
    angular_disjoint_y += 360;

angular_y = angular_y_default + (angular_peak * sin(degtorad(angular_disjoint_y)));
