with (other)
{
    surface_set_target(reflection_surf);
    draw_clear_alpha(c_black, 0);
    shader_set(sh_reflection);
    var sprite_uvs = sprite_get_uvs(obj_pl.sprite_index, obj_pl.image_index);
    shader_uvs = shader_get_uniform(sh_reflection, "spriteUVs");
    shader_set_uniform_f(shader_uvs, sprite_uvs[0], sprite_uvs[1], sprite_uvs[2], sprite_uvs[3]);
    var alpha_uniform = shader_get_uniform(sh_reflection, "Alpha");
    shader_set_uniform_f(alpha_uniform, 0.08);
    
    with (obj_pl)
    {
        draw_set_blend_mode_ext(bm_one, bm_inv_src_alpha);
        draw_sprite_ext(sprite_index, -1, x - __view_get(e__VW.XView, 0), (y + (sprite_height * 2)) - (sprite_yoffset * 2) - __view_get(e__VW.YView, 0), 1, -1, 0, c_white, 1);
        draw_set_blend_mode(bm_normal);
    }
    
    shader_reset();
    draw_set_blend_mode(bm_subtract);
    draw_sprite_ext(spr_snowdin_04_reflection_mask, 0, -__view_get(e__VW.XView, 0), -__view_get(e__VW.YView, 0), 4, 4, 0, c_white, 1);
    draw_set_blend_mode(bm_normal);
    surface_reset_target();
    draw_surface(reflection_surf, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0));
}
