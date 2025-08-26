if (live_call())
    return global.live_result;

draw_self();

if (damage_flash_timer > 0)
{
    shader_set(sh_flash);
    
    with (obj_martlet_body_part_base)
    {
        if (visible == true)
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha * 0.25);
    }
    
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha * 0.25);
    shader_reset();
}

draw_set_alpha(martlet_previous_melt_sprite_alpha);
draw_sprite(martlet_previous_melt_sprite, 0, x, y);

if (martlet_previous_melt_sprite == 2690)
{
    with (obj_martlet_body_part_base)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, other.martlet_previous_melt_sprite_alpha);
}

draw_set_alpha(1);
