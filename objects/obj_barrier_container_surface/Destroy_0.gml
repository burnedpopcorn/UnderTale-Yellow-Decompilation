if (live_call())
    return global.live_result;

if (instance_exists(global.attack_surface))
    surface_free(global.attack_surface);
