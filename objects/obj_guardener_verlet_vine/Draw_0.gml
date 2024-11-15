var i, s;

for (i = 0; i < (array_length(sticks) - 1); i++)
{
    s = sticks[i];
    draw_sprite_ext(s[0][5], s[0][6], s[0][0], s[0][1], s[3], scr_distance(s[0], s[1]) / sprite_get_height(s[0][5]), point_direction(s[0][0], s[0][1], s[1][0], s[1][1]) + 90, draw_colour, 1);
}

s = sticks[array_length(sticks) - 1];
draw_sprite_ext(s[0][5], 6, s[0][0], s[0][1], s[3], scr_distance(s[0], s[1]) / sprite_get_height(s[0][5]), point_direction(s[0][0], s[0][1], s[1][0], s[1][1]) + 90, draw_colour, 1);
