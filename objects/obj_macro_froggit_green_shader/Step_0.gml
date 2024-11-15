if (live_call())
    return global.live_result;

if (instance_exists(obj_background_macro_froggit))
    image_alpha = clamp(obj_background_macro_froggit.draw_alpha, 0, 1);
