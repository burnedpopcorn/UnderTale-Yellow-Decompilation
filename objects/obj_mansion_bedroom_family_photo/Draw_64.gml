if (drawing_poster)
{
    draw_set_color(c_black);
    draw_set_alpha(draw_alpha / 2);
    draw_rectangle(0, 0, 320, 240, 0);
    draw_set_color(c_white);
    draw_set_alpha(draw_alpha);
    draw_sprite(spr_mansion_family_picture, 0, 0, 0);
    draw_set_alpha(1);
}
