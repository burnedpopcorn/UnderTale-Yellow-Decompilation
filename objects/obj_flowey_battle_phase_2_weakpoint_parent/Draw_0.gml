draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_red, (sin(current_time / 750) * 0.5) + 0.5);

if (hit_flash == true)
{
    shader_set(sh_flash);
    draw_sprite_ext(sprite_index, image_index, x + x_offset, y + y_offset, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    shader_reset();
}
