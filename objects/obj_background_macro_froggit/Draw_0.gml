if (live_call())
    return global.live_result;

shader_set(sh_background_macro_froggit);
shader_set_uniform_f(u_time, current_time / 10000);
shader_set_uniform_f(u_uvs, uvs[0], uvs[1], uvs[2], uvs[3]);
shader_set_uniform_f(u_txl_d, txl_d[0], txl_d[1]);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, draw_alpha);
shader_reset();
