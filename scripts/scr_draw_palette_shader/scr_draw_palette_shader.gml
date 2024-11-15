function scr_draw_palette_shader()
{
    if (shader_on)
    {
        shader_set(sh_palette_swap);
        shader_set_uniform_f(u_palette_index, argument[0]);
        shader_set_uniform_f(u_palette_texel_height, uniform_info[0]);
        shader_set_uniform_f(u_palette_texel_width, uniform_info[1]);
        shader_set_uniform_f(u_palette_x_offset, uniform_info[2]);
        shader_set_uniform_f(u_palette_y_offset, uniform_info[3]);
        shader_set_uniform_i(u_color_vect, uniform_info[4]);
        texture_set_stage(u_palette_tex, palette_sampler);
        draw_self();
        shader_reset();
    }
}
