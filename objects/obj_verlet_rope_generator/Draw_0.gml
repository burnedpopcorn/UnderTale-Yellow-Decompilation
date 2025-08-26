if (live_call())
    return global.live_result;

for (var i = 0; i < array_length(sticks); i++)
{
    if (!sticks[i][6])
        draw_sprite_ext(sticks[i][0][5], 0, sticks[i][0][0], sticks[i][0][1], sticks[i][3], 1 + (scr_distance(sticks[i][0], sticks[i][1]) / sprite_get_height(sticks[i][0][5])), point_direction(sticks[i][0][0], sticks[i][0][1], sticks[i][1][0], sticks[i][1][1]) + 90, c_white, 1);
}
