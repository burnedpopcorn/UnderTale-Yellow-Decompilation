draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);

if (id_bull.x_dir != 0)
{
    draw_sprite_ext(sprite_index, image_index, x + disjoint, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    draw_sprite_ext(sprite_index, image_index, x - disjoint, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}
else
{
    draw_sprite_ext(sprite_index, image_index, x, y + disjoint, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    draw_sprite_ext(sprite_index, image_index, x, y - disjoint, image_xscale, image_yscale, image_angle, c_white, image_alpha);
}
