var i, s;

for (i = 0; i < array_length(sticks); i++)
{
    s = sticks[i];
    
    if (!s[6])
        draw_sprite_ext(s[0][5], 0, s[0][0], s[0][1], s[3], scr_distance(s[0], s[1]) / sprite_get_height(s[0][5]), point_direction(s[0][0], s[0][1], s[1][0], s[1][1]) + 90, c_white, 1);
}

if (global.debug_render_path)
{
    for (i = 0; i < array_length(sticks); i++)
    {
        s = sticks[i];
        
        if (!s[6])
            draw_line_width_color(s[0][0], s[0][1], s[1][0], s[1][1], s[3], s[4], s[5]);
    }
}
