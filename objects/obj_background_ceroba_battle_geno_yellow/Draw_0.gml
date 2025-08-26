var color_rect_1 = make_colour_rgb(73, 24, 31);
var color_rect_2 = make_colour_rgb(157, 23, 50);
var color_rect_3 = make_colour_rgb(216, 31, 68);
var color_rect_4 = make_colour_rgb(228, 69, 101);
draw_set_color(color_rect_1);
draw_rectangle(0, 230, 640, 336, false);
draw_set_color(color_rect_2);
draw_rectangle(0, 242, 640, 330, false);
draw_set_color(color_rect_3);
draw_rectangle(0, 268, 640, 324, false);
draw_set_color(color_rect_4);
draw_rectangle(0, 310, 640, 324, false);
draw_set_alpha(diamond_alpha);
draw_set_color(color_rect_3);

for (var i = 0; i < 2; i++)
{
    var diamond_x_left = diamond_x[i] - diamond_width - (diamond_width_current / 3);
    var diamond_x_right = diamond_x[i] + diamond_width + (diamond_width_current / 3);
    
    if (diamond_width_current > (diamond_width / 2))
    {
        diamond_x_left = diamond_x[i] - diamond_width - ((diamond_width / 3) - (diamond_width_current / 3));
        diamond_x_right = diamond_x[i] + diamond_width + ((diamond_width / 3) - (diamond_width_current / 3));
    }
    
    draw_primitive_begin(pr_linestrip);
    draw_vertex(diamond_x_left, diamond_y);
    draw_vertex(diamond_x[i], diamond_y - (diamond_height / 2));
    draw_vertex(diamond_x_right, diamond_y);
    draw_vertex(diamond_x[i], diamond_y + (diamond_height / 2));
    draw_vertex(diamond_x_left, diamond_y);
    draw_primitive_end();
    draw_primitive_begin(pr_linestrip);
    vertical_line_1_x = (diamond_x[i] - diamond_width) + diamond_width_current;
    draw_vertex(diamond_x[i], diamond_y - (diamond_height / 2));
    draw_vertex(vertical_line_1_x, diamond_y);
    draw_vertex(diamond_x[i], diamond_y + (diamond_height / 2));
    draw_primitive_end();
    draw_primitive_begin(pr_linestrip);
    var vertical_line_2_x = diamond_x[i] + diamond_width_current;
    draw_vertex(diamond_x[i], diamond_y - (diamond_height / 2));
    draw_vertex(vertical_line_2_x, diamond_y);
    draw_vertex(diamond_x[i], diamond_y + (diamond_height / 2));
    draw_primitive_end();
    draw_primitive_begin(pr_linestrip);
    draw_vertex(diamond_x_left, diamond_y);
    draw_vertex(vertical_line_1_x, diamond_y);
    draw_vertex(vertical_line_2_x, diamond_y);
    draw_vertex(diamond_x_right, diamond_y);
    draw_primitive_end();
}

draw_set_alpha(1);
