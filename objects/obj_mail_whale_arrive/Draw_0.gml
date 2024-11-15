draw_set_alpha(mail_whale_shadow_alpha);
draw_sprite(spr_npc_shadow, 0, x, mail_whale_y_target + 30);
draw_set_alpha(1);
draw_self();

if (shader_on && sprite_index == spr_mail_whale_basket_clover_yellow)
{
    shader_set(sh_palette_swap);
    shader_set_uniform_f(u_palette_index, palette_index);
    shader_set_uniform_f(u_palette_texel_height, uniform_info[0]);
    shader_set_uniform_f(u_palette_texel_width, uniform_info[1]);
    shader_set_uniform_f(u_palette_x_offset, uniform_info[2]);
    shader_set_uniform_f(u_palette_y_offset, uniform_info[3]);
    shader_set_uniform_i(u_color_vect, uniform_info[4]);
    texture_set_stage(u_palette_tex, palette_sampler);
    draw_sprite_ext(spr_mail_whale_basket_only_clover, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    shader_reset();
}
else if (shader_on == false && sprite_index == spr_mail_whale_basket_clover_yellow)
{
    draw_sprite_ext(spr_mail_whale_basket_only_clover, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
