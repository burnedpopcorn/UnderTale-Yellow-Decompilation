if (live_call())
    return global.live_result;

if (draw_overlay == true)
{
    draw_set_color(c_white);
    draw_rectangle(0, 0, room_width, room_height, false);
    shader_set(sh_silhouette);
    draw_sprite(sprite_index, image_index, x + random_range(-2, 2), y + random_range(-2, 2));
    shader_reset();
}
