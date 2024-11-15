if (live_call())
    return global.live_result;

color_new = [1, 0, 0.216];
color_uniform = shader_get_uniform(sh_replace_color, "new_colour");
alpha_uniform = shader_get_uniform(sh_replace_color, "new_alpha");
decimal_count = 0;
