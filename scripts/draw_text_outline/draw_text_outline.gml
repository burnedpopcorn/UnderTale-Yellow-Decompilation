function draw_text_outline()
{
    var text_col = draw_get_color();
    draw_set_color(c_black);
    draw_text(argument[0] - 1, argument[1], argument[2]);
    draw_text(argument[0] - 1, argument[1] - 1, argument[2]);
    draw_text(argument[0], argument[1] - 1, argument[2]);
    draw_text(argument[0] + 1, argument[1] - 1, argument[2]);
    draw_text(argument[0] + 1, argument[1], argument[2]);
    draw_text(argument[0] + 1, argument[1] + 1, argument[2]);
    draw_text(argument[0], argument[1] + 1, argument[2]);
    draw_text(argument[0] - 1, argument[1] + 1, argument[2]);
    draw_set_color(text_col);
    draw_text(argument[0], argument[1], argument[2]);
}
