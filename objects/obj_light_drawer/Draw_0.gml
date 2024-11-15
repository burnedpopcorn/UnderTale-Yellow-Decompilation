if (live_call())
    return global.live_result;

with (shadow_actor)
{
    if (sprite_index == -1 || sprite_index == spr_doorway)
        exit;
    
    draw_self();
    
    if (variable_instance_exists(id, "palette_index"))
        scr_draw_palette_shader(palette_index);
    
    draw_set_blend_mode(bm_add);
    draw_set_alpha(other.draw_alpha);
    draw_sprite(sprite_index, image_index, x, y);
    draw_set_alpha(1);
    draw_set_blend_mode(bm_normal);
}
