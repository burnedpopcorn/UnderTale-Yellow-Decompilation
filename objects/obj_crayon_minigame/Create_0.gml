if (live_call())
    return global.live_result;

draw_alpha = 0;
crayon_selected = 3;
window_set_cursor(cr_none);
view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);
button_x[0] = 234;
button_y[0] = 180;
button_x[1] = 234;
button_y[1] = 210;
button_highlight[0] = false;
button_highlight[1] = false;
button_width = 64;
button_height = 20;
button_text[0] = "DONE";
button_text[1] = "RESET";
event_fade_in = true;
event_fade_out = false;
pencil_xx = [36, 45, 54, 63, 72, 81, 90, 99];
pencil_yy = [19, 21, 23, 25, 27, 29, 31, 33];
pencil_color_selected = [1, 2, 3, 4, 5, 6, 7, 8];
id_xx = 56;
id_yy = 16;
brush_size_normal = 1;
brush_size_large = 3.5;
brush_size_current = brush_size_normal;
cursor_x = mouse_x;
cursor_y = mouse_y;
cursor_x_last = mouse_x;
cursor_y_last = mouse_y;
cursor_click = false;
cursor_click_noloop = false;
pencil_color = [make_color_rgb(213, 222, 231), make_color_rgb(137, 163, 187), make_color_rgb(62, 55, 207), make_color_rgb(40, 195, 72), make_color_rgb(237, 221, 53), make_color_rgb(207, 34, 67), make_color_rgb(141, 37, 17), make_color_rgb(68, 6, 6)];
drawing_grid = ds_grid_create(208, 147);
depth = -100000;
instance_create_depth(82 + view_x, 140 + view_y, depth - 100, obj_crayon_box);
instance_create_depth(0 + sprite_get_xoffset(spr_size_crayon_1) + view_x, 160 + sprite_get_yoffset(spr_size_crayon_1) + view_y, depth - 100, obj_crayon_indicator);

for (var i = 7; i >= 0; i--)
{
    var pencil = instance_create_depth(obj_crayon_box.x + pencil_xx[i], obj_crayon_box.y + pencil_yy[i], depth - 200, obj_crayon);
    pencil.crayon_color = pencil_color_selected[i];
}

scr_audio_fade_out(obj_radio.current_song, 500);
mus = audio_play_sound(mus_build_a_bot, 1, 1);
audio_pause_sound(mus);
