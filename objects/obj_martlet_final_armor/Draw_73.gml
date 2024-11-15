if (live_call())
    return global.live_result;

if (damage_flash_timer > 0)
{
    shader_set(sh_flash);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    shader_reset();
}

if (white_fade_alpha > 0)
{
    draw_set_alpha(white_fade_alpha);
    draw_set_color(c_white);
    draw_rectangle(0, 0, 640, 480, false);
    draw_set_alpha(1);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}

if (fade_out == true)
{
    draw_set_alpha(fade_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, 640, 480, false);
    draw_set_alpha(1);
}
