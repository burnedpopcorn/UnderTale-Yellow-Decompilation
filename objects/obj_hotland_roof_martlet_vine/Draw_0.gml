if (scene > 0)
{
    draw_set_alpha(overlay_alpha);
    draw_set_color(c_white);
    draw_rectangle(0, 0, 640, 480, false);
    draw_set_alpha(1);
}

draw_self();

if (draw_white_overlay == true)
{
    draw_set_color(c_white);
    draw_rectangle(0, 0, 640, 480, false);
}
