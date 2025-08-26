if (live_call())
    return global.live_result;

with (other)
{
    surface_set_target(reflection_surf);
    draw_clear_alpha(c_black, 0);
    shader_set(sh_reflection_hotel);
    var alpha_uniform = shader_get_uniform(sh_reflection_hotel, "Alpha");
    shader_set_uniform_f(alpha_uniform, 0.75);
    var y_offset;
    
    with (obj_npc_base)
    {
        if (object_index != obj_npc_handlord)
        {
            var sprite_uvs = sprite_get_uvs(sprite_index, image_index);
            shader_uvs = shader_get_uniform(sh_reflection_hotel, "spriteUVs");
            shader_set_uniform_f(shader_uvs, sprite_uvs[0], sprite_uvs[1], sprite_uvs[2], sprite_uvs[3]);
            y_offset = 0;
            
            if (object_index == obj_npc_complex_lobby_lad)
                y_offset = 2;
            
            draw_set_blend_mode_ext(bm_one, bm_inv_src_alpha);
            draw_sprite_ext(sprite_index, -1, x - __view_get(e__VW.XView, 0), (y + (sprite_height * 2)) - (sprite_yoffset * 2) - y_offset - __view_get(e__VW.YView, 0), 1, -1, 0, c_white, 1);
            draw_set_blend_mode(bm_normal);
        }
    }
    
    with (obj_complex_plant)
    {
        var sprite_uvs = sprite_get_uvs(sprite_index, image_index);
        shader_uvs = shader_get_uniform(sh_reflection_hotel, "spriteUVs");
        shader_set_uniform_f(shader_uvs, sprite_uvs[0], sprite_uvs[1], sprite_uvs[2], sprite_uvs[3]);
        y_offset = 5;
        
        if (object_index == obj_npc_complex_lobby_lad)
            y_offset = 2;
        
        draw_set_blend_mode_ext(bm_one, bm_inv_src_alpha);
        draw_sprite_ext(sprite_index, -1, x - __view_get(e__VW.XView, 0), (y + (sprite_height * 2)) - (sprite_yoffset * 2) - y_offset - __view_get(e__VW.YView, 0), 1, -1, 0, c_white, 1);
        draw_set_blend_mode(bm_normal);
    }
    
    shader_reset();
    draw_set_blend_mode(bm_subtract);
    
    with (obj_pl)
        draw_sprite_ext(sprite_index, -1, x - __view_get(e__VW.XView, 0), (y + (sprite_height * 2)) - (sprite_yoffset * 2) - __view_get(e__VW.YView, 0), 1, -1, 0, c_black, 1);
    
    if (global.party_member != -4)
    {
        with (global.party_member)
            draw_sprite_ext(sprite_index, -1, x - __view_get(e__VW.XView, 0), (y + (sprite_height * 2)) - (sprite_yoffset * 2) - y_offset - __view_get(e__VW.YView, 0), 1, -1, 0, c_white, 1);
    }
    
    draw_set_blend_mode(bm_normal);
    shader_set(sh_reflection_hotel);
    
    with (obj_pl)
    {
        var sprite_uvs = sprite_get_uvs(sprite_index, image_index);
        shader_uvs = shader_get_uniform(sh_reflection_hotel, "spriteUVs");
        shader_set_uniform_f(shader_uvs, sprite_uvs[0], sprite_uvs[1], sprite_uvs[2], sprite_uvs[3]);
        draw_set_blend_mode_ext(bm_one, bm_inv_src_alpha);
        draw_sprite_ext(sprite_index, -1, x - __view_get(e__VW.XView, 0), (y + (sprite_height * 2)) - (sprite_yoffset * 2) - __view_get(e__VW.YView, 0), 1, -1, 0, c_white, 2);
        draw_set_blend_mode(bm_normal);
    }
    
    if (global.party_member != -4)
    {
        with (global.party_member)
        {
            var sprite_uvs = sprite_get_uvs(sprite_index, image_index);
            shader_uvs = shader_get_uniform(sh_reflection_hotel, "spriteUVs");
            shader_set_uniform_f(shader_uvs, sprite_uvs[0], sprite_uvs[1], sprite_uvs[2], sprite_uvs[3]);
            draw_set_blend_mode_ext(bm_one, bm_inv_src_alpha);
            draw_sprite_ext(sprite_index, -1, x - __view_get(e__VW.XView, 0), (y + (sprite_height * 2)) - (sprite_yoffset * 2) - y_offset - __view_get(e__VW.YView, 0), 1, -1, 0, c_white, 1);
            draw_set_blend_mode(bm_normal);
        }
    }
    
    shader_reset();
    draw_set_blend_mode(bm_subtract);
    draw_sprite_ext(spr_complex_reflection_mask_2, 0, -__view_get(e__VW.XView, 0), -__view_get(e__VW.YView, 0), 4, 4, 0, c_white, 1);
    draw_set_blend_mode(bm_normal);
    surface_reset_target();
    draw_surface(reflection_surf, __view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0));
}
