if (live_call())
    return global.live_result;

starlo_take_aim_overlay_alpha = 0;
starlo_take_aim_fade_out = false;
shader_alpha = shader_get_uniform(sh_grayscale, "color_alpha");
