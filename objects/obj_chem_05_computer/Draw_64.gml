var camera_x, camera_y;

if (live_call())
    return global.live_result;

display_set_gui_size(640, 480);
camera_x = camera_get_view_x(view_camera[0]) * 2;
camera_y = camera_get_view_y(view_camera[0]) * 2;
draw_set_font(fnt_chem_computer_screen);
draw_set_color(c_lime);
draw_text(((x * 2) + 155) - camera_x, (y + 126) - camera_y, screen_message_current + screen_cursor);
draw_set_color(c_black);
draw_rectangle(0, 0, -400, 999, false);
display_set_gui_size(320, 240);
