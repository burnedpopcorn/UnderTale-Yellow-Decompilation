if (live_call())
    return global.live_result;

var number_alpha = 0;

if (instance_exists(obj_factory_03_numpad_number))
    number_alpha = obj_factory_03_numpad_number.image_alpha;

draw_set_color(c_lime);
draw_set_font(fnt_battle);
draw_set_alpha(number_alpha);
draw_text(camera_get_view_x(view_camera[0]) + 146, camera_get_view_y(view_camera[0]) + 20, entry_number);
draw_set_alpha(1);
