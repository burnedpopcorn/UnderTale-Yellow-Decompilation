if (live_call())
    return global.live_result;

draw_set_color(c_black);
draw_set_alpha(draw_alpha);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

with (obj_pl)
{
    if (image_alpha > 0)
        draw_self();
}

with (obj_player_npc)
    draw_self();

draw_set_color(c_white);
draw_set_alpha(draw_alpha_white);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
