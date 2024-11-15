var darkness_alpha, view_x, view_y;

if (live_call())
    return global.live_result;

if (active == -1)
    exit;

darkness_alpha = 0.6;

if (!surface_exists(lighting_surface))
    lighting_surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

if (surface_exists(lighting_surface))
{
    view_x = camera_get_view_x(view_camera[0]);
    view_y = camera_get_view_y(view_camera[0]);
    surface_set_target(lighting_surface);
    draw_set_color(c_black);
    draw_set_alpha(darkness_alpha);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);
    
    if (instance_exists(obj_factory_03_furnace_light))
    {
        with (obj_factory_03_furnace_light)
        {
            gpu_set_blendmode(bm_subtract);
            draw_sprite_ext(sprite_index, -1, x - view_x, y - view_y, 1, 1, image_angle, c_white, 1);
            gpu_set_blendmode(bm_normal);
        }
    }
    
    if (active == true)
    {
        gpu_set_blendmode(bm_subtract);
        draw_sprite_ext(spr_factory_03_axis_flashlight_mask, 0, x - view_x, y - view_y, 1, 1, image_angle, c_white, 1);
        gpu_set_blendmode(bm_normal);
    }
    
    surface_reset_target();
    draw_surface(lighting_surface, view_x, view_y);
}
