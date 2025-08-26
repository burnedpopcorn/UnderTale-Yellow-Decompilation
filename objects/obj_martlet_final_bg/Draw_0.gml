if (live_call())
    return global.live_result;

draw_set_alpha(draw_alpha);
draw_set_color(make_color_rgb(31, 25, 94));
var offset_x = (max_size_x - (grid_size_x - bg_grid_offset)) / 2;
var offset_y = (max_size_y - (grid_size_y - bg_grid_offset)) / 2;
var rect_size_x = (grid_size_x - bg_grid_offset) / grid_n_x;
var rect_size_y = (grid_size_y - bg_grid_offset) / grid_n_y;

for (var i = 0; i <= grid_n_x; i++)
    draw_line_width(offset_x + (i * rect_size_x), offset_y, offset_x + (i * rect_size_x), max_size_y - offset_y, 1);

for (var i = 0; i <= grid_n_y; i++)
    draw_line_width(offset_x, offset_y + (i * rect_size_y), max_size_x - offset_x, offset_y + (i * rect_size_y), 1);

draw_set_color(make_color_rgb(5, 45, 89));
offset_x = (max_size_x - grid_size_x) / 2;
offset_y = (max_size_y - grid_size_y) / 2;
rect_size_x = grid_size_x / grid_n_x;
rect_size_y = grid_size_y / grid_n_y;

for (var i = 0; i <= grid_n_x; i++)
    draw_line_width(offset_x + (i * rect_size_x), offset_y, offset_x + (i * rect_size_x), max_size_y - offset_y, 1);

for (var i = 0; i <= grid_n_y; i++)
    draw_line_width(offset_x, offset_y + (i * rect_size_y), max_size_x - offset_x, offset_y + (i * rect_size_y), 1);

if (draw_shader)
{
    shader_set(shader);
    draw_primitive_begin(pr_trianglelist);
    draw_vertex(offset_x, offset_y);
    draw_vertex((max_size_x - offset_x) + 1, offset_y);
    draw_vertex((max_size_x - offset_x) + 1, (max_size_y - offset_y) + 1);
    draw_vertex((max_size_x - offset_x) + 1, (max_size_y - offset_y) + 1);
    draw_vertex(offset_x, (max_size_y - offset_y) + 1);
    draw_vertex(offset_x, offset_y);
    draw_primitive_end();
    shader_set_uniform_f(u_size, power(1.7, ((1 - (global.current_hp_enemy / 1000)) * 10) - 5));
    shader_reset();
}

for (var i = 0; i < array_length(stars); i++)
    draw_sprite(spr_martlet_final_background_stars, stars[i][2], stars[i][0], stars[i][1]);

draw_set_alpha(1);
