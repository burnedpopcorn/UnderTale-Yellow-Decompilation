if (live_call())
    return global.live_result;

if (!surface_exists(lighting_surface))
    lighting_surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

if (surface_exists(lighting_surface))
{
    var view_x = camera_get_view_x(view_camera[0]);
    var view_y = camera_get_view_y(view_camera[0]);
    surface_set_target(lighting_surface);
    draw_set_color(c_black);
    draw_set_alpha(darkness_alpha);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
    gpu_set_blendmode(bm_subtract);
    draw_sprite_ext(sprite_index, image_index, x - view_x, y - view_y, image_xscale, image_yscale, image_angle, c_white, 1);
    gpu_set_blendmode(bm_normal);
    surface_reset_target();
    draw_surface(lighting_surface, view_x, view_y);
}
