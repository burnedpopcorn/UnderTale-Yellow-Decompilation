if (live_call())
    return global.live_result;

u_time = shader_get_uniform(sh_background_macro_froggit, "time");
u_uvs = shader_get_uniform(sh_background_macro_froggit, "uvs");
uvs = sprite_get_uvs(bg_lillypads_bubbles, 0);
u_txl_d = shader_get_uniform(sh_background_macro_froggit, "txl_d");
sprite_tex = sprite_get_texture(bg_lillypads_bubbles, 0);
txl_d = [texture_get_texel_width(sprite_tex), texture_get_texel_height(sprite_tex)];
draw_alpha = 0;
fade_out = false;
