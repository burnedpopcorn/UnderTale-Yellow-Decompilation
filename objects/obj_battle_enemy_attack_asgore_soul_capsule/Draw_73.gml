if (live_call())
    return global.live_result;

if (image_index > 0)
    draw_sprite_ext(spr_container_empty_open_front, 0, x, y, 2, 2, 0, soul_color, image_alpha);

if (flash_alpha > 0)
{
    draw_set_alpha(flash_alpha);
    shader_set(sh_flash);
    draw_sprite_ext(spr_container_empty_open_front, 0, x, y, image_xscale, image_yscale, 0, soul_color, image_alpha);
    
    with (obj_heart_battle_fighting_parent)
        draw_sprite_ext(spr_container_empty_open_front, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
    
    shader_reset();
    draw_set_alpha(1);
}
