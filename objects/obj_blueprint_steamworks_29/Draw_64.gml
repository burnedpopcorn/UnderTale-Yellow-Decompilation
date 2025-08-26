if (drawing_poster)
{
    draw_set_color(c_black);
    draw_set_alpha(draw_alpha / 2);
    draw_rectangle(0, 0, 320, 240, 0);
    draw_set_color(c_white);
    draw_set_alpha(draw_alpha);
    var subimg = 0;
    draw_sprite(spr_blueprint_overlay, 0, 160, 120);
    draw_set_alpha(1);
}
