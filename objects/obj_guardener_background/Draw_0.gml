shader_set(shader);
shader_set_uniform_f(u_time, current_time / 20000);
shader_set_uniform_f(u_str, str);
shader_set_uniform_f(u_uvs, uvs[0], uvs[1], uvs[2], uvs[3]);
texture_set_stage(u_texture, texture);
draw_self();
shader_reset();
