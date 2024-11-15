var alpha_uniform;

if (live_call())
    return global.live_result;

reflection_surf = surface_create(320, 240);
alpha_uniform = shader_get_uniform(sh_reflection, "Alpha");
depth = 0;
