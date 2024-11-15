if (live_call())
    return global.live_result;

if (!surface_exists(global.attack_surface))
    global.attack_surface = surface_create(global.attack_surface_width, global.attack_surface_height);

surface_set_target(global.attack_surface);
draw_clear_alpha(c_black, 0);
surface_reset_target();
