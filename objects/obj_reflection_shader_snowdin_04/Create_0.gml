var alpha_uniform;

reflection_surf = surface_create(320, 240);
alpha_uniform = shader_get_uniform(sh_reflection, "Alpha");
shader_set_uniform_f(alpha_uniform, 0.08);
