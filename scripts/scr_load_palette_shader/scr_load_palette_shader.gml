function scr_load_palette_shader()
{
    shader_on = false;
    shader_sprite = 758;
    palette_sampler = sprite_get_texture(shader_sprite, 0);
    u_palette_tex = shader_get_sampler_index(sh_palette_swap, "palette_tex");
    u_palette_index = shader_get_uniform(sh_palette_swap, "palette_index");
    u_palette_texel_height = shader_get_uniform(sh_palette_swap, "palette_texel_height");
    u_palette_texel_width = shader_get_uniform(sh_palette_swap, "palette_texel_width");
    u_palette_x_offset = shader_get_uniform(sh_palette_swap, "palette_x_offset");
    u_palette_y_offset = shader_get_uniform(sh_palette_swap, "palette_y_offset");
    u_color_vect = shader_get_uniform(sh_palette_swap, "color_vect");
    palette_tex = sprite_get_texture(shader_sprite, 0);
    uniform_info = [texture_get_texel_height(palette_tex), texture_get_texel_width(palette_tex), array_get(texture_get_uvs(palette_tex), 0), array_get(texture_get_uvs(palette_tex), 1), argument[0]];
    index = 0;
}
