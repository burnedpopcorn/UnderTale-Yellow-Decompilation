var x_offset, y_offset, draw_alpha;

x_offset = 0;
y_offset = 0;
draw_alpha = 1 * image_alpha;

if (button_pressed)
{
    x_offset = 2;
    y_offset = 2;
    draw_alpha = 0.8 * image_alpha;
}

if (active == true)
{
    draw_set_color(c_white);
    draw_set_alpha(image_alpha * draw_alpha);
    draw_rectangle((x + x_offset) - 2, (y + y_offset) - 2, x + sprite_width + 2, y + sprite_height + 2, false);
    draw_set_alpha(draw_alpha * image_alpha);
}

draw_sprite_ext(sprite_index, image_index, x + x_offset, y + y_offset, image_xscale, image_yscale, image_angle, c_white, draw_alpha);
draw_set_alpha(1);
