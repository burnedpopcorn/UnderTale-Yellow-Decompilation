if (live_call())
    return global.live_result;

color_new = [0.2, 0.666, 0.337];
color_uniform = shader_get_uniform(sh_replace_color, "new_colour");
alpha_uniform = shader_get_uniform(sh_replace_color, "new_alpha");
image_alpha = 0;
