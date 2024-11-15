if (live_call())
    return global.live_result;

draw_set_circle_precision(48);

if (!surface_exists(surf))
    surf = surface_create(640, 480);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);
draw_set_alpha(image_alpha);
draw_set_color(c_orange);
draw_circle(x - 0.5, y - 0.5, 26 * image_yscale, false);
draw_set_alpha(1);
gpu_set_blendmode(bm_subtract);
draw_circle_color(x - 0.5, y - 0.5, 25 * image_yscale, c_orange, c_orange, false);
gpu_set_blendmode(bm_normal);
surface_reset_target();
draw_set_circle_precision(24);
draw_surface(surf, 0, 0);
