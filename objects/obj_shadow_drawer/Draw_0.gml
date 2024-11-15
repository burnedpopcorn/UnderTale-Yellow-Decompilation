if (live_call())
    return global.live_result;

with (shadow_actor)
{
    if (sprite_index == -1)
        exit;
    
    draw_self();
    
    if (variable_instance_exists(id, "palette_index"))
        scr_draw_palette_shader(palette_index);
    
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, other.draw_alpha * image_alpha);
}
