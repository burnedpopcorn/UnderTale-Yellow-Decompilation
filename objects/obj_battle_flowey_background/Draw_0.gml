if (!surface_exists(pixelate_surf))
    pixelate_surf = surface_create(640, 480);

surface_set_target(pixelate_surf);
shader_set(shader);
shader_set_uniform_f(u_time, current_time / 10000);
shader_set_uniform_f_array(u_uvs, sh_uvs);
texture_set_stage(u_texture, texture);
draw_sprite(sprite_index, 0, 0, 0);
shader_reset();
surface_reset_target();
shader_set(sh_flowey_pixelate);
draw_surface(pixelate_surf, 0, 0);
shader_reset();
