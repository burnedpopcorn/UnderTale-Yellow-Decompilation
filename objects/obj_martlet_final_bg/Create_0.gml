if (live_call())
    return global.live_result;

max_size_x = 640;
max_size_y = 250;
grid_size_x = 600;
grid_size_y = 220;
bg_grid_offset = 10;
grid_n_x = 30;
grid_n_y = 11;
shader = 4;
u_size = shader_get_uniform(shader, "size");
size = 0;
draw_alpha = 0;
draw_shader = false;
stars = [[128, 207, 0], [140, 58, 0], [45, 135, 1], [330, 135, 1], [482, 89, 1], [536, 44, 2], [500, 186, 3]];
fade_out = false;
