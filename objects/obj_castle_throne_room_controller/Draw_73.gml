var dir_offset, distance, circle_alpha, custom_col, i, xx, yy;

if (live_call())
    return global.live_result;

if (scene == 34 && !is_charged)
{
    draw_set_circle_precision(8);
    dir_offset = 180 * charge_percentage;
    distance = 25 * charge_percentage;
    circle_alpha = 0.8 - charge_percentage;
    custom_col = make_color_rgb(255, 255, 255 - (255 * charge_percentage));
    draw_set_color(custom_col);
    draw_set_alpha(circle_alpha);
    
    for (i = 0; i < 360; i += 90)
    {
        xx = obj_player_npc.x + lengthdir_x(distance, i + dir_offset);
        yy = (obj_player_npc.y - 25) + lengthdir_y(distance, i + dir_offset);
        draw_circle(xx, yy, 6, false);
    }
    
    draw_set_alpha(1);
    draw_set_circle_precision(24);
}
