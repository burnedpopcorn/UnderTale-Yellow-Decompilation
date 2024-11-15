if (live_call())
    return global.live_result;

draw_alpha = 0;
pencil_color = [make_color_rgb(213, 222, 231), make_color_rgb(137, 163, 187), make_color_rgb(62, 55, 207), make_color_rgb(40, 195, 72), make_color_rgb(237, 221, 53), make_color_rgb(207, 34, 67), make_color_rgb(141, 37, 17), make_color_rgb(68, 6, 6)];
id_xx = 56;
id_yy = 16;
view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);
event_fade_in = true;
event_fade_out = false;
end_cutscene = true;
depth = -100000;
drawing_grid = ds_grid_create(208, 147);
ds_grid_copy(drawing_grid, global.sworks_id_grid);
scr_cutscene_start();
